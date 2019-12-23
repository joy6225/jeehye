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
    <link href="${pageContext.request.contextPath }/resources/css/Login.css" rel="stylesheet">

    <style type="text/css">
  
    </style>

</head>

<body>
 <jsp:include page="../include/header.jsp"></jsp:include>

    <section>
        <div class="container login-form">
            <div class="row">
                <div class="col-xs-12 col-md-9 login-t">
                    <h2>로그인</h2>
                </div>
                <div class="col-xs-12 col-md-9 login-out">
                    <div class="login-title">
                        <h3>더 벤자민에 오신 것을 환영합니다</h3>
                        <h4>로그인하시면 다양한 서비스와 혜택을 이용하실 수 있습니다</h4>
                    </div>
                    <div class="login-inner">
                        <div class="inner">
                            <div class="inner-input">
                                <input type="text" id="id" name="id" placeholder="아이디를 입력하세요">
                                <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요">

                            </div>
                            <div class="inner-btn1">
                                <button type="button">로그인</button>

                            </div>

                        </div>
                        <div class="inner-btn2">
                            <button class="btn1" type="button">회원가입</button>
                            <button class="btn2" type="button">아이디 찾기</button>
                            <button class="btn3" type="button">비밀번호 찾기</button>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <!--모달(아이디, 비밀번호 찾기)-->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <div class="modal-content">
                <div class="modal-top">
                    <!--엑스 버튼-->
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">비밀번호 찾기</h3>
                </div>
                <div class="modal-mid">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td class="td"><strong>이름</strong></td>
                                <td class="td2"><input type="text"></td>
                            </tr>
                            <tr>
                                <td class="td"><strong>영문이름</strong></td>
                                <td class="td2"><input type="text"></td>
                            </tr>
                            <tr class="td-phone">
                                <td class="td"><strong>휴대전화</strong></td>
                                <td class="td2">
                                    <select class="td3" style="border: 1px solid #ddd">
                                        <option>010</option>
                                        <option>011</option>
                                        <option>017</option>
                                        <option>018</option>
                                    </select>
                                    - <input type="text" class="td3">
                                    - <input type="text" class="td3">
                                </td>
                            </tr>
                            <tr class="td-id">
                                <td class="td"><strong>아이디</strong></td>
                                <td class="td2"><input type="text"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-bot">
                    <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                </div>
            </div>

        </div>
    </div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
    <!--아이디,비밀번호 찾기 모달-->
    <script>
        /*아이디 찾기*/
        $(".btn2").click(function() {
            $(".modal-title").html("아이디 찾기");
            $(".td-id").css("display", "none");
            $("#myModal").modal("show");
        })
        /*비밀번호 찾기*/
        $(".btn3").click(function() {
            $(".modal-title").html("비밀번호 찾기");
            $(".td-id").css("display", "contents");
            $(".td-phone").css("display", "none");
            $("#myModal").modal("show");
        })
    </script>
</body>

</html>