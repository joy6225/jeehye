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
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team404.command.SnsBoardVO;
import com.team404.snsboard.service.SnsBoardService;

@Controller
@RequestMapping("/snsBoard")
public class SnsBoardController {
	
	@Autowired
	@Qualifier("snsService")
	private SnsBoardService snsService;
	
	
	@RequestMapping("/snsList")
	public String snsList() {
		
		return "snsBoard/snsList";
	}
	
	//파일 등록메서드
	@RequestMapping("/upload")
	@ResponseBody
	public String upload(@RequestParam("file") MultipartFile file,
						@RequestParam("content") String content,
						HttpSession session
			) {
		System.out.println(file);
		System.out.println(content);
		String result = "";
		try {
		//1.날짜별로 20191211형식으로 upload아래에 폴더 생성
		//2. uploadPath는 날짜폴더를 포함한 경로
		//3. fileRealName은 변경하기 전 파일이름
		//4. fileName은 변경해서 저장할 파일
		//5. fileLoca 20191211형식으로 만들어진 폴더이름 
		//6. transferTo()메서드를 이용해서 전송되는 파일을 해당 날짜에 업로드
		//7. DB에 insert메서드를 통해서 값들을 저장
		//8. 성공시에 화면에 success를 반환, 실패 시 fail반환
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String uploadDay = sdf.format(date);
		String uploadPath = "D:\\Jeehye_SpringFramework\\upload\\"+uploadDay;
		File folder = new File(uploadPath);
		if(!folder.exists() ) {
			folder.mkdir();
		}
		SnsBoardVO vo = new SnsBoardVO();
		//파일명 변경
		UUID uuid = UUID.randomUUID();
		String uuids = uuid.toString().replaceAll("-", "");//여기에 확장자 붙이기
		System.out.println(uuids);
		String fileRealName = file.getOriginalFilename();
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length()); // 확장자 
		String fileName = uuids.substring(0,4)+fileExtension;
		String writer = session.getId(); 
		long size = file.getSize();
		String fileLoca = uploadDay;
		File saveFile = new File(uploadPath + "\\" + fileName);
		file.transferTo(saveFile);
		
		vo.setBno(0);
		vo.setContent(content);
		vo.setFileLoca(fileLoca);
		vo.setFileName(fileName);
		vo.setFileRealName(fileRealName);
		vo.setUploadPath(uploadPath);
		vo.setWriter((String)session.getAttribute("user_id"));
		
		result = snsService.insert(vo);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/view")
	@ResponseBody
	public byte[] view(@RequestParam("fileLoca") String fileLoca, @RequestParam("fileName") String fileName) {
		
		File file = new File("D:\\Jeehye_SpringFramework\\upload\\" + fileLoca + "\\"+fileName);
		byte[] result = null;
		try {
			//스프링의 file경로에 있는 파일데이터를 읽어서 byte배열 형으로 변환해줌(매개값으로 file타입을 받음)
			result = FileCopyUtils.copyToByteArray(file);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/getList")
	@ResponseBody
	public ArrayList<SnsBoardVO> getList(){
		return snsService.getList();
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("bno") int bno, RedirectAttributes RA) {
		int result = snsService.delete(bno);
		if(result == 1) {
			RA.addFlashAttribute("msg", "글 삭제 성공");
		}else {
			RA.addFlashAttribute("msg","글 삭제 실패");
		}
		return "redirect:/snsBoard/snsList";
	}
}
