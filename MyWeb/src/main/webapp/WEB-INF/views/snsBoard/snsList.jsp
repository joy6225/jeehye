<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>인덱스를 만들어 보자</title>

<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
<!--개인 디자인 추가-->
<link href="${pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<style type="text/css">

.title a{
float:right;
}

section {
	margin-top: 70px;
}

/*부트스트랩 li의 drophover클래스 호버시에 드롭다운 적용코드*/
ul.nav li.drophover:hover>ul.dropdown-menu {
	display: block;
	margin: 0;
}

.aside-inner {
	position: fixed;
	top: 70px;
	width: 180px;
}

.section-inner {
	border-right: 1px solid #ddd;
	border-left: 1px solid #ddd;
	background-color: white;
}

.section-inner p, .aside-inner p {
	margin: 0;
}

.title-inner {
	position: relative;
	padding: 15px 0;
}

.title-inner .profile {
	position: absolute; /*부모기준으로 위치지정 릴레이티브*/
	top: 15px;
	left: 0;
}

.title-inner .title {
	padding-left: 50px;
}
/*내용*/
.content-inner {
	padding: 10px 0;
}
/* 이미지영역  */
.image-inner img {
	width: 100%;
}
/*좋아요*/
.like-inner {
	padding: 10px 0;
	border-bottom: 1px solid #ddd;
	border-top: 1px solid #ddd;
	margin-top: 10px;
}

.like-inner img {
	width: 20px;
	height: 20px;
}

.link-inner {
	overflow: hidden;
	padding: 10px 0;
}

.link-inner a {
	float: left;
	width: 33.3333%;
	text-align: center;
	text-decoration: none;
	color: #333333;
}

.link-inner i {
	margin: 0 5px;
}

/*767미만 사이즈에서 해당 css가 적용됨*/
/*xs가 767사이즈   */
@media ( max-width :767px) {
	aside {
		display: none;
	}
}
/* 파일업로드 버튼 바꾸기 */
.filebox label {
	display: inline-block;
	padding: 6px 10px;
	color: #fff;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #5cb85c;
	cursor: pointer;
	border: 1px solid #4cae4c;
	border-radius: none;
	-webkit-transition: background-color 0.2s;
	transition: background-color 0.2s;
}

.filebox label:hover {
	background-color: #6ed36e;
}

.filebox label:active {
	background-color: #367c36;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

/* sns파일 업로드시 미리보기  */
.fileDiv {
	height: 100px;
	width: 200px;
	display: none;
	margin-bottom: 10px;
}

.fileDiv img {
	width: 100%;
	height: 100%;
}
/* 모달창 조절 */
.modal-body {
	padding: 0px;
}

.modal-content>.row {
	margin: 0px;
}

.modal-body>.modal-img {
	padding: 0px;
}

.modal-body>.modal-con {
	padding: 15px;
}

.modal-inner {
	position: relative;
}

.modal-inner .profile {
	position: absolute; /*부모기준으로 위치지정 릴레이티브*/
	top: 0px;
	left: 0px;
}

.modal-inner .title {
	padding-left: 50px;
}

.modal-inner p {
	margin: 0px;
}
</style>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<section>
		<div class="container">
			<div class="row">
				<aside class="col-sm-2">
					<div class="aside-inner">
						<div class="menu1">
						<c:choose>
						<c:when test="${sessionScope.user_id != null }">
							<p>
								<img src="../resources/img/profile.png">${userVO.userName }
							</p>
							<ul>
								<li>내정보</li>
								<li>내쿠폰</li>
								<li>내좋아요게시물</li>
							</ul>
						</c:when>
						<c:otherwise>
						<button type="button" class="btn btn-info" onclick="location.href=''">
							로그인
						</button>
						</c:otherwise>
						</c:choose>
						</div>
						<div class="menu2">
							<p>둘러보기</p>
							<ul>
								<li>기부 캠페인</li>
								<li>페이지</li>
								<li>그룹</li>
								<li>이벤트</li>
								<li>친구리스트</li>
							</ul>
						</div>
					</div>
				</aside>
				<div class="col-xs-12 col-sm-8 section-inner">
					<h4>게시물 만들기</h4>
					<!-- 파일 업로드 폼입니다 -->
					<div class="fileDiv">
						<img id="fileImg" src="../resources/img/img_ready.png">
					</div>
					<div class="reply-content">
						<textarea class="form-control" rows="3" name="content"
							id="content" placeholder="무슨 생각을 하고 계신가요?"></textarea>
						<div class="reply-group">
							<div class="filebox pull-left">
								<label for="file">이미지업로드</label> <input type="file" name="file"
									id="file">
							</div>
							<button type="button" class="right btn btn-info" id="uploadBtn">등록하기</button>
						</div>
					</div>


					<!-- 파일 업로드 폼 끝 -->
				<div id="contentDiv">
<!-- 						<div class="title-inner">
							제목영역
							<div class="profile">
								<img src="../resources/img/profile.png">
							</div>
							<div class="title">
								<p>테스트</p>
								<small>21시간</small>
							</div>
						</div>
						<div class="content-inner">
							내용영역
							<p>삶이 우리를 끝없이 시험하기에 고어텍스는 한계를 테스트합니다</p>
						</div>
						<div class="image-inner">
							이미지영역
							
						 <img src="../resources/img/facebook.jpg">
						
							<img src="view?fileLoca=20201212&fileName=test.jpg">
						</div>
						<div class="like-inner">
							좋아요
							<img src="../resources/img/icon.jpg"> <span>522</span>
						</div>
						<div class="link-inner">
							<a href="##"><i class="glyphicon glyphicon-thumbs-up"></i>좋아요</a>
							<a href="##"><i class="glyphicon glyphicon-comment"></i>댓글달기</a>
							<a href="##"><i class="glyphicon glyphicon-remove"></i>삭제하기</a>
						</div> -->
					</div> 
					<!-- contentDiv -->
				</div>
				<!--우측 어사이드-->
				<aside class="col-sm-2">
					<div class="aside-inner">
						<div class="menu1">
							<p>목록</p>
							<ul>
								<li>목록1</li>
								<li>목록2</li>
								<li>목록3</li>
								<li>목록4</li>
								<li>목록5</li>
							</ul>
						</div>
					</div>
				</aside>
			</div>
		</div>
	</section>
	<%@ include file="../include/footer.jsp"%>
	<!-- 모달 -->
	<div class="modal fade" id="snsModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body row">
					<div class="modal-img col-sm-8 col-xs-6">
						<img src="../resources/img/img_ready.png" id="snsImg" width="100%">
					</div>
					<div class="modal-con col-sm-4 col-xs-6">
						<div class="modal-inner">
							<div class="profile">
								<img src="../resources/img/profile.png">
							</div>
							<div class="title">
								<p id="snsWriter">테스트</p>
								<small id="snsRegdate">21시간전</small>
							</div>
							<div class="content-inner">
								<p id="snsContent">삶이 우리를 끝없이 시험하기에 고어텍스는 한계를 테스트합니다</p>
							</div>
							<div class="link-inner">
								<a href="##"><i class="glyphicon glyphicon-thumbs-up"></i>좋아요</a>
								<a href="##"><i class="glyphicon glyphicon-comment"></i>댓글달기</a>
								<a href="##"><i class="glyphicon glyphicon-share-alt"></i>공유하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function(){
			
			$("#uploadBtn").click(function(){
				regist();
			})
			
			function regist(){
				var user_id = '${sessionScope.user_id}';//세션값
				//자바스크립트의 파일확장자 체크
				var file = $("#file").val();
				file= file.slice(file.indexOf(".") +1).toLowerCase();
				if(file != "jpg" && file != "png" && file != "bmp"){
					alert("이미지 파일(jpg, png, bmp)만 등록 가능합니다.");
					$("#file").val("");//file태그가 갖고 있는 파일을 비우고 함수 종료
					return false;
				}else if(user_id == ''){
					alert("로그인이 필요한 서비스입니다");
					return false;
				}
				
				//ajac폼 전송의 핵심 FormData객체 생성
				var formData = new FormData();
				var fileData = $("#file");
				//console.log(fileData);//폼데이터 확인
				//console.log(fileData[0]);
				//console.log(fileData[0].files);
				console.log(fileData[0].files[0]);
				formData.append("file",fileData[0].files[0]);//file이름으로 파일정보를 폼에 저장
								
				var content = $("#content").val();//textarea의 값
				formData.append("content", content);//content이름으로 문자값을 저장
				
				$.ajax({
					url:"upload",
					type:"POST",
					data:formData,
					processData:false,//폼의 변수 = 값 형식으로 자동으로 변경되는 것을 막는 요소
					contentType:false,//ajax에서 false로 처리하면 "multipart/form-data" 형식으로 저장
					success:function(result){
						//success가 돌아오면 
						//파일 업로드 태그값을 비우기
						//글영역 태그 비우기
						//미리보기 영역 display none을 통해 숨기기
						///getList(true) 스크립트함수 호출
						if(result =='success'){
							 $(".fileDiv").css('display','none');
							 $("#content").val('');
							getList(true);
						}
					},
					error:function(result){
						
					}
				})
			}//regist()끝
			getList(true);
			var str="";
			function getList(reset){
				//1. getJSON을 통해 DB에 저장되어 있는 모든 값을 JSON형태로 전달받음
				//2. contentDiv영역 안에 list 개수만큼 회전해서 화면을 추가
				//3. 단 화면에 띄워야하는 이미지영역에서는 src안에 view?값&값 형식으로 호출하는 코드작성
				if(reset == true){
					str="";
				}
				$.getJSON("getList",
						function(data){
						console.log(data);
						for(var i = 0; i < data.length; i++){
							str += "<div class='title-inner'>";
								<!--제목영역-->
								str += "<div class='profile'>";
								str +="<img src='../resources/img/profile.png'>";
								str += "</div>";
								str += "<div class='title'>";
								str +="<p>"+data[i].writer+"</p>";
								str +="<small>"+timeStamp(data[i].regdate)+"</small>";
								str += "<a href='download?fileLoca="+data[i].fileLoca+"&fileName="+data[i].fileName+"'>다운로드</a>"
								str += "</div>";
								str += "</div>";
								str += "<div class='content-inner'>";
								<!--내용영역-->
								str += "<p>"+data[i].content+"</p>";
								str += "</div>";
								str += "<div class='image-inner'>";
								str+= "<a href='"+data[i].bno+"'>";//a링크 추가
								str+="<img src='view?fileLoca="+data[i].fileLoca+"&fileName="+data[i].fileName+"'>";						
								str+="</a>";//a링크 추가
								str += "</div>";
								str += "<div class='like-inner'>";
								<!--좋아요-->
								str += "<img src='../resources/img/icon.jpg'>";
								str += "<span>522</span>";
								str += "</div>";
								str += "<div class='link-inner'>";
								str += "<a href='##'><i class='glyphicon glyphicon-thumbs-up'></i>좋아요</a>";
								str += "<a href='##'><i class='glyphicon glyphicon-comment'></i>댓글달기</a>";
								str += "<a href='"+data[i].bno+"'id=delBtn><i class='glyphicon glyphicon-remove'></i>삭제하기</a>";
								str += "</div>";
						}
						$("#contentDiv").html(str);
				})
			}
			//이벤트더블링, 이벤트 위임
			//부모에게 이벤트를 걸어놓았을 때 자식에게 위임(자식 클릭시  이벤트 실행됨)
			//제이쿼리 이벤트위임함수on (이벤트종류, 자식선택자, 실행시킬 함수)
 			$("#contentDiv").on("click",".image-inner a",function(event){
				event.preventDefault();//a링크의 이벤트전파를 중단
				//console.log($(this).attr("href"));
				var bno = $(this).attr("href");
				$.getJSON("getDetail/"+bno,
						function(data){
							var img ="";
							//1. 모달창에 img태그에 이미지 경로 처리
							//2. 글쓴이 처리
							//3. 날짜처리
							//4. 내용처리
							//5. 모달오픈
							console.log(data);
								$('#snsModal').modal('show');
								$("#snsImg").attr("src","view?fileLoca="+data.fileLoca+"&fileName="+data.fileName)
								$("#snsWriter").html(data.writer)
								$("#snsRegdate").html(timeStamp(data.regdate))
								$("#snsContent").html(data.content)
					}
				
				)
			})
			
			//삭제기능
 			$("#contentDiv").on("click","#delBtn", function(){
 				event.preventDefault();//a태그의 이벤트 전파 중단
				//console.log(event.target);
				//console.log($(this)[0]);//어디에 이벤트가 걸렸나 확인 중요
				var bno = $(this).attr("href");
				$.ajax({
					type:"delete",
					url:"delete/"+bno,
					success:function(result){
						if(result== 'noAuth'){
							alert("권한이 없습니다");
						}else if(result == 'fail'){
							alert("삭제에 실패했습니다");
						}else{
							alert("게시물이 정상적으로 삭제되었습니다");
							getList(true);
						}
					},
					error:function(result){
						alert("삭제에 실패했습니다.다시 시도해주세요");
					}
				})
			}) 
				
			
			function timeStamp(millis){
				//var millis = 1575448378000;
				var date = new Date();//오늘날짜
				var date2 = new Date(millis);//밀리초기반 날짜
				//console.log(date.getTime());//오늘날짜의 밀리초
				console.log("하루에 대한 밀리초: " + 1000*60*60*24);
				var gap = date.getTime() - millis;//경과시간차
				var time;//리턴 할 문자열
				//console.log("현재시에 대한 밀리초: " +date.getTime());
				//console.log("하루에 대한 밀리초: " +1000*60*60*24);
				//console.log("시간에 대한 밀리초: " +1000*60*60);
				//console.log("분에 대한 밀리초: " +1000*60);
				if(gap < 1000*60*60*24){//등록일 기준 하루 미만인 경우
					if(gap < 1000*60*60){//1시간 미만인경우
						time = "방금전"
					}else{//1시간 이상인 경우
						time = parseInt(gap/(1000*60*60))+"시간 전";
					}
				}else{//등록일 기준 하루 이상인 경우
					var today = new Date(millis);
					var year = today.getFullYear();//년도구함
					var month = today.getMonth() + 1;//월
					var day = today.getDate();//일
					var hour = today.getHours();//시
					var minute = today.getMinutes();//분
					var second = today.getSeconds();//초
					time = year + "년" + month + "월" + day + "일 " + hour + ":" + minute + ":"+second;
				}
				return time;
}
			
			
		})
	</script>


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