<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>
    
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

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
					<div>
					<h3 style="float: left;">�� �ڶ��� ����</h3>
					<select id="boardSelectOption" onchange="location.href=this.value" style="float: right;">
						<option value="${pageContext.request.contextPath}/mypage/mypageBoard">1:1����</option>
						<option value="${pageContext.request.contextPath}/mypage/mypageBoard2">�ı��</option>
						<option value="${pageContext.request.contextPath}/mypage/mypageBoard3">��������</option>
						<option selected="selected" value="${pageContext.request.contextPath}/mypage/mypageBoard4">�ڶ�(����)</option>
					</select>
					</div>
								<div class="cart-table">
			                        <table>
			                            <thead>
			                                <tr>
			                                    <th>��ȣ</th>
			                                    <th>����</th>
			                                    <th>�ۼ���</th>
			                                    <th>�ۼ���¥</th>
			                                    <th>��ȸ��</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            	<c:if test="${myBoardView4 ne null }">
				                            	<c:forEach var="myBoardView4" varStatus="status" items="${myBoardView4}">
				                             		<tr>
				                             			<td>${status.count }</td>
				                             			<td>${myBoardView4.board_title}</td>
				                             			<td>${myBoardView4.user_id}</td>
				                             			<td>${myBoardView4.board_createDate}</td>
				                             			<td>${myBoardView4.board_hit}</td>
				                             		</tr>
				                             	</c:forEach>				                           
			                             	</c:if>
			                             	<c:if test="${empty myBoardView4}">
			                             		<tr>
			                             			<td colspan="5">����� ���� �����ϴ�</td>
			                             		</tr>
			                             	</c:if>		
			                            </tbody>			                         
			                        </table>
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