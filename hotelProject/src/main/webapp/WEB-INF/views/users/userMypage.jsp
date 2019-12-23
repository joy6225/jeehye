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

    <!--calendar-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <!--개인 디자인-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/myList.css" rel="stylesheet">
    <script scr="//code.jquery.com/jquery-1.12.4.min.js"></script>

</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <section>
        <div class="container tab">
            <h2 class="mypage-tit">마이 페이지</h2>
            <ul class="nav nav-tabs mypage-tog">
                <li class="col-xs-3 col-md-3 col-sm-3 col-lg-3 in active"><a data-toggle="tab" href="#menu1">정보 수정</a></li>
                <li class="col-xs-3  col-md-3 col-sm-3  col-lg-3 "><a data-toggle="tab" href="#home">예약 현황</a></li>
                <li class="col-xs-3  col-md-3 col-sm-3  col-lg-3 "><a data-toggle="tab" href="#menu2">내 문의</a></li>
                <li class="col-xs-3  col-md-3 col-sm-3  col-lg-3 "><a data-toggle="tab" href="#menu3">내 후기</a></li>
            </ul>
            <div class="col-xs-12 col-sm-12 section-inner tab-content">
                <div id="home" class="tab-pane fade">
                    <h3>예약 현황</h3>
                    <div class="col-xs-12 col-lg-12 reserveListTit" id="reserve_list">
                        <ul>
                            <li class="reserveListTot1">총 <span id="resserveListTot">1</span> 개</li>
                        </ul>
                    </div>
                    <div class="reserveList">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>예약 번호</th>
                                    <th>객실 정보</th>
                                    <th>체크인/아웃</th>
                                    <th>결제 현황</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>7777191220</td>
                                    <td><a data-toggle="modal" data-target="#reserveModal" herf="##">프리미어 디럭스룸</a></td>
                                    <td>19/12/25-19/12/27</td>
                                    <td>결제완료</td>
                                </tr>
                                <tr>
                                    <td>7777191220</td>
                                    <td><a data-toggle="modal" data-target="#reserveModal" herf="##">프리미어 디럭스룸</a></td>
                                    <td>19/12/25-19/12/27</td>
                                    <td>결제완료</td>
                                </tr>
                                <tr>
                                    <td>7777191220</td>
                                    <td><a data-toggle="modal" data-target="#reserveModal" herf="##">프리미어 디럭스룸</a></td>
                                    <td>19/12/25-19/12/27</td>
                                    <td>결제완료</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

                <div id="menu1" class="tab-pane fade  in active">
                    <h3>정보 수정</h3>
                    <div class="col-xs-12 col-md-9 join-inner">
                        <div class="inner">
                            <form>
                                <label>아이디</label>
                                <div class="inner-id">
                                    <input type="text" class="inid" value="ggggggg" readonly>
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
                                        <button  style="font-weight: bold">우편번호 찾기</button>
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
                            <div class="btn-cl">
                                <button type="button" class="update-btn" style="font-weight: bold">수정</button>
                                <button type="button" class="delete-btn"  style="font-weight: bold">탈퇴</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h3>내 문의</h3>
                    <div class="col-xs-12 col-lg-12 reserveListTit" id="reserve_list">
                        <ul>
                            <li class="reserveListTot1">총 <span id="resserveListTot">1</span> 개</li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-lg-12 qnaListTit" id="myQna_list">
                        <table class="table table-hover" id="myQnaTable">
                            <colgroup>
                                <col style="width: 17%;">
                                <col style="width: 21%;">
                                <col style="width: 21%;">
                                <col style="width: 28%;">
                                <col style="width: 13%;">
                            </colgroup>
                            <thead class="myQnaThead">
                                <tr>
                                    <th>글번호</th>
                                    <th>제목</th>
                                    <th>질문 유형</th>
                                    <th>작성일</th>
                                    <th>답변여부</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><a href='#'>맛있어요</a></td>
                                    <td>기타</td>
                                    <td>2019.12.18</td>
                                    <td><span class="extraImages"><img class="secret" src="${pageContext.request.contextPath }/resources/img/cross.png"></span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#">이상해요</a></td>
                                    <td>홈페이지 오류</td>
                                    <td>2019.12.19</td>
                                    <td><span class="extraImages"><img class="secret" src="${pageContext.request.contextPath }/resources/img/cross.png"></span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="#">배고파요</a></td>
                                    <td>컴플레인</td>
                                    <td>2019.12.20</td>
                                    <td><span class="extraImages"><img class="secret" src="${pageContext.request.contextPath }/resources/img/circle.png"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="menu3" class="tab-pane fade">
                    <h3>내 후기</h3>
                    <div class="col-xs-12 col-lg-12 reserveListTit" id="reserve_list">
                        <ul>
                            <li class="reserveListTot1">총 <span id="resserveListTot">1</span> 개</li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-lg-12 reviewListTit" id="myReview_list">
                        <table class="table table-hover" id="myReviewTable">
                            <colgroup>
                                <col style="width: 24%;">
                                <col style="width: 28%;">
                                <col style="width: 29%;">
                                <col style="width: 20%;">
                            </colgroup>
                            <thead class="myReviewThead">
                                <tr>
                                    <th>글번호</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>평점</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><a href='#'>맛있어요</a></td>
                                    <td>2019.12.18</td>
                                    <td style="color: #F2CF1F">★★★★★</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href="#">이상해요</a></td>
                                    <td>2019.12.19</td>
                                    <td style="color: #F2CF1F">★☆☆☆☆</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href="#">배고파요</a></td>
                                    <td>2019.12.20</td>
                                    <td style="color: #F2CF1F">★★☆☆☆</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 모달 -->
    <div class="modal fade" id="reserveModal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-body row">
                    <div class="modal-reserve col-sm-8 col-xs-8">
                        <div id="header_box">
                            <header id="headerTitle" class="rev_headertitle_box">
                                <div class="title" id="headerTitleArea">예약확인/취소<button type="button" class="close" data-dismiss="modal">&times;</button></div>
                            </header>
                        </div>
                        <div class="container modal-reserve-container">
                            <div class="col-xs-12 col-sm-12 col-xs-12 ">
                                <h4 style="font-weight: bold">예약정보</h4>

                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="reserve-modal-th">예약현황</th>
                                            <th class="reserve-modal-th"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>예약자</td>
                                            <td>김뽀삐</td>
                                        </tr>
                                        <tr>
                                            <td>예약 상태</td>
                                            <td>예약 완료</td>
                                        </tr>
                                        <tr>
                                            <td>예약 번호</td>
                                            <td>7777191220</td>
                                        </tr>
                                        <tr>
                                            <td>체크인</td>
                                            <td>2019/12/25</td>
                                        </tr>
                                        <tr>
                                            <td>체크아웃</td>
                                            <td>2019/12/29</td>
                                        </tr>
                                        <tr>
                                            <td>객실 타입</td>
                                            <td>스탠다드 디럭스룸</td>
                                        </tr>
                                        <tr>
                                            <td>투숙객</td>
                                            <td>성인:2 / 어린이:0 / 유아:0</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <h4 style="font-weight: bold">요금상세</h4>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="reserve-modal-th">결제현황</th>
                                            <th class="reserve-modal-th"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>결제 날짜</td>
                                            <td>2019/12/20</td>
                                        </tr>
                                        <tr>
                                            <td>결제 내역</td>
                                            <td>200,000원</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <button class="btn btn-success" style="float: right; background-color: #d0baa8; border: 0; font-weight: bold;">예약취소</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<jsp:include page="../include/footer.jsp"></jsp:include>

    <!--검색창 물음표-->
    <script>
        $(".sel .childSel").hover(function() {
            $(".sel .child").css("display", "inline-block");
        }, function() {
            $(".sel .child").css("display", "none");
        });

        $(".sel .kidsSel").hover(function() {
            $(".sel .kids").css("display", "inline-block");
        }, function(event) {
            $(".sel .kids").css("display", "none");
        });
        /*날짜 선택 달력*/
        $(".selector").flatpickr({
            dateFormat: "Y. m. d. D"
        });

        /*오늘 날짜*/
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var time = year + ". " + month + ". " + day + ". " + getTodayLabel();

        function getTodayLabel() {
            var week = new Array('Sun', 'Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat');

            var today = new Date().getDay();
            var todayLabel = week[today];

            return todayLabel;
        };

        $(document).ready(function() {
            $(".selector").val(time);
        })
    </script>
    <!--reserveList Modal-->

    <script>

    </script>



</body></html>