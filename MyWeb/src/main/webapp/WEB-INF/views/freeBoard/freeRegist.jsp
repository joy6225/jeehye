<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>인덱스를 만들어 보자</title>

    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	
</head>
<body>
	
	<%@ include file="../include/header.jsp" %>

	<!--게시판-->
    <section>
       <div class="container">
            <div class="row">
                <div class="col-xs-12 content-wrap">
                    <div class="titlebox">
                        <p>자유게시판</p>
                    </div>
                    <form action="registForm" method="post" name='regForm'>
                    <table class="table">
                        <tbody class="t-control">
                            <tr>
                                <td class="t-title">NAME</td>
                                <td><input class="form-control input-sm" id="writer" name="writer" value="${sessionScope.user_id }" readonly ></td>
                            </tr>
                            <tr>
                                <td class="t-title">TITLE</td>
                                <td><input class="form-control input-sm" id="title" name="title"></td>
                            </tr>
                            <tr>
                                <td class="t-title" >CONTENT</td>
                                <td>
                                <textarea class="form-control" rows="7" id="content" name="content"></textarea>
                                </td>                 
                            </tr>
                        </tbody>
                    </table>
                    </form>
                    <div class="titlefoot">
                        <button class="btn" id="freeRegist">등록</button>
                        <button class="btn" id="freeList">목록</button>
                    </div>
                </div>
            </div>    
       </div>
    </section>
    
    <%@ include file="../include/footer.jsp" %>
    
    <script>
    //목록을 클릭하면  list화면으로 연결
    var freeList = document.getElementById("freeList");
    freeList.onclick = function(){
    	location.href='freeList';
    }
    
	var freeRegist = document.getElementById("freeRegist");
	freeRegist.onclick = function(){
		if(document.regForm.writer.value==''){
			alert("아이디는 필수입니다");
			document.regForm.writer.focus();
			return;
		}else if(document.regForm.title.value==''){
			alert("제목은 필수입니다");
			document.regForm.title.focus();
			return;
		}else if(document.regForm.content.value==''){
			alert("내용은 필수입니다");
			document.regForm.content.focus();
			return;
		}else{
			if(confirm("등록하시겠습니까?")){
			document.regForm.submit();
			}
		}
	}
	
    
    //등록을 클릭하면 작성자, 제목, 내용이 공백인지 확인하고 공백이라면 함수 종료, 공백이 아니라면 controller로 전송
    </script>
    
    
</body>
</html>