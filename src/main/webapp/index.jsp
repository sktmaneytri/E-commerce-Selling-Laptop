<%@page import="com.maneyshop.model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/tablib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Maney Shop</title>
    <link href="image/logo-re.png" rel="icon">
    <link href="css/style.css" rel="stylesheet">
    <link href="fonts/themify-icons/themify-icons.css" rel="stylesheet">
    <link href="fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
          integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <link href="css/responsiveIndex.css" rel="stylesheet">
</head>
<body>
<div id="main">
    <div id="header">
        <a href="home-login">
            <div class="header_logo">
                
            </div>
        </a>
        
        <form action="" class="header_search">
            <div class="search">
                <input class="header_input-search" placeholder="Nhập từ khóa cần tìm kiếm" required type="text">
                <button class="header_btn-search" role="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </form>
        <div class="header_list" id="header-list-id">
            <ul class="header_list-item">
                <li class="header_sub-list">
                    <a class="font-14 hover-header" href="/FinalProject/allProduct">
                        <i class="hover-header1 fas fa-laptop"></i>Sản phẩm
                    </a>
                </li>
                <li class="header_sub-list">
                    <a class="font-14 hover-header" href="html/tutorial-page.jsp">
                        <i class="hover-header1 fas fa-clipboard-check"></i>Hướng dẫn
                    </a>
                </li>
                <li class="header_sub-list">
                    <a class="font-14 hover-header" href="html/about-us.jsp">
                        <i class="hover-header1 fas fa-users"></i>Thông tin
                    </a>
                </li>
                <li class="header_sub-list" id="li-cart">
                    <a class="font-14 hover-header" href="/FinalProject/cart">
                        <i class="hover-header1 fas fa-shopping-cart"></i>Giỏ hàng
                    </a>
                    <div class="icon-cart" id="icon-cart"></div>
                </li>
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
                <div class="img-cart-item" style="background-image: url('image/dell/dell1/dell1.png')"></div>
                <div class="details-cart-item">
                    <div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458 (1920 x 1080/IPS/60Hz/5 ms)</div>
                    <div class="num-cart-item">Số lượng: 2</div>
                    <div class="price-cart-item">5.620.000đ</div>
                </div>
            </div>
        </div>
        <div class="total-cart">
            <div class="total-price-infor">
                <div class="total-product">Tổng tiền (2) sản phẩm</div>
                <div class="total-price">11.240.000đ</div>
            </div>
            <div class="btn-view-cart" role="button"><a class="btn-tt" href="html/cart.jsp">Xem giỏ hàng</a></div>
        </div>
    </div>
    <div id="slider">
        <div class="slider-image" style="background-image: url('image/slider/Slider-image1.jpg')"></div>
        <div class="slider-image" style="background-image: url('image/slider/Slider-image2.jpg')"></div>
        <div class="slider-image" style="background-image: url('image/slider/Slider-image3.jpg')"></div>
        <div class="slider-image" style="background-image: url('image/slider/Slider-image4.jpg')"></div>
        <div class="slider-image" style="background-image: url('image/slider/Slider-image5.jpg')"></div>
        <button class="btn-slider previous"><i class="fas fa-chevron-left"></i></button>
        <button class="btn-slider  next"><i class="fas fa-chevron-right"></i></button>
        <div class="slider-element">
            <div class="slider-items slider-left"></div>
            <div class="slider-items slider-center"></div>
            <div class="slider-items slider-right"></div>
        </div>
    </div>
    <div id="content">
        <div class="outstanding-brand">
            <div class="outstading-brand-main">
                <div class="title-outstanding">
                    <div class="border-outstanding"></div>
                    <div class="title-main">Thương hiệu nổi bật</div>
                </div>
                <div class="outstand-product">
                    <div class="outstand-product-items">
                        <a class="click-css" href="">
                            <div class="img-outstand outstand1">
                            </div>
                        </a>
                        <div class="title-outstand">Lenovo</div>
                    </div>
                    <div class="outstand-product-items">
                        <a class="click-css" href="">
                            <div class="img-outstand outstand2">

                            </div>
                        </a>
                        <div class="title-outstand">Asus</div>
                    </div>
                    <div class="outstand-product-items">
                        <a class="click-css" href="">
                            <div class="img-outstand outstand3">

                            </div>
                        </a>
                        <div class="title-outstand">Msi</div>
                    </div>
                    <div class="outstand-product-items">
                        <a class="click-css" href="">
                            <div class="img-outstand outstand4"></div>
                        </a>
                        <div class="title-outstand">HP</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product">
            <div class="product-biggest">
                <div class="product-item-big">
                    <div class="title-product">
                        <div class="border-product"></div>
                        <div class="title-main-product">DELL (Don't go there. Go to Dell.)</div>
                        <a class="view-all" href="html/all-product.jsp">Xem tất cả <i
                                class="fas fa-angle-right"></i></a>
                    </div>
                    <div class="product-cover">
                        <div style="overflow: hidden; border-radius: 0 0 0 10px">
                            <a class="product-hover-selling" href="">
                                <div class="product-selling"
                                     style="background-image: url('image/poster/dell/dell.png')"></div>
                            </a></div>
                        <div class="product-item-cover">
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-top1">
                                    <div class="title-product-item">
                                        DELL VOSTRO 14 3405
                                    </div>
                                    <div class="slogan-item">
                                        15.000.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell1/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-top2">
                                    <div class="title-product-item">
                                        DELL INSPIRON 15 3511
                                    </div>
                                    <div class="slogan-item">
                                        16.500.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell2/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-bottom1">
                                    <div class="title-product-item">
                                        DELL INSPIRON 14 5410
                                    </div>
                                    <div class="slogan-item">
                                        18.900.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell3/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-bottom2">
                                    <div class="title-product-item">
                                        DELL ALIENWARE M15 R6
                                    </div>
                                    <div class="slogan-item">
                                        23.960.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell4/dell1.png')"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-biggest">
                <div class="product-item-big">
                    <div class="title-product">
                        <div class="border-product"></div>
                        <div class="title-main-product">DELL (Don't go there. Go to Dell.)</div>
                        <a class="view-all" href="html/all-product.jsp">Xem tất cả <i
                                class="fas fa-angle-right"></i></a>
                    </div>
                    <div class="product-cover">
                        <div style="overflow: hidden; border-radius: 0 0 0 10px">
                            <a class="product-hover-selling" href="">
                                <div class="product-selling"
                                     style="background-image: url('image/poster/dell/dell.png')"></div>
                            </a></div>
                        <div class="product-item-cover">
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-top1">
                                    <div class="title-product-item">
                                        DELL VOSTRO 14 3405
                                    </div>
                                    <div class="slogan-item">
                                        15.000.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell1/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-top2">
                                    <div class="title-product-item">
                                        DELL INSPIRON 15 3511
                                    </div>
                                    <div class="slogan-item">
                                        16.500.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell2/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-bottom1">
                                    <div class="title-product-item">
                                        DELL INSPIRON 14 5410
                                    </div>
                                    <div class="slogan-item">
                                        18.900.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell3/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-bottom2">
                                    <div class="title-product-item">
                                        DELL ALIENWARE M15 R6
                                    </div>
                                    <div class="slogan-item">
                                        23.960.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell4/dell1.png')"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-biggest">
                <div class="product-item-big">
                    <div class="title-product">
                        <div class="border-product"></div>
                        <div class="title-main-product">DELL (Don't go there. Go to Dell.)</div>
                        <a class="view-all" href="html/all-product.jsp">Xem tất cả <i
                                class="fas fa-angle-right"></i></a>
                    </div>
                    <div class="product-cover">
                        <div style="overflow: hidden; border-radius: 0 0 0 10px">
                            <a class="product-hover-selling" href="">
                                <div class="product-selling"
                                     style="background-image: url('image/poster/dell/dell.png')"></div>
                            </a></div>
                        <div class="product-item-cover">
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-top1">
                                    <div class="title-product-item">
                                        DELL VOSTRO 14 3405
                                    </div>
                                    <div class="slogan-item">
                                        15.000.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell1/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-top2">
                                    <div class="title-product-item">
                                        DELL INSPIRON 15 3511
                                    </div>
                                    <div class="slogan-item">
                                        16.500.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell2/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-bottom1">
                                    <div class="title-product-item">
                                        DELL INSPIRON 14 5410
                                    </div>
                                    <div class="slogan-item">
                                        18.900.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell3/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-bottom2">
                                    <div class="title-product-item">
                                        DELL ALIENWARE M15 R6
                                    </div>
                                    <div class="slogan-item">
                                        23.960.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell4/dell1.png')"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-biggest">
                <div class="product-item-big">
                    <div class="title-product">
                        <div class="border-product"></div>
                        <div class="title-main-product">DELL (Don't go there. Go to Dell.)</div>
                        <a class="view-all" href="html/all-product.jsp">Xem tất cả <i
                                class="fas fa-angle-right"></i></a>
                    </div>
                    <div class="product-cover">
                        <div style="overflow: hidden; border-radius: 0 0 0 10px">
                            <a class="product-hover-selling" href="">
                                <div class="product-selling"
                                     style="background-image: url('image/poster/dell/dell.png')"></div>
                            </a></div>
                        <div class="product-item-cover">
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-top1">
                                    <div class="title-product-item">
                                        DELL VOSTRO 14 3405
                                    </div>
                                    <div class="slogan-item">
                                        15.000.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell1/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-top2">
                                    <div class="title-product-item">
                                        DELL INSPIRON 15 3511
                                    </div>
                                    <div class="slogan-item">
                                        16.500.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell2/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items border-item-bottom1">
                                    <div class="title-product-item">
                                        DELL INSPIRON 14 5410
                                    </div>
                                    <div class="slogan-item">
                                        18.900.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell3/dell1.png')">

                                    </div>
                                </div>
                            </a>
                            <a class="product-hover-items" href="html/product-page.jsp">
                                <div class="product-items  border-item-bottom2">
                                    <div class="title-product-item">
                                        DELL ALIENWARE M15 R6
                                    </div>
                                    <div class="slogan-item">
                                        23.960.000 VND
                                    </div>
                                    <div class="img-product-item"
                                         style="background-image: url('image/dell/dell4/dell1.png')"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bestseller">
            <div class="bestseller-main">
                <div class="title-bestseller">
                    <div class="border-bestseller"></div>
                    <div class="title-main-bestseller">Bán chạy nhất</div>
                    <a class="view-all-bestseller" href="">Xem tất cả <i class="fas fa-angle-right"></i></a>
                </div>
                <div class="product-bestseller">
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/gigabyte/gigabyte/unnamed (5).png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                    <a class="click-action" href="">
                        <div class="product-bestseller-items">
                            <div class="img-product-bestseller" style="background-image: url('image/img_11.png')"></div>
                            <div class="product-bestseller-name">
                                <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                                <div class="product-status">Còn 1 sản phẩm</div>
                            </div>
                            <div class="product-price">228.000 ₫</div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="footer">
        <div class="footer-main">
            <div class="footer-element">
                <a class="footer-icon" href="https://github.com/sktmaneytri" target="_blank"><i
                        class="fab fa-github"></i></a>
                <a class="footer-icon" href="" target="_blank"><i class="fas fa-globe-asia"></i></a>
                <a class="footer-icon" href="" target="_blank"><i class="fas fa-users"></i></a>
                <p class="copyright">Powered by ManeyTris © Student of the HCMC University of Technology and Education</p>
                <p class="copyright">Copyright © 2023 Maney Inc. All rights reserved.</p>
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
        <form action="/FinalProject/home-login" class="login-form" method='post'>
            <div class="input-login">
                <input class="input-items" name='username' placeholder="Tên đăng nhập" type="text">
                <input class="input-items" name='password' placeholder="Mật khẩu" type="password">
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
        <form action="/FinalProject/forget-password?action=checkemail" class="forgot-form" method="post">
            <div class="input-forgot">
            <p class="card-text py-2">
            Enter your email address and we'll send you an email with instructions to reset your password.
       		</p>
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
<script src="js/register.js"></script>
<script src="js/register.js"></script>
<script crossorigin="anonymous" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script crossorigin="anonymous"
        integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
        referrerpolicy="no-referrer"
        src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<script src="js/slider.js"></script>
<script src="js/product-bestseller.js"></script>
<script src="js/nav-responsive.js"></script>
<script src="js/BackToTop.js"></script>
<script src="js/Scroll-Indicator.js"></script>
<script src="js/visibleCart.js"></script>
</html>