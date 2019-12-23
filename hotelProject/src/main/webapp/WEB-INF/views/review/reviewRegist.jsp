<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Test</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js"></script>  
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    
    <!--개인 스타일-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reviewRegist.css">

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 review">
                    <div class="titleSapn">
                           <a><span class="glyphicon glyphicon-home"> </span></a>
                           <a><span class="glyphicon glyphicon-menu-right">고객문의</span></a>
                           <a><span class="glyphicon glyphicon-menu-right reviewSapn">이용후기</span></a>
                        </div>
                        <div class="titlebox">
                            <p>이용후기</p>
                        </div>
                    <form>
                      <table class="table table-bordered">
                        <tbody class="reviewTable">
                          <tr>
                            <td class="reviewT">제목</td>
                            <td ><input type="text" class="form-control" id="title"></td>
                          </tr>
                          <tr>
                            <td class="reviewT">평점</td>
                            <td >
                                <div class="starRev">
                                  <span class="starR">★</span>
                                  <span class="starR">★</span>
                                  <span class="starR">★</span>
                                  <span class="starR">★</span>
                                  <span class="starR">★</span>
                                </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="reviewT">내용</td>
                            <td><textarea class="form-control" rows="15" id="content" style="resize: none;" ></textarea></td>
                          </tr>
                          <tr>
                            <td class="reviewT">파일</td>
                            <td><input type="text" id="fileName" class="filetextbox" readonly >
                            <div class="file_input_div">
                                <img src="${pageContext.request.contextPath }/resources/img/search.jpg" class="file_input_img_btn" alt="open" />
                                <input type="file" name="file_1" id="file" class="file_input_hidden" onchange="javascript: document.getElementById('fileName').value = this.value"/>
                            </div>
                            <div class="fileDiv">
                                <img id="fileImg" src="${pageContext.request.contextPath }/resources/img/1.jpg">
                            </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                        <div class="btnBox">
                          <button type="button" class="btn btn-info">등록하기</button>
                          <button type="button" class="btn btn-default">목록보기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
 <jsp:include page="../include/footer.jsp"></jsp:include>  
 
	 <!-- 별점주기 -->
	 <script>
	 $('.starRev span').click(function(){
	     $(this).parent().children('span').removeClass('on');
	     $(this).addClass('on').prevAll('span').addClass('on');
	     return false;
	   });
	 </script> 
    <!--미리보기-->
    <script>
            //자바 스크립트 파일 미리보기 기능
		function readURL(input) {
        	if (input.files && input.files[0]) {
        		
            	var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
            	//readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
	        	reader.readAsDataURL(input.files[0]); 
            	//파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
	            $(".fileDiv").css("display", "block");
            	
            	reader.onload = function(event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
                	$('#fileImg').attr("src", event.target.result); 
                	console.log(event.target)//event.target은 이벤트로 선택된 요소를 의미
	        	}
        	}
	    }
		$("#file").change(function() {
	        readURL(this); //this는 #file자신 태그를 의미
	        
	    });
    </script>
</body>
</html>