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
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/Join.css" rel="stylesheet">



</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <section>
        <div class="container join-form">
            <div class="row">
                <div class="col-xs-12 col-md-9 join-t">
                    <h2>회원가입</h2>
                </div>
                <div class="col-xs-12 col-md-9 join-inner">
                    <div class="inner">
                       <div>
                        <span>모든 항목은 필수 입력 항목입니다.</span>
                           
                       </div>
                        <form>
                            <label>아이디</label>
                            <div class="inner-id">
                                <input type="text" class="inid">
                                <div class="inner-id-btn">
                                    <button>중복확인</button>
                                </div>
                            </div>
                            <div class="inner-pw">
                                <label>비밀번호</label>
                                <input type="password" class="in">
                            </div>
                            <div class="inner-pw-ck">
                                <label>비밀번호 확인</label>
                                <input type="password" class="in">
                            </div>
                            <div class="inner-name">
                                <label>이름</label>
                                <input type="text" class="in">
                            </div>
                            <div class="inner-engname">
                                <label>영문이름</label>
                                <input type="text" class="in">
                            </div>
                            <label>주소</label>
                            <div class="inner-addr1">
                                <input type="text" placeholder="우편번호" class="inzip" readonly>
                                <div class="inner-addr-btn">
                                    <button>우편번호 찾기</button>
                                </div>
                            </div>
                            <div class="inner-addr2">
                                <input type="text" placeholder="기본주소" class="in">
                            </div>
                            <div class="inner-addr3">
                                <input type="text" placeholder="상세주소" class="in">
                            </div>
                            <div class="inner-phone">
                                <label style="display: block">휴대전화</label>
                                <select style="border: 1px solid #ddd" class="td03">
                                    <option>010</option>
                                    <option>011</option>
                                    <option>017</option>
                                    <option>018</option>
                                </select>
                                - <input type="text" class="td3">
                                - <input type="text" class="td3">
                            </div>
                            <div class="inner-email">
                                <label>이메일</label>
                                <input type="text" class="td4">@
                                <select style="border: 1px solid #ddd" class="td4">
                                    <option>naver.com</option>
                                    <option>gmail.com</option>
                                    <option>daum.net</option>
                                    <option>hanmail.net</option>
                                    <option>nate.com</option>
                                </select>
                            </div>
                            <div class="inner-birth">
                                <label>생년월일</label>
                                <select style="border: 1px solid #ddd" class="td5">
                                    <option>2010</option>
                                    <option>2011</option>
                                    <option>2012</option>
                                    <option>2013</option>
                                    <option>2014</option>
                                    <option>2015</option>
                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                </select>년
                                <select style="border: 1px solid #ddd" class="td5">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                </select>월
                                <select style="border: 1px solid #ddd" class="td5">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                    <option>6</option>
                                    <option>7</option>
                                    <option>8</option>
                                    <option>9</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                </select>일
                            </div>


                        </form>
                        <div class="join-btn-cl">

                            <button type="button" class="join-btn">회원가입</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<jsp:include page="../include/footer.jsp"></jsp:include>


</body></html>