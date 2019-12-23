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
     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/qnaList.css">
</head>
<body>
<%@include file="../include/header.jsp" %>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 review">
                    <div class="titleSapn">
                           <span class="glyphicon glyphicon-home"> </span>
                           <a><span class="glyphicon glyphicon-menu-right">고객문의</span></a>
                           <a><span class="glyphicon glyphicon-menu-right reviewSapn">문의사항</span></a>
                    </div>
                    <div class="titlebox">
                        <p>문의사항</p>
                    </div>
                    <div class="searchDiv">
                        <span>총 3</span>
                            <button type="button" class="btn btn-info search">검색</button>
                            <input type="text" class="search">
                            <select class="form-control search" id="sel1">
                            <option>제목</option>
                            <option>내용</option>
                            <option>작성자</option>
                            <option>제목+내용</option>
                          </select>
                    </div>
                      <table class="table table-hover" id="collectTable">
                       <colgroup>
                           <col style="width: 17%;">
                           <col style="width: 21%;">
                           <col style="width: 17%;">
                           <col style="width: 28%;">
                           <col style="width: 17%;">
                       </colgroup>
                        <thead class="reviewThead">
                          <tr>
                            <th>글번호</th>
                            <th>제목</th>
                            <th>글쓴이</th>
                            <th>작성일</th>
                            <th>비밀글</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td><a href='#' onclick="secret(1)">맛있어요</a></td>
                            <td>홍길동</td>
                            <td>2019.12.18</td>
                            <td></td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td><a href="#" onclick="secret(2)">맛없어요</a></td>
                            <td>홍길순</td>
                            <td>2019.12.19</td>
                            <td><span class="extraImages"><img class="secret" src="${pageContext.request.contextPath }/resources/img/lock.jpg"></span></td>
                          </tr>
                          <tr>
                            <td>3</td>
                            <td><a href="#" onclick="secret(3)">짜요</a></td>
                            <td>홍길자</td>
                            <td>2019.12.20</td>
                            <td><span class="extraImages"><img class="secret" src="${pageContext.request.contextPath }/resources/img/lock.jpg"></span></td>
                          </tr>
                        </tbody>
                      </table>
                       <div class="container">
                           <div class="row">
                               <div class="col-xs-12 pager">
                                  <ul class="pagination">
                                      <li><a href="#"><span aria-hidden="true">&laquo;</span></a></li>
                                      <li><a href="#">1</a></li>
                                      <li class="active"><a href="#">2</a></li>
                                      <li><a href="#">3</a></li>
                                      <li><a href="#">4</a></li>
                                      <li><a href="#">5</a></li>
                                      <li><a href="#"><span aria-hidden="true">&raquo;</span></a></li> 
                                  </ul>
                                  <button type="button" class="btn btn-info">글쓰기</button>
                              </div>    
                          </div>
                      </div>
                      
                </div>
            </div>
        </div>
    </section>
    
<%@include file="../include/footer.jsp" %>

    <script>
        var a = document.querySelectorAll("tr");
        function secret(rno) {
            
            var b = a[rno];
            var c = b.innerHTML;
            if(c.includes('span class="extraImages"')) {
                var element = document.createElement("input");
                element.setAttribute("type", "password");
                element.setAttribute("id", "newPw");
                element.setAttribute("font-size", "5px");
                var Seltag = document.getElementsByClassName("extraImages");
                if(!(Seltag[(rno-Seltag.length)].innerHTML.includes("newPw"))) {
                     Seltag[(rno-Seltag.length)].appendChild(element);
                } else {
                  var Delelement = document.getElementById("newPw");
                  Seltag[(rno-Seltag.length)].removeChild(Delelement);
                }
        }
        }
        
        /*헤더 스크롤 감지*/
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