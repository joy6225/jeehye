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
    <link href="${pageContext.request.contextPath }/resources/css/hotelSpecial.css" rel="stylesheet">
    
    
    <script scr="//code.jquery.com/jquery-1.12.4.min.js"></script>
  
  
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
    <section>
      
        <div class="container tab">
            <h2 class="room-tit">벤자민의 Special Offers</h2>
                <ul class="nav nav-tabs room-tog2">
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2 "><a data-toggle="tab" href="#home">레스토랑</a></li>
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2"><a data-toggle="tab" href="#menu1">야외 수영장</a></li>
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2"><a data-toggle="tab" href="#menu2">실내 수영장</a></li>
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2"><a data-toggle="tab" href="#menu3">실내 스파</a></li>
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2 "><a data-toggle="tab" href="#menu4">골프장</a></li>
                    <li class="col-xs-6  col-md-2 col-sm-2  col-lg-2 "><a data-toggle="tab" href="#menu5">피트니스</a></li>
                </ul>
                <div class="col-xs-12 col-sm-12 section-inner tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <h3>Restaurant</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/restaurant.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        더 벤자민의 레스토랑은 서울의 전경과 함께 최상의 프렌치 정찬을 즐길 수 있는 프렌치 레스토랑입니다.
                                국내 및 세계 각국에서 공수한 건강하고 신선한 제철 식자재 및 셰프들의 끊임없는 연구를 기반으로 현대적이고도 독창적으로 구현한 정통 프렌치를 선보입니다.
                                세계적인 정상급 와인부터 희소한 와인까지 500여 종의 다채로운 셀렉션을 보유한 와인의 메카로도 유명합니다.</div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 시간</em>
                                            <div class="infoDes">Lunch : 12:00 ~ 14:30
                                        <br>Dinner : 18:00 ~ 22:00</div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Benjamin Island</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/swim.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        더 벤자민의 벤자민 아일랜드는 '도심 속 휴식의 섬'컨셉의 양외 수영장입니다.
                                        서울 특급호텔 최초 온수풀, 자쿠지, 루프탑(RoofTop),카바나 등 차원이 다른 아웃도어 라이프스타일을 즐기실 수 있습니다.
                                        벤자민 아일랜드는 계절마다 색다를 테마로 방문하실 때마다 새로운 경험을 제공합니다.</div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 방침</em>
                                            <div class="infoDes">-벤자민 아일랜드는 벤자민 호텔 투숙객 전용 시설입니다.
                                            <br>
                                            -벤자민 아일랜드는 입장 혜택이 포함된 상품 외에는 이용 시 입장료가 추가로 부과됩니다.<br>-벤자민 아일랜드의 모든 지역은 금연구역입니다.<br>-벤자민 아일랜드는 다이빙이 금지되어 있습니다.<br>-신장 140cm미만인 고객은 보호자의 보호 하에 구명조끼 착용 시 이용 가능합니다.</div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Swimming Pool</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/swim2.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        더 벤자민의 실내 수영장은 사계절 내내 쾌적하고 여유로운 수영을 즐길 수 있습니다. 길이 25m, 너비 6m의 풀로 이루어져 있으며, 유리돔을 통해 보이는 남산의 전경을 만끽하며 수영과 휴식을 함께 즐길 수 있는 공간입니다. 건식사우나와 실내 및 야외 자쿠지를 갖추고 있습니다. 회원과 투숙객을 위해 별도의 락커룸을 제공합니다.
                                        </div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 방침</em>
                                            <div class="infoDes">-실내 수영장은 벤자민 호텔 투숙객 전용 시설입니다.
                                            <br>
                                            -실내 수영장 입장 혜택이 포함된 상품 외에는 이용 시 입장료가 추가로 부과됩니다.<br>-실내 수영장의 모든 지역은 금연구역입니다.<br>-실내 수영장은 다이빙이 금지되어 있습니다.<br>-신장 140cm미만인 고객은 보호자의 보호 하에 구명조끼 착용 시 이용 가능합니다.<br>-튜브, 스노클 장비, 오리발, 수중 프로펠러등은 사용하실 수 없습니다.<br>-수영복 착용시에만 이용 가능하며, 체육복 및 평상복 착용은 불가능합니다.</div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                     <div id="menu3" class="tab-pane fade">
                        <h3>Spa</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/spa.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        더 벤자민의 스파는 191년 전통의 파리 겔랑 본사 노하우를 전수받은 10여명의 스파 전문가들이 고객의 취향과 심신 상태를 고려하여 최적화된 고객 맞춤형 프로그램을 추천, 도심 속의 진정한 휴식을 제공하는 지상 최고의 서비스를 제공합니다.</div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 시간</em>
                                            <div class="infoDes">08:00 ~ 22:00 (연중무휴)</div>
                                        </li>                                        
                                        <li>
                                            <em class="infoTit">예약 안내</em>
                                            <div class="infoDes">고객께 맞는 트리트먼트 선택을 위해 겔랑스파 리셉셔니스트와의 상담을 통해
                                            보다 편안하게 예약을 하실 수 있습니다.</div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                   <div id="menu4" class="tab-pane fade">
                        <h3>Golf Field</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/golf.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        더 벤자민은 최고의 가치를 제공하기 위해 다양한 디지털 장비를 마련해 드라이빙, 퍼팅, 자세고녕, 클럽  피팅 등 One-stop Solution을 제공합니다.국내 최초로 드라이빙 레인지 전 타석에 골프샷 분석시스템인 트랙맨을 설치해 더욱 과학적인 골프 연습을 경험하실 수 있습니다.</div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 시간</em>
                                            <div class="infoDes">Lunch : 12:00 ~ 14:30
                                        <br>Dinner : 18:00 ~ 22:00</div>
                                        </li>                                        
                                        <li>
                                            <em class="infoTit">운영 방침</em>
                                            <div class="infoDes">-더 벤자민의 실내 골프장은 만 13세 이상 고객에게 한해 입장 가능합니다.<br>-고객 여러분의 안전을 위하여 음주 후 골프장, 피트니스 짐, 사우나, 실내 수영장 등의 스페셜 시설 이용은 제한될 수 있습니다.</div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                     <div id="menu5" class="tab-pane fade">
                        <h3>Fitness Gym</h3>
                        <ul class="itemList roomList">
                            <li class="item">
                                <a href="##" class="itemImg">
                                    <div class="col-xs-12 sizeHi">
                                        <img src="${pageContext.request.contextPath }/resources/img/gym.jpg">
                                    </div>
                                </a>
                                <div class="col-xs-12 itemInfo">
                                    <div class="itemDes" style="font-size: 100%; font-weight: bold;">
                                        체계적인 체력 관리를 위한 기능별 공간과 최상의 휴식을 위한 공간으로 조성되어 운동과 휴식을 조화롭게 즐기실 수 있는 실내 체육관입니다. 최첨단 맞춤 운동 프로그램인 시타라스 피트니스와 제휴해 국내 유일의 디지털 측정실을 갖추고 있으며, 스마트 고칭 시스템을 이용해 차별화된 운동 지도 서비스를 제공합니다.</div>
                                    <ul class="itemInfoList">
                                        <li>
                                            <em class="infoTit">운영 시간</em>
                                            <div class="infoDes">05:30 ~ 22:30</div>
                                        </li>                                        <li>
                                            <em class="infoTit">정기 휴일</em>
                                            <div class="infoDes">매월 세 번째 수요일</div>
                                        </li>                                        <li>
                                            <em class="infoTit">대여 품목</em>
                                            <div class="infoDes">트레이닝 복, 양말, 운동화(유료)</div>
                                        </li>
                                    </ul>
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
        $(".sel .childSel").hover(function(){
          $(".sel .child").css("display","inline-block");
        },function(){
            $(".sel .child").css("display","none");
        });
        
        $(".sel .kidsSel").hover(function(){
          $(".sel .kids").css("display","inline-block");
        },function(event){
            $(".sel .kids").css("display","none");
        });
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
        })

    </script>


</body>


</html>