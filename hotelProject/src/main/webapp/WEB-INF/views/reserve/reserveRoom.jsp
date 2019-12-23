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
    <!--개인 스타일-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/reserve.css">
    
 
</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 stepFirst">
                    <div class="titleSapn">
                           <a>객실선택</a>
                           <span>></span><a>옵션선택</a>
                           <span>></span><a>고객정보입력</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
           <div class="row">
                <div class="col-xs-12 reserve">
                   <div class="col-md-5 left">
                    <ul class="check">
                        <li><strong>체크인</strong></li>
                        <li class="checkDate"><input type="text" class="selector"></li>
                    </ul>
                    <ul class="check">
                        <li><strong>체크아웃</strong></li>
                        <li class="checkDate"><input type="text" class="selector"></li>
                    </ul>
                    </div>
                   <div class="col-xs-12 col-md-5 left">
                        <ul class="sel">
                            <li><strong>객실</strong></li>
                            <select class="form-control" id="sel1">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </ul>
                        <ul class="sel">
                            <li><strong>성인</strong></li>
                              <select class="form-control" id="sel1">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                              </select>
                        </ul>
                        <ul class="sel">
                            <li><strong>어린이 <span class="glyphicon glyphicon-question-sign childSel">
                               <span class="hidden">안내</span>
                                <span class="child">37개월 이상~만 12세 이하</span>
                            </span></strong></li>
                            <select class="form-control" id="sel1">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                              </select>
                        </ul>
                        <ul class="sel">
                            <li><strong>유아 <span class="glyphicon glyphicon-question-sign kidsSel">                      <span class="hidden">안내</span>
                                <span class="kids">36개월이하</span></span></strong></li>
                            <select class="form-control" id="sel1">
                                <option>0</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                              </select>
                        </ul>                        
                    </div> 
                    <div class="col-xs-12 col-md-2 searchBtn">
                        <button type="button" class="btn btn-info reserveSearchBtn">　검색　</button>
                    </div>
                </div>
            </div>
        </div>

    <div class="searchResult">
        <div class="container">
            <div class="row">
               <div class="standrad">
                    <div class="col-xs-12 reserveSearch">
                            <ul class="col-sm-4">
                                <img src="${pageContext.request.contextPath }/resources/img/standardTwin.jpg">
                            </ul>
                            <ul class="col-sm-4">
                                <li class="roomName">Standard</li>
                                <li>객실크기 : 26.7㎡ ~ 46㎡</li>
                                <li>침대타입 : 더블, 트윈, 패밀리 트윈</li>
                                <li class="roomMore"><a href="" data-toggle="modal" data-target="#myModal">더보기</a></li>
                            </ul>
                            <ul class="col-sm-4 reserveSel">
                                <li class="reservePrice">
                                    <div class="price">90,225 원 ~</div>
                                    <div>1박</div>
                                </li>
                                <li style="display: inline-block; ">
                                    <button type="button" class="btn btn-info resBtn">예약하기 <span class="glyphicon glyphicon-chevron-down"></span></button>                            
                                </li>
                            </ul>
                    </div>
                    <div class="col-xs-12 searchDetail">
                       <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline" style="height: 10px; line-height: 10px;">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/double.JPG"> City/Double
                                          <a href="#">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                            </div>
                        </div>
                        <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/twin.JPG"> City/Twin
                                          <a href="">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                                </div>
                        </div>
                        <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/Ftwin.JPG"> City/Family Twin
                                          <a href="#">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">94,725 원 </strong>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="Deluxe">
                    <div class="col-xs-12 reserveSearch">
                            <ul class="col-sm-4">
                                <img src="${pageContext.request.contextPath }/resources/img/Deluxe.jpg">
                            </ul>
                            <ul class="col-sm-4">
                                <li class="roomName">Deluxe</li>
                                <li>객실크기 : 38~42㎡</li>
                                <li>침대타입 : 더블, 트윈</li>
                                <li class="roomMore"><a href="#" data-toggle="modal" data-target="#myModal">더보기</a></li>
                            </ul>
                            <ul class="col-sm-4 reserveSel">
                                <li class="reservePrice">
                                    <div class="price" >94,725 원 ~</div>
                                    <div>1박</div>
                                </li>
                                <li style="display: inline-block; ">

                                    <button type="button" class="btn btn-info resBtn">예약하기 <span class="glyphicon glyphicon-chevron-down"></span></button>

                                </li>
                            </ul>
                    </div>
                    <div class="col-xs-12 searchDetail">
                       <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline" style="height: 10px; line-height: 10px;">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/double.JPG"> City/Double
                                          <a href="#">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                            </div>
                        </div>
                        <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/twin.JPG"> City/Twin
                                          <a href="#">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="grand">
                    <div class="col-xs-12 reserveSearch">
                            <ul class="col-sm-4">
                                <img src="${pageContext.request.contextPath }/resources/img/priDeluxe.jpg">
                            </ul>
                            <ul class="col-sm-4">
                                <li class="roomName">Premier Deluxe</li>
                                <li>객실크기 : 84㎡</li>
                                <li>침대타입 : 더블, 트윈</li>
                                <li class="roomMore"><a href="#" data-toggle="modal" data-target="#myModal">더보기</a></li>
                            </ul>
                            <ul class="col-sm-4 reserveSel">
                                <li class="reservePrice">
                                    <div class="price" >130,500 원 ~</div>
                                    <div>1박</div>
                                </li>
                                <li style="display: inline-block; ">

                                    <button type="button" class="btn btn-info resBtn">예약하기 <span class="glyphicon glyphicon-chevron-down"></span></button>

                                </li>
                            </ul>
                    </div>
                    <div class="col-xs-12 searchDetail">
                       <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline" style="height: 10px; line-height: 10px;">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/double.JPG"> City/Double
                                          <a href="#" >자세히 보기</a>
                                        </label>
                                        
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                            </div>
                        </div>
                        <div class="col-xs-12 Detail">
                                <div class="col-sm-6 left">
                                        <label class="radio-inline">
                                          <input type="radio" name="optradio" checked>
                                          <img src="${pageContext.request.contextPath }/resources/img/twin.JPG"> City/Twin
                                        <a href="#">자세히 보기</a>
                                        </label>
                                </div>
                                <div class="col-sm-6 right">
                                    <button type="button" class="btn btn-info">예약하기</button>
                                    <strong class="detailPrice">90,225 원</strong>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 reserveSearch">
                        <ul class="col-sm-4">
                            <img src="${pageContext.request.contextPath }/resources/img/grand.jpg">
                        </ul>
                        <ul class="col-sm-4">
                            <li class="roomName">grand</li>
                            <li>객실크기 : 127㎡</li>
                            <li>침대타입 : 더블, 트윈</li>
                            <li class="roomMore"><a href="#" data-toggle="modal" data-target="#myModal">더보기</a></li>
                        </ul>
                        <ul class="col-sm-4 reserveSel">
                            <li class="reservePrice">
                                <div class="price" >130,500 원 ~</div>
                                <div>1박</div>
                            </li>
                            <li style="display: inline-block; ">
                                
                                <button type="button" class="btn btn-info resBtn">예약하기 <span class="glyphicon glyphicon-chevron-down"></span></button>
                                
                            </li>
                        </ul>
                </div>
                <div class="col-xs-12 searchDetail">
                   <div class="col-xs-12 Detail">
                            <div class="col-sm-6 left">
                                    <label class="radio-inline" style="height: 10px; line-height: 10px;">
                                      <input type="radio" name="optradio" checked>
                                      <img src="${pageContext.request.contextPath }/resources/img/double.JPG"> City/Double
                                      <a href="#">자세히 보기</a>
                                    </label>
                            </div>
                            <div class="col-sm-6 right">
                                <button type="button" class="btn btn-info">예약하기</button>
                                <strong class="detailPrice">90,225 원</strong>
                        </div>
                    </div>
                    <div class="col-xs-12 Detail">
                            <div class="col-sm-6 left">
                                    <label class="radio-inline">
                                      <input type="radio" name="optradio" checked>
                                      <img src="${pageContext.request.contextPath }/resources/img/twin.JPG"> City/Twin
                                      <a href="#">자세히 보기</a>
                                    </label>
                            </div>
                            <div class="col-sm-6 right">
                                <button type="button" class="btn btn-info">예약하기</button>
                                <strong class="detailPrice">90,225 원</strong>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!--모달창-->
        <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="font-weight: bold;">Standard</h4>
        </div>
        <div class="modal-body">
         <!--캐러셀-->
              <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>                  
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="${pageContext.request.contextPath }/resources/img/standardTwin.jpg" style="width:100%;">
                  </div>

                  <div class="item">
                    <img src="${pageContext.request.contextPath }/resources/img/standardDeluxe.jpg" style="width:100%;">
                  </div>

                  <div class="item">
                    <img src="${pageContext.request.contextPath }/resources/img/standFamily.jpg" style="width:100%;">
                  </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control prveLeft" href="#myCarousel" data-slide="prev">
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control nextRight" href="#myCarousel" data-slide="next">
                  
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>
            <div class="modal-body">
              <div class="row">
                 <div class="col-xs-12 imgPre">
                     <div class="col-sm-3 col-xs-4 preImg1">
                         <img src="${pageContext.request.contextPath }/resources/img/standardTwin.jpg" style="border:3.5px solid #d0baa8;">
                     </div >
                     <div class="col-sm-3 col-xs-4 preImg2">
                         <img src="${pageContext.request.contextPath }/resources/img/standardDeluxe.jpg">
                     </div>
                     <div class="col-sm-3 col-xs-4 preImg3">
                         <img src="${pageContext.request.contextPath }/resources/img/standFamily.jpg">
                     </div>
                  <div class="col-xs-12 detail2">
                      더 벤자민 본관에 위치한 스탠다드 더블 룸은 안정감을 주는 베이지그레이 및 화이트 컬러를 기본으로 한 화려한 분위기의 객실입니다.
                  </div>
                  <div class="col-xs-12 col-sm-6" style="margin-bottom: 20px; ">
                     <ul class="col-xs-6" style="padding: 0px; ">
                      <li><strong>체크인</strong> : 15:00</li>
                      <li><strong>체크아웃</strong> : 12:00</li>
                      </ul>
                      <ul class="col-xs-6" style="padding:0px;">
                      <li><strong>위치</strong> : <br>MAIN TOWER</li>
                      <li><strong>침대</strong> : 더블</li>
                      <li><strong>인원</strong> : 2~3명</li>
                      <li><strong>전망</strong> : 시티뷰</li>
                      <li><strong>객실크기</strong> : <br>26.7m² ~ 30.7m²</li>
                      </ul>
                  </div>
                  <div class="col-xs-12 col-sm-6 roomService" >
                    <div class="col-xs-5" style="padding: 0; font-weight: bold;">
                     객실이용
                    </div>
                    <ul class="col-xs-7 roomDetail">
                        <li>TV/손전등/슬리퍼</li>
                        <li>전화기/금고/티포트</li>
                        <li>구두클리너/미니바</li>
                        <li>1회용 칫솔 및 치약</li>
                        <li>면도기/가운/욕실용품</li>
                        <li>헤어드라이어/비데</li>
                        <li>케이블/위성 TV 채널</li>
                        <li>무료 생수 1일 2병</li>
                        <li>무료 차(TEA)서비스</li>
                    </ul>
                  </div>
                  </div>
              </div>
            </div>
        </div>
      </div>
  </div>
</div>         
            
    </section>
   
 <jsp:include page="../include/footer.jsp"></jsp:include>
    
    <script>
        /*날짜 선택 달력*/
        $(".selector").flatpickr({
            dateFormat: "Y. m. d. D"
        });
            
        /*오늘 날짜*/
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth()+1;
        var day = date.getDate();
        var time = year+". "+month+". "+day+". "+getTodayLabel();
        
        function getTodayLabel() {
            var week = new Array('Sun', 'Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat');

            var today = new Date().getDay();
            var todayLabel = week[today];

            return todayLabel;
        };
        
        $(document).ready(function(){
            $(".selector").val(time);
        });
    </script>
    
    <!--모달창 스크립트-->
    <script>
        
        $(".nextRight").click(function(){
            var imgList = $(".carousel-inner").children("div");
            var img1 = imgList[0].getAttribute("class");
            var img2 = imgList[1].getAttribute("class");
            var img3 = imgList[2].getAttribute("class");
            if(img1 == "item active"){
                $(".preImg1 >img").css("border","0");
                $(".preImg2 >img").css("border","3.5px solid #d0baa8");
                $(".preImg3 >img").css("border","0");
            }
            else if(img2 =="item active"){
                $(".preImg1 >img").css("border","0");
                $(".preImg2 >img").css("border","0");
                $(".preImg3 >img").css("border","3.5px solid #d0baa8");
            }
            else if(img3 =="item active"){
                $(".preImg1 >img").css("border","3.5px solid #d0baa8");
                $(".preImg2 >img").css("border","0");
                $(".preImg3 >img").css("border","0");
            }
        });
        $(".prveLeft").click(function(){
            var imgList = $(".carousel-inner").children("div");
            var img1 = imgList[0].getAttribute("class");
            var img2 = imgList[1].getAttribute("class");
            var img3 = imgList[2].getAttribute("class");
            console.log(img1);
            console.log(img2);
            console.log(img3);
            if(img1 == "item active"){
                $(".preImg1 >img").css("border","0");
                $(".preImg2 >img").css("border","0");
                $(".preImg3 >img").css("border","3.5px solid #d0baa8");
            }
            else if(img2 =="item active"){
                $(".preImg1 >img").css("border","3.5px solid #d0baa8");
                $(".preImg2 >img").css("border","0");
                $(".preImg3 >img").css("border","0");
            }
            else if(img3 =="item active"){
                $(".preImg1 >img").css("border","0");
                $(".preImg2 >img").css("border","3.5px solid #d0baa8");
                $(".preImg3 >img").css("border","0");
            }
        })
  </script>
   
   <!--예약하기 열기-->
   <script>
        $(".resBtn").click(function(){
            if($(this).attr("class")=="btn btn-info resBtn"){
                $(this).parent("li").parent("ul").parent("div").parent("div").children(".searchDetail").css("display","inline-block");
               /* $(this).parent("div").css("display","inline-block");*/
                $(this).html("　닫기　 "+"<span class='glyphicon glyphicon-chevron-up'></span>");
                $(this).attr("class","btn btn-info closeBtn");
            }else{
                $(this).parent("li").parent("ul").parent("div").parent("div").children(".searchDetail").css("display","none");
                $(this).html("예약하기 "+ "<span class='glyphicon glyphicon-chevron-down'></span>");
                $(this).attr("class","btn btn-info resBtn");
            }
        });
    </script>
    
    <!--검색 창 열기-->
    <script>
        $(".reserveSearchBtn").click(function(){
            $(".searchResult").show();
        });
    </script>
    
</body>
</html>