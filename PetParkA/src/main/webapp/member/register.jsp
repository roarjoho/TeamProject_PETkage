<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   	<!-- Header Section Begin -->
    	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- Header Section Begin -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i>메인</a>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- 회원가입 Form -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="register-form">
                        <h2>회원가입</h2>
                        
                        <form action="#">
                            <div class="group-input">
                                <label for="userId">아이디 *</label>
                                <input type="text" id="userId" placeholder="공백 없는 영문/숫자 포함 6~20자">
                            </div>
                            
                            <div class="group-input">
                                <label for="pass">비밀번호 *</label>
                                <input type="password" id="pass">
                            </div>
                            
                            <div class="group-input">
                                <label for="con-pass">비밀번호 확인 *</label>
                                <input type="password" id="con-pass">
                            </div>
                            
                             <div class="group-input">
                                <label for="username">이름 *</label>
                                <input type="text" id="username">
                            </div>
                            
                            <div class="group-input">
                                <label for="nickname">닉네임 *</label>
                                <input type="text" id="nickname" placeholder="공백 없는 문자 최대 6자">
                            </div>
                            
                             <div class="group-input">
                                <label for="email">이메일 *</label>
                                <input type="text" id="email" placeholder="@를 포함해주세요 어쩌구">
                            </div>
                            <h5>메일수신 동의하는 체크박스 자리</h5>
                            
                            
                             <div class="group-input">
                                <label for="phone">휴대폰번호 *</label>
                                <input type="text" id="phone" placeholder="-포함/제외 여부는 구현방식에 따라 알아서 정하기"><button>SMS인증</button>
                            </div>
                             <h5>문자수신 동의하는 체크박스 자리</h5>
                            
                            
                             <h5>약관동의서 넣는 자리</h5>
                            
                            
                            <button type="submit" class="site-btn register-btn">입력 완료</button>
                        </form>
                        
                        <h5>다른방법으로 회원가입하는 api 넣기 (구글, 네이버아이디 사용 등)</h5>
                                                
                        <div class="switch-login">
                            <a href="./login.html" class="or-login">이미 회원가입을 하셨다면 로그인하기</a>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <!-- Footer Section Begin -->
    	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-ui.min.js"></script>
    <script src="../js/jquery.countdown.min.js"></script>
    <script src="../js/jquery.nice-select.min.js"></script>
    <script src="../js/jquery.zoom.min.js"></script>
    <script src="../js/jquery.dd.min.js"></script>
    <script src="../js/jquery.slicknav.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/main.js"></script>
</body>

</html>