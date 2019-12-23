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
    <link href="${pageContext.request.contextPath }/resources/css/Pay.css" rel="stylesheet">

    <style>
   
    </style>
</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>    
<section>
        <div class="container">
           <div class="row">
              <div class="col-xs-12">
                  <div class="pay-title">
                      <h2>고객 정보 입력</h2>
                  </div>
                  <div class="col-xs-12 pay-info">
                      <div class="col-xs-12 info-sel">
                          <h4>선택정보 입력</h4>
                          <div class="col-xs-12 sel">
                              <div class="col-xs-12 col-lg-6 sel-img">
                                  <img src="${pageContext.request.contextPath }/resources/img/grand.jpg" style="width: 100%">
                              </div>
                              <div class="col-xs-12 col-lg-6 sel-info">
                                 <div class="info-ck">
                                      <p class="p1">체크인-체크아웃</p>
                                      <p>2019-12-30~2019-12-31 (1박)</p>
                                 </div>
                                 <div class="info-pe">
                                      <p class="p1">객실-투숙인원</p>
                                      <p>객실1, 성인1, 어린이0, 유아0</p>
                                 </div>
                                 <div class="info-pay">
                                      <p class="p1">요금상세내역</p>
                                      <div class="pay">
                                          <p class="p2">객실요금(1박)</p>
                                          <p class="p3">KRW 330,000</p>
                                      </div>
                                      <div class="pay-other">
                                          <p class="p2">세금 및 봉사료</p>
                                          <p class="p3">KRW 69,300</p>
                                      </div>
                                 </div>
                                 <div class="info-tot">
                                     <p class="p1">총 예약금액</p>
                                     <p class="p4"><span>KRW</span> 399,300</p>
                                 </div>
                              </div>
                              </div>
                      </div>
                      <div class="col-xs-12 float">
                          
                      <div class="col-xs-12 col-lg-6 info-cus">
                          <h4>예약자 정보</h4>
                          <div class="col-xs-12 cus">
                              <div class="col-xs-12 cus-name">
                                  <p class="p1">이름</p>
                                  <input type="text">
                              </div>
                              <div class="col-xs-12 cus-email">
                                  <p class="p1">이메일</p>
                                  <input type="text">@
                                <select>
                                    <option>naver.com</option>
                                    <option>gmail.com</option>
                                    <option>daum.net</option>
                                    <option>hanmail.net</option>
                                    <option>nate.com</option>
                                </select>
                              </div>
                              <div class="col-xs-12 cus-phone">
                                  <p class="p1">연락처</p>
                                  <select class="td03">
                                    <option>010</option>
                                    <option>011</option>
                                    <option>017</option>
                                    <option>018</option>
                                </select>
                                - <input type="text" class="td3">
                                - <input type="text" class="td3">
                              </div>
                          </div>
                      </div>
                      <div class="col-xs-12 col-lg-6 info-money">
                          <h4>결제하기</h4>
                          <div class="col-xs-12 money">
                              <button type="button" class="money-btn1" data-toggle="modal" data-target="#moneyModal">무통장입급</button>
                              <button type="button" class="money-btn2">카드결제</button>
                          </div>
                      </div>
                      </div>
                      
                  </div>
              </div>
               
           </div>
            
        </div>
    </section>

        <!-- 무통장입금 모달 -->
        <div class="modal fade" id="moneyModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h3 class="modal-title">무통장 입금계좌번호</h3>
                    </div>
                    <div class="modal-body pay-modal">
                        <p>
                           <strong>신  한</strong>
                           123-123-123123
                       </p>
                       <p>
                           <strong>농  협</strong>
                           123-1234-1234-12
                       </p>
                       <p>
                           <strong>국  민</strong>
                           123456-12-123456
                       </p>
                       <p>
                           <strong>우체국</strong>
                           123456-12-123456
                       </p>
                       <p>
                           <strong>예금주/</strong>
                           더 벤자민호텔
                       </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                </div>

            </div>
        </div>
  

   
<jsp:include page="../include/footer.jsp"></jsp:include>

</body>

</html>