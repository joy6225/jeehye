package com.team404.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team404.command.SnsBoardVO;
import com.team404.command.UserVO;
import com.team404.snsboard.service.SnsBoardService;
import com.team404.user.service.UserService;

@Controller
@RequestMapping("/snsBoard")
public class SnsBoardController {

	@Autowired
	@Qualifier("snsService")
	private SnsBoardService snsService;
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	// 화면처리
	// 화면에 값을 넘겨줄 때 데이터를 전달하는 방법
	// 1. 화면진입 시 DB에서 정보를 조회해서 model로 전달
	// 2. jsp에서 자바스크립트로 페이지 로드 후 비동기통신으로 처리하는 방법
	@RequestMapping("/snsList")
	public String snsList(HttpSession session, Model model) {
		if (session.getAttribute("user_id") != null) {
			String userId = (String) session.getAttribute("user_id");
			UserVO userVO = userService.getInfo(userId);
			model.addAttribute(userVO);
		}
		return "snsBoard/snsList";
	}

	// 파일 등록메서드
	@RequestMapping("/upload")
	@ResponseBody
	public String upload(@RequestParam("file") MultipartFile file, @RequestParam("content") String content,
			HttpSession session) {
		System.out.println(file);
		System.out.println(content);
		String result = "";
		try {
			// 1.날짜별로 20191211형식으로 upload아래에 폴더 생성
			// 2. uploadPath는 날짜폴더를 포함한 경로
			// 3. fileRealName은 변경하기 전 파일이름
			// 4. fileName은 변경해서 저장할 파일
			// 5. fileLoca 20191211형식으로 만들어진 폴더이름
			// 6. transferTo()메서드를 이용해서 전송되는 파일을 해당 날짜에 업로드
			// 7. DB에 insert메서드를 통해서 값들을 저장
			// 8. 성공시에 화면에 success를 반환, 실패 시 fail반환
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			String uploadDay = sdf.format(date);
			String uploadPath = "D:\\Jeehye_SpringFramework\\upload\\" + uploadDay;
			File folder = new File(uploadPath);
			if (!folder.exists()) {
				folder.mkdir();
			}
			SnsBoardVO vo = new SnsBoardVO();
			// 파일명 변경
			UUID uuid = UUID.randomUUID();
			String uuids = uuid.toString().replaceAll("-", "");// 여기에 확장자 붙이기
			System.out.println(uuids);

			String fileRealName = file.getOriginalFilename();// 실제파일명
			long size = file.getSize();// 파일크기
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());// 확장자
			String fileName = uuids.substring(0, 4) + fileExtension;
			String writer = session.getId();
			String fileLoca = uploadDay;
			File saveFile = new File(uploadPath + "\\" + fileName);
			file.transferTo(saveFile);

			vo.setBno(0);
			vo.setContent(content);
			vo.setFileLoca(fileLoca);
			vo.setFileName(fileName);
			vo.setFileRealName(fileRealName);
			vo.setUploadPath(uploadPath);
			vo.setWriter((String) session.getAttribute("user_id"));// 글쓴이

			result = snsService.insert(vo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping("/view")
	@ResponseBody
	public byte[] view(@RequestParam("fileLoca") String fileLoca, @RequestParam("fileName") String fileName) {

		File file = new File("D:\\Jeehye_SpringFramework\\upload\\" + fileLoca + "\\" + fileName);
		byte[] result = null;
		try {
			// 스프링의 file경로에 있는 파일데이터를 읽어서 byte배열 형으로 변환해줌(매개값으로 file타입을 받음)
			result = FileCopyUtils.copyToByteArray(file);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping("/getList")
	@ResponseBody
	public ArrayList<SnsBoardVO> getList() {
		return snsService.getList();
	}


	//삭제처리 내꺼
	/*
	@RequestMapping("/delete") public String delete(@RequestParam("bno") int
			bno,@RequestParam("writer") String writer, RedirectAttributes RA, HttpSession
			session){
		String user_id = (String)session.getAttribute("user_id");
		if(session.getAttribute("user_id") != null) { 
			if(user_id.equals(writer)) {
				int result = snsService.delete(bno);
				if(result == 1) {
					RA.addFlashAttribute("msg", "글 삭제 성공"); 
					}else {
						RA.addFlashAttribute("msg","글 삭제 실패"); } 
				}
			}else {
		RA.addFlashAttribute("msg", "권한이 없습니다");
		} return "redirect:/snsBoard/snsList";
		}*/


	// 삭제처리
	@RequestMapping("/delete/{bno}")
	@ResponseBody
	public String delete(@PathVariable("bno") int bno, HttpSession session) {
		SnsBoardVO vo = snsService.getDetail(bno);
		String user_id = (String)session.getAttribute("user_id");
		if(user_id == null || !user_id.equals(vo.getWriter())) {
			return "noAuth"; //작성자와 글쓴이가 맞지않으면 권한없음 리턴			
		}
		int result = snsService.delete(bno);
		if(result == 1) {
			File file = new File(vo.getUploadPath() + "\\" + vo.getFileName());
			return file.delete() ? "success":"fail";

		}else {
			return "fail";
		}

	}

	// 상세보기창 처리
	@RequestMapping("/getDetail/{bno}")
	@ResponseBody
	public SnsBoardVO getDetail(@PathVariable("bno") int bno) {
		// System.out.println(bno); //클릭했을 때 bno가 뜨는지 확인
		SnsBoardVO vo = snsService.getDetail(bno);

		return vo;
	}

	//파일 다운로드
	@RequestMapping("/download")
	@ResponseBody
	public ResponseEntity<byte[]> download(@RequestParam("fileLoca") String fileLoca,
			@RequestParam("fileName") String fileName) {
		ResponseEntity<byte[]> result = null;
		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Disposition", "attachment; filename="+fileName);
			
			File file = new File("D:\\Jeehye_SpringFramework\\upload\\"+fileLoca+"\\"+fileName);
			byte[] arr = FileCopyUtils.copyToByteArray(file);
			
			result = new ResponseEntity<>(arr, header, HttpStatus.OK);
		
		} catch (Exception e) {
			// TODO: handle exception
		}	
		/*브라우저에 다운로드형식이라고 반드시 선언
		 * byte[] result = null; System.out.println(fileLoca);
		 * System.out.println(fileName); try { File file = new
		 * File("D:\\Jeehye_SpringFramework\\upload\\"+fileLoca+"\\"+fileName);
		 * FileCopyUtils.copyToByteArray(file);//스프링에 파일 복사 } catch (Exception e) {
		 * e.printStackTrace(); } return result;
		 */
		return result;	
	}
}
