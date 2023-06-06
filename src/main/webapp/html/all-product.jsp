<%@page import="com.maneyshop.model.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Maney Laptop</title>
<link href="../image/logo-re.png" rel="icon">
<link href="../css/style.css" rel="stylesheet">
<link href="../fonts/themify-icons/themify-icons.css" rel="stylesheet">
<link href="../fonts/font-awesome-4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link crossorigin="anonymous"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	referrerpolicy="no-referrer" rel="stylesheet" />
<!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
<link crossorigin="anonymous"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
	integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
	referrerpolicy="no-referrer" rel="stylesheet" />
<link href="../css/responsiveIndex.css" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin.css" class="css">
</head>
<body>
	<div id="main">
		<div id="header">
			<a href="../index.jsp">
				<div class="header_logo">
					<!--                <img src="../image/img_1.png" alt="" class="logo">-->
				</div>
			</a>
			<form action="" class="header_search">
				<div class="search">
					<input class="header_input-search"
						placeholder="Nhập từ khóa cần tìm kiếm" required type="text">
					<button class="header_btn-search" role="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</form>
			<div class="header_list" id="header-list-id">
				<ul class="header_list-item">
					<li class="header_sub-list"><a class="font-14 hover-header"
						href="/FinalProject/allProduct"> <i
							class="hover-header1 fas fa-laptop"></i>Sản phẩm
					</a></li>
					<li class="header_sub-list"><a class="font-14 hover-header"
						href="tutorial-page.jsp"> <i
							class="hover-header1 fas fa-clipboard-check"></i>Hướng dẫn
					</a></li>
					<li class="header_sub-list"><a class="font-14 hover-header"
						href="about-us.jsp"> <i class="hover-header1 fas fa-users"></i>Thông
							tin
					</a></li>
					<li class="header_sub-list" id="li-cart"><a
						class="font-14 hover-header" href="cart.jsp"> <i
							class="hover-header1 fas fa-shopping-cart"></i>Giỏ hàng
					</a>
						<div class="icon-cart" id="icon-cart"></div></li>
					<li class="header_sub-list">
				  <% HttpSession sessionHttpSession = request.getSession(false);
				    if(session != null && session.getAttribute("account") != null) {
				      Account account = (Account)session.getAttribute("account");
				  %>
				      <form>
				        <span><%= account.getFirstName() %> <%= account.getLastName() %></span>
				        <button class="logout"><a href="<%=request.getContextPath()%>/logout">Log out</a><i class="fas fa-sign-out-alt"></i></button>
				      </form>
				  <% } else { %>
				      <a class="font-14 hover-header js-btn-login" role="button">
				        <i class="hover-header1 fas fa-user"></i>Đăng Nhập
				      </a>
				  <% } %>
				</li>
				</ul>
			</div>

			<div class="menu-mobile-class" id="mobile-menu">
				<i class="menu-mobile-btn ti-menu"></i>
			</div>

			<div class="progress-container">
				<div class="progress-bar" id="myBar"></div>
			</div>


		</div>

		<div class="hover-cart" id="cart-hover">
			<div class="cover-cart-item">
				<div class="cart-item">
					<div class="img-cart-item"
						style="background-image: url(../image/image99.png)"></div>
					<div class="details-cart-item">
						<div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458
							(1920 x 1080/IPS/60Hz/5 ms)</div>
						<div class="num-cart-item">Số lượng: 2</div>
						<div class="price-cart-item">5.620.000đ</div>
					</div>
				</div>
				<div class="cart-item">
					<div class="img-cart-item"
						style="background-image: url(../image/image99.png)"></div>
					<div class="details-cart-item">
						<div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458
							(1920 x 1080/IPS/60Hz/5 ms)</div>
						<div class="num-cart-item">Số lượng: 2</div>
						<div class="price-cart-item">5.620.000đ</div>
					</div>
				</div>
				<div class="cart-item">
					<div class="img-cart-item"
						style="background-image: url(../image/image99.png)"></div>
					<div class="details-cart-item">
						<div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458
							(1920 x 1080/IPS/60Hz/5 ms)</div>
						<div class="num-cart-item">Số lượng: 2</div>
						<div class="price-cart-item">5.620.000đ</div>
					</div>
				</div>
				<div class="cart-item">
					<div class="img-cart-item"
						style="background-image: url(../image/image99.png)"></div>
					<div class="details-cart-item">
						<div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458
							(1920 x 1080/IPS/60Hz/5 ms)</div>
						<div class="num-cart-item">Số lượng: 2</div>
						<div class="price-cart-item">5.620.000đ</div>
					</div>
				</div>
				<div class="cart-item">
					<div class="img-cart-item"
						style="background-image: url(../image/image99.png)"></div>
					<div class="details-cart-item">
						<div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458
							(1920 x 1080/IPS/60Hz/5 ms)</div>
						<div class="num-cart-item">Số lượng: 2</div>
						<div class="price-cart-item">5.620.000đ</div>
					</div>
				</div>
			</div>
		</div>
		<div id="content1">
			<div class="title-pro-all">
				<div class="logo-lap"
					style="background-image: url('../image/logo-laptop/msi.png')"></div>
				<!--        <h1 class="title-all-product-item">MSI</h1>-->
				<span>TRUE GAMING. SOME ARE PC, WE ARE GAMING</span>
			</div>
			<div class="filter-product">
				<div class="title-filter-product">
					<div style="border-left: 3px solid #111111; padding-left: 8px">Bộ
						lọc</div>
				</div>
				<div class="filter">
					<div class="title-filter">Thương hiệu</div>
					<div class="filter-items">
						<div class="filter-item">
							DELL
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							MSI
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							LENOVO
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							ACER
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							ASUS
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							HP
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="filter">
					<div class="title-filter">Màu sắc</div>
					<div class="filter-items">
						<div class="filter-item">
							Đen
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Xám
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Bạc
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Vàng hồng
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="filter">
					<div class="title-filter">Series CPU</div>
					<div class="filter-items">
						<div class="filter-item">
							Core i5
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Core i7
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Ryzen 7
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Core i3
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Ryzen 5
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Ryzen 9
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Core i9
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>

					</div>
				</div>
				<div class="filter">
					<div class="title-filter">Dung lượng RAM</div>
					<div class="filter-items">
						<div class="filter-item">
							4GB
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							8GB
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							16GB
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							32GB
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="filter">
					<div class="title-filter">Series CPU</div>
					<div class="filter-items">
						<div class="filter-item">
							Vostro
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Latitude
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Inspiron
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
						<div class="filter-item">
							Gaming
							<div class="tick">
								<i class="fas fa-check" style="position: absolute; left: 7px"></i>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="filter-another">
				<div class="title-filter">Sắp xếp theo</div>
				<div class="filter-items">
					<!--                <div class="filter-item-another">Bán chạy-->
					<!--                    <div class="tick tick-another"><i class="fas fa-check" style="position: absolute;  left: 7px"></i></div>-->
					<!--                </div>-->
					<div class="filter-item-another">
						Giá giảm dần
						<div class="tick tick-another">
							<i class="fas fa-check" style="position: absolute; left: 7px"></i>
						</div>
					</div>
					<div class="filter-item-another">
						Giá tăng dần
						<div class="tick tick-another">
							<i class="fas fa-check" style="position: absolute; left: 7px"></i>
						</div>
					</div>
					<div class="price-filter">
						<div class="filter-item-another" style="cursor: auto">
							<input class="input-filter-product" placeholder="Giá thấp nhất">
						</div>
						<span style="line-height: 2; text-align: center">-</span>
						<div class="filter-item-another" style="cursor: auto">
							<input class="input-filter-product" placeholder="Giá cao nhất">
						</div>
					</div>
					<button class="btn-search-filter">Tìm</button>

				</div>
			</div>
			
		
			
			<div class="cover-all-product">

				<div class="all-product-cover">
				<c:forEach items="${listProduct}" var="p">
					<div class="hover-all-product">
						
						<a class="all-product-item" href="../detailProduct?pid=${p.productID}">
							<div class="status-sale">0%</div>
							
							<div class="img-all-product-item"
								style="background-image: url(${p.productImage})">								
							</div>
							<div class="status">CÒN HÀNG</div>
							<div class="infor-all-product-item">${p.productName}</div>
							<div class="price-all-product-item">${p.getPriceCurrencyFormat()}</div>
							<div class="sale-all-product-item">
								<span class="origin-price">${p.getPriceCurrencyFormat()}</span> <span>0%</span>
							</div>		
							</a>							 							
					</div>
					</c:forEach>
				</div>
				<div class="clearfix">
                    <ul class="pagination">
                	<c:if test="${tag>1 }">
                		<li class="page-item "><a href="../allProduct?index=${tag-1}">Previous</a></li>
                	</c:if>
                    
                    <c:forEach begin="1" end="${endP}" var="a">
                        <li class="page-item ${tag == a ? 'active' : ''}">
				            <a href="../allProduct?index=${a}" class="page-link">${a}</a>
				        </li>
                    </c:forEach>
                    <c:if test="${tag < endP }">
                		<li class="page-item"><a href="../allProduct?index=${tag+1}" class="page-link">Next</a></li>
                	</c:if>
                </ul>
                </div>
			</div>

			
			<div class="dots-slick"></div>
		</div>
		<div id="footer">
			<div class="footer-main">
				<div class="footer-element">
					<a class="footer-icon" href="https://github.com/sktmaneytri"
						target="_blank"><i class="fab fa-github"></i></a> <a
						class="footer-icon" href="" target="_blank"><i
						class="fas fa-globe-asia"></i></a> <a class="footer-icon" href=""
						target="_blank"><i class="fas fa-users"></i></a>
					<p class="copyright">Powered by ManeyTris © Student of the HCMC
						University of Technology and Education</p>
					<p class="copyright">Copyright © 2023 Maney Inc. All rights
						reserved.</p>
				</div>
			</div>
		</div>
	</div>
<div class="js-login" id="login-main" style="z-index: 1000">
    <div class="login js-login-container">
        <div class="title-login">
            <a class="close-login" role="button"></a>
            <h1 class="title-login-main">Đăng nhập</h1>
            <p class="slogan-login">Hãy tham gia cùng chúng tôi</p>
        </div>
        <div class="border"></div>
        <form action="/FinalProject/login" class="login-form" method='post'>
            <div class="input-login">
                <input class="input-items" name='username' placeholder="Tên đăng nhập" required type="text">
                <input class="input-items" name='password' placeholder="Mật khẩu" required type="password">
                <label>Remember me </label>
			 	<input type='checkbox' name='remember'  value="true">
            </div>
            <button class="btn-login">Đăng nhập</button>
        </form>
        <div class="forgot-pass-main">
            <a class="forgot-pass js-forgot-pass" role="button">Quên mật khẩu</a>
        </div>
        <div class="forgot-pass-main">
            <a class="forgot-pass js-forgot-pass" href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile%20openid&redirect_uri=http://localhost:8088/FinalProject/LoginGoogleHandler&response_type=code
		   &client_id=65874880585-drm7k6uedo8thspah0br61v499dk4vrr.apps.googleusercontent.com&approval_prompt=force" role="button">Đăng nhập bằng tài khoản google</a>
        </div>
        <div class="border"></div>
        <div class="new-account">
            <a class="btn-new-account js-new-account" role="button">Tạo tài khoản mới</a>
        </div>
    </div>
</div>
<div class="js-forgot" id="forgot-main" style="z-index: 1000">
    <div class="forgot js-forgot-container">
        <div class="title-forgot">
            <a class="close-forgot" role="button"></a>
            <h1 class="title-forgot-main">Quên mật khẩu</h1>
            <p class="slogan-forgot">Chúng tôi sẽ hỗ trợ tận tình</p>
        </div>
        <div class="border"></div>
        <form action="/FinalProject/forget-password" class="forgot-form" method="post">
            <div class="input-forgot">
                <input class="input-items" name="username" placeholder="Tên đăng nhập" required type="text">
                <input class="input-items" name="email" placeholder="Email" required type="email">
            </div>
            <button class="btn-forgot">Tìm tài khoản</button>
        </form>
        <div class="border"></div>
        <div class="come-back">
            <a class="btn-come-back js-come-back" role="button">Quay trở lại đăng nhập</a>
        </div>
    </div>
</div>
<div class="js-register" id="register-main" style="z-index: 1000">
    <div class="register js-register-container">
        <div class="title-register">
            <a class="close-register js-close-icon" role="button"><i class="fas fa-times"></i></a>
            <h1 class="title-register-main" style="margin: 0; line-height: 1.4;">Đăng kí</h1>
            <p class="slogan-register">Nhanh chóng và dễ dàng</p>
        </div>
        <div class="border"></div>
	        <form action="/FinalProject/register" class="register-form" style="max-width: 500px; margin: 0 auto;">
	    <div class="input-register">
	        <input class="input-items" placeholder="First name" name="firstname" required type="text" style="width: 48%; margin-right: 4%;">
	        <input class="input-items" placeholder="Last name" name="lastname" required type="text" style="width: 48%;">
	        <br><br>
	        <input class="input-items" placeholder="Username" name="username" required type="text" style="width: 100%;">
	        <br><br>
	        <input class="input-items" placeholder="Password" name="password" required type="password" style="width: 100%;">
	        <br><br>
	        <input class="input-items" placeholder="Address" name="address" required type="text" style="width: 100%;">
	        <br><br>
	        <label for="role" style="display: block; font-weight: bold;">Role:</label>
	        <select id="role" name="role" required style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 3px; margin-bottom: 20px;">
	            <option value="">Select a role</option>
	            <option value="customer">Customer</option>
	            <option value="seller">Seller</option>
	        </select>
	        <input class="input-items" placeholder="Email" name="email" required type="email" style="width: 100%;">
	        <br><br>
	        <input class="input-items" placeholder="Phone" name="phone" required type="text" style="width: 100%;">
	    </div>
	    <div class="register-div">
	        <button class="btn-login" style="background-color: #4CAF50; color: #ffffff; border: none; padding: 10px 20px; border-radius: 3px; cursor: pointer;">Đăng kí</button>
	    </div>
		</form>
    </div>
</div>
	<!--Back to top-->
	<button id="myBtn">&#8593;</button>
</body>
<script src="../js/register.js"></script>
<script src="../js/register.js"></script>
<script crossorigin="anonymous"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script crossorigin="anonymous"
	integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
	referrerpolicy="no-referrer"
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="../js/nav-responsive.js"></script>
<script src="../js/BackToTop.js"></script>
<script src="../js/Scroll-Indicator.js"></script>
<script src="../js/visibleCart.js"></script>
<script src="../js/slick-all-product.js"></script>
<script src="../js/click-filter.js"></script>
</html>