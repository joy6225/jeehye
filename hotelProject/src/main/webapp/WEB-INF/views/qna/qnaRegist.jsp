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
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <!--개인 디자인-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/qnaBoard.css" rel="stylesheet">
</head>
<body>
<%@include file="../include/header.jsp" %>
          <section>
           <div class="container qna-form">
           <div class="row">
          <div class="col-xs-12 col-md-9 title">
           <h2>문의 게시판</h2>
           </div>
                   <div class="col-xs-12 col-md-9 qnaboard">
                        <div class="qnatable"></div>
                        <table class="board">
                      <tbody>
                          <tr>
                              <th><b>*</b> 질문 유형</th>
                              <td>
                                  <select id="qtype">
                                      
                                      <option value="1">객실문의</option>
                                      <option value="2">멤버쉽문의</option>
                                      <option value="3">예약번호</option>
                                      <option value="4">홈페이지 오류</option>
                                      <option value="5">컴플레인</option>
                                      <option value="6">기타</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <th><b>*</b> 예약번호</th>
                              <td><input type="text" id="reserveNum"></td>
                          </tr>
                          <tr>
                              <th class="bt1"><b>*</b> 제목</th>
                              <td><input type="text" id="title"></td>
                          </tr>
                          <tr>
                              <th><b>*</b> 내용</th>
                              <td><textarea rows="15" cols="20" id="content"></textarea></td>
                          </tr>
                          <tr>
                              <th>성명(국문)</th>
                              <td><input type="text" id="koName"></td>
                          </tr>
                          <tr id="name">
                              <th><b>*</b> 성명(영문)</th>
                              <td><input type="text" id="engName"><span>여권 성명 기입<br>your passport name</span></td>
                          </tr>
                          <tr>
                              <th><b>*</b> 이메일</th>
                              <td><input type="text"> @ <input type="text"></td>
                          </tr>
                          <tr id="phone">
                              <th><b>*</b> 휴대전화</th>
                              <td><select>
                                   <option>010</option>
                                    <option>011</option>
                                    <option>017</option>
                                    <option>018</option>
                              </select><input type="text"> - <input type="text"><span>이메일, 휴대전화 중 택1</span></td>
                          </tr>
                          <tr>
                              <th>비밀글 번호</th>
                              <td><input type="password" id="pw"></td>
                          </tr>
                          <tr>
                              <th>비밀글 번호 확인</th>
                              <td><input type="password" id="pwCheck"></td>
                          </tr>
                      </tbody>
                  </table>
                   </div> 
       <div class="col-xs-12 col-md-9 buttonDiv">
           <button type="button" class="qnabutton">문의하기</button>
       </div>
        </div>  
       </div>
   </section>
   <br>
   <br>
   <br>
   <br>
<%@include file="../include/footer.jsp" %>
    
    <!--헤더 스크롤 감지-->
    <script>
        $(window).on("scroll",function(){
            if($(window).scrollTop() > 100){
                $(".header-img").css("display","none");
            }else{
                $(".header-img").css("display","block");
            }
        })
    </script>
</body>
</html>