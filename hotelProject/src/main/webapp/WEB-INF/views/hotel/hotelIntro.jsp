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
    <link href="${pageContext.request.contextPath }/resources/css/hotelIntro.css" rel="stylesheet">


    <script scr="//code.jquery.com/jquery-1.12.4.min.js"></script>


</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <section>

        <div class="container tab">
            <h2 class="room-tit">벤자민의 안락한 객실</h2>
            <ul class="nav nav-tabs room-tog">
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#home">스탠다드 더블</a></li>
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#menu1">스탠다드 트윈</a></li>
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#menu2">스탠다드 패밀리</a></li>
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#menu3">프리미어 디럭스</a></li>
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#menu4">디럭스</a></li>
                <li class="col-xs-6  col-md-2 col-sm-6  col-lg-2 "><a data-toggle="tab" href="#menu5">그랜드</a></li>
            </ul>
            <div class="col-xs-12 col-sm-12 section-inner tab-content">
                <div id="home" class="tab-pane fade in active">
                    <h3>Standard Double Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/standardDeluxe.jpg">
                                </div>
                            </a>
                            <div class="col-xs-12 itemInfo">
                                <div class="itemDes">
                                    더 벤자민 본관에 위치한 스탠다드 더블 룸은 안정감을 주는 베이지그레이 및 화이트 컬러를 기본으로 한 화려한 분위기의 객실입니다
                                </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    더블
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    26.7~30.7m²
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>

                 <div id="menu1" class="tab-pane fade">
                    <h3>Standard Twin Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/standardTwin.jpg">
                                    </div>
                                    </a>
                                    <div class="col-xs-12 itemInfo">
                                        <div class="itemDes">
                                            더 벤자민의 스탠다드 트윈룸은 다른 특급 호텔의 동급 객실보다 여유로운 공간을 제공하며, 비즈니스와 여행의 여유로움을 즐길 수 있습니다.
                                        </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    트윈
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    40~46m²
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>              

   
                 <div id="menu2" class="tab-pane fade">
                    <h3>Standard Family Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/standFamily.jpg">
                                </div>
                            </a>
                            <div class="col-xs-12 itemInfo">
                                <div class="itemDes">
                                    편안함을 주는 베이지에 우아한 골드가 가미된 톤온톤 객실은 어디에서도 경험할 수 없는 안락하면서도 럭셔리한 휴식을 제공합니다.
                                    넓은 공간과 세련된 분위기로 가족 여행객, 부부 여행객 모두에게 최고의 만족을 선사합니다.
                                </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    패밀리트윈/더블
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    42m²
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>       
                  <div id="menu3" class="tab-pane fade">
                    <h3>Premier Deluxe Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/standardDeluxe.jpg">
                                </div>
                            </a>
                            <div class="col-xs-12 itemInfo">
                                <div class="itemDes">
                                    새롭게 선보이는 객실 타입인 프리미어 디럭스는 지금까지와는 다른 특별한 경험을 선사합니다.
                                    탁 트인 객실에서 바라보는 매혹적인 서울의 모습은 당신이 또 다시 이곳을 떠올리게 만들 것입니다.
                                </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    더블/트윈
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    84m²
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>       
                 <div id="menu4" class="tab-pane fade">
                    <h3>Deluxe Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/Deluxe.jpg">
                                </div>
                            </a>
                            <div class="col-xs-12 itemInfo">
                                <div class="itemDes">
                                    편안함을 주는 베이지에 우아한 골드가 가미된 톤온톤 객실은 어디에서도 경험할 수 없는 안락하면서도 럭셔리한 휴식을 제공합니다.
                                    넓은 공간과 세련된 분위기를 추구하는 비즈니스 고객과 여행객 모두에게 최고의 만족을 선사합니다.
                                </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    더블/트윈
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    38~42m²
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>       
                 <div id="menu5" class="tab-pane fade">
                    <h3>Grand Room</h3>
                    <ul class="itemList roomList">
                        <li class="item">
                            <a href="##" class="itemImg">
                                <div class="col-xs-12 sizeHi">
                                    <img src="${pageContext.request.contextPath }/resources/img/grand.jpg">
                                </div>
                            </a>
                            <div class="col-xs-12 itemInfo">
                                <div class="itemDes">
                                    '괴테의 명작 '젊은 베르테르의 슬픔'의 여주인공 Charlotte처럼 샤롯데 스위트는 만인에게 사랑받을 수밖에
                                    없는 객실입니다. 도심 속 팬트하우스가 연상되는 더 벤자민 그랜드룸의 섬세한 인테리어와 사랑에 빠져 보세요.
                                </div>
                                <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실　개요</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;font-weight: bold;">위치</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    MAIN TOWER
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">침대</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    더블/트윈
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">인원</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    2~3명
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">전망</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    시티뷰
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">객실크기</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                    127㎡
                                                </div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">체크인/아웃</div>
                                                <div class="s001-content__text text--dotline" style="overflow-wrap:break-word;">
                                                  15:00/12:00 
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->
                                <div class="s124-information">
                                    
                              <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">특별서비스</h3>
                                  <div class="s001-content">
                                           <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">
                                                <p>▶ 전 객실 초고속 무료인터넷(유선, 와이파이)</p>
                                                <p>▶ 서울 시내중심에서 스카이라인을 감상하며 즐기는 야외 수영장</p>
                                                <p>▶ 안전하게 편안하게 즐기는 실내 수영장</p>
                                                <p>▶ 웰빙 라이프를 실현할 수 있는 피트니스 짐</p>
                                                <p>▶ 쉬는 동안에도 놓칠 수 없다, 골프 필드</p>
                                                <p>▶ 안락하고 따뜻한 스파</p>
 
                                                </div>

                                            </li>
                                      </ul>
                                  </div>
                                </div><!--info-inner-end-->                             
                               <div class="col-xs-12 s001-information__inner">
                                    <h3 class="s001-information__title">객실서비스</h3>
                                    <div class="s001-content">
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">일반</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>TV/손전등/슬리퍼</p> 
                                                    <p>전화기/금고/티포트</p> 
                                                    <p>구두클리너/미니바</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">욕실</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>1회용 칫솔 및 치약</p> 
                                                    <p>면도기/가운/욕실용품</p> 
                                                    <p>헤어드라이어/비데</p>                         </div>
                                            </li>
                                        </ul>
                                        <ul class="s001-content__col">
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word; font-weight: bold;;">기타</div>
                                            </li>
                                            <li class="s001-content__item">
                                                <div class="s001-content__title text--dotline" style="overflow-wrap:break-word;">         
                                                    <p>케이블/위성 TV 채널</p> 
                                                    <p>무료 생수 1일 2병</p> 
                                                    <p>무료 차(TEA)서비스</p>                        
                                                 </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--info-inner-end-->                                
                                
                            </div>
                                </div>
                        </li>
                    </ul>
                </div>       
            </div>
        </div>

    </section>
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

</body></html>