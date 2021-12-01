<%@page import="domain.PetDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>
<body>
			<!-- ��� -->
        	<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- body ���� -->
    
<section class="blog-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1">
                    <div class="blog-sidebar">
                        <div class="blog-catagory">
                            <h4>Categories</h4>
                            <ul>
								<li><a href="${pageContext.request.contextPath}/mypage/mypage">�ֹ�����</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageBoard">�� �Խñ� ����</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserUpdate">ȸ����������</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypagePetUpdate">�ݷ�������������</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/mypageUserDelete">ȸ��Ż��</a></li>
							</ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 order-1 order-lg-2">
			         <div class="container">
			            <div class="row">
			                <div class="col-lg-6 offset-lg-3">
			                    <div class="register-form">
			                        <h2>�ݷ�������������</h2>
			                        
			                        <form action="${pageContext.request.contextPath}/mypage/mypagePetUpdatePro" method="post">
			                            <div class="group-input">
			                                <label for="userId">�ֿϵ��� �̸� *</label>
			                                <input type="text" id="petName" value="${petInfo.pet_name}">
			                            </div>
			                            
			                            <div class="group-input">
			                                <label for="pass">�ֿϵ��� ���� *</label>
			                                <input type="text" id="petType" name="petType" value="${petInfo.pet_type}">
			                            </div>
			                            
			                            <div class="group-input">
			                                <label for="con-pass">ǰ�� *</label>
			                                <input type="text" id="petBreed" name="petBreed" value="${petInfo.pet_breed}">
			                            </div>
			                            
			                             <div class="group-input">
			                                <label for="username">���� *</label>
			                            </div>
			                                <input type="radio" id="petGender" name="petGender" value="male">����
			                                <input type="radio" id="petGender" name="petGender" value="female">����
			                            <div class="group-input">
			                                <label for="nickname">������� *</label>
			                                <input type="text" id="petBirth" name="petBirth" value="${petInfo.pet_birth}">
			                            </div>
			                            
			                             <div class="group-input">
			                                <label for="email">������ *</label>
			                                <input type="text" id="petWeight" name="petWeight" value="${petInfo.pet_weight}">
			                            </div>
			                             <div class="group-input">
			                                <label for="addInfo">Ư�̻��� *</label>
			                                <textarea rows="5" cols="40">${petInfo.pet_addinfo}
			                                </textarea>
			                            </div>
			                            
			                            <input type="hidden" name="petNumber" id="petNumber" value="${petInfo.pet_number }">
			                            
			                            <button type="submit" class="site-btn register-btn">�����ϱ�</button>
			                        </form>                        
			                    </div>
			                </div>
			            </div>
			        </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

 
<!-- body �� -->

			<!-- Ǫ�� -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
    
            <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>