<%@page import="com.maneyshop.model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <title>Product</title>
    <title>Metaverse Laptop</title>
    <link rel="icon" href="../image/logo-re.png">
    <link href="../css/style-product.css" rel="stylesheet">
    <link href="../css/responsiveIndex.css" rel="stylesheet">
    <link href="../fonts/themify-icons/themify-icons.css" rel="stylesheet">
    <link href="../fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
          integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
          referrerpolicy="no-referrer" rel="stylesheet"/>
    <!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" integrity="sha512-17EgCFERpgZKcm0j0fEq1YCJuyAWdz9KUtv1EjVuaOz8pDnh/0nZxmU6BBXwaaxqoi9PQXnRWqlcDB027hgv9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
    <link crossorigin="anonymous" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
          integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
          referrerpolicy="no-referrer" rel="stylesheet"/>

    <link rel="stylesheet" href="../css/reponsiveProduct.css">
</head>

<body>

<div id="header">
    <a href="../index.jsp">
        <div class="header_logo">
            <!--                <img src="../image/img_1.png" alt="" class="logo">-->
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
                <a class="font-14 hover-header" href="all-product.jsp">
                    <i class="hover-header1 fas fa-laptop"></i>Sản phẩm
                </a>
            </li>
            <li class="header_sub-list">
                <a class="font-14 hover-header" href="tutorial-page.jsp">
                    <i class="hover-header1 fas fa-clipboard-check"></i>Hướng dẫn
                </a>
            </li>
            <li class="header_sub-list">
                <a class="font-14 hover-header" href="about-us.jsp">
                    <i class="hover-header1 fas fa-users"></i>Thông tin
                </a>
            </li>
            <li id="li-cart" class="header_sub-list">
                <a class="font-14 hover-header" href="cart.jsp">
                    <i class="hover-header1 fas fa-shopping-cart"></i>Giỏ hàng
                </a>
                <div id="icon-cart" class="icon-cart"></div>
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

<div id="cart-hover" class="hover-cart">
    <div class="cover-cart-item">
<!--        <div class="cart-item">-->
<!--            <div class="img-cart-item" style="background-image: url(../image/image99.png)">-->

<!--            </div>-->
<!--            <div class="details-cart-item">-->
<!--                <div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458 (1920 x 1080/IPS/60Hz/5 ms)</div>-->
<!--                <div class="num-cart-item">Số lượng: 2</div>-->
<!--                <div class="price-cart-item">5620000 đ</div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="cart-item">-->
<!--            <div class="img-cart-item" style="background-image: url(../image/image99.png)">-->

<!--            </div>-->
<!--            <div class="details-cart-item">-->
<!--                <div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458 (1920 x 1080/IPS/60Hz/5 ms)</div>-->
<!--                <div class="num-cart-item">Số lượng: 2</div>-->
<!--                <div class="price-cart-item">5620000 đ</div>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="cart-item">-->
<!--            <div class="img-cart-item" style="background-image: url(../image/image99.png)">-->

<!--            </div>-->
<!--            <div class="details-cart-item">-->
<!--                <div class="infor-cart-item">Màn hình LCD VIEWSONIC VP2458 (1920 x 1080/IPS/60Hz/5 ms)</div>-->
<!--                <div class="num-cart-item">Số lượng: 2</div>-->
<!--                <div class="price-cart-item">5620000 đ</div>-->
<!--            </div>-->
<!--        </div>-->

    </div>
    <div class="total-cart">
        <div class="total-price-infor">
            <div class="total-product"></div>
<!--            <div class="total-product">Tổng tiền (2) sản phẩm</div>-->
            <div class="total-price"></div>
        </div>
        <div role="button" class="btn-view-cart"><a href="cart.jsp" class="btn-tt">Xem giỏ hàng</a></div>
    </div>
</div>
<div id="view-image-product">
    <div id="close-view-image-product"><i class="fas fa-times"></i></div>
    <div class="big-image-view-product" style="background-image: url('../image/dell/dell1/dell1.png')"></div>
    <div class="items-image-view-product">
        <div class="item-image-view-product" style="background-image: url('../image/dell/dell1/dell1.png')"></div>
        <div class="item-image-view-product" style="background-image: url('../image/dell/dell1/dell2.png')"></div>
        <div class="item-image-view-product" style="background-image: url('../image/dell/dell1/dell3.png')"></div>
        <div class="item-image-view-product" style="background-image: url('../image/dell/dell1/dell4.png')"></div>
        <div class="item-image-view-product" style="background-image: url('../image/dell/dell1/dell5.png')"></div>
    </div>
</div>
<div id="product-page">
    <div id="content-product">
        <div class="infor-product">
            <div class="product-details">
                <div id="product-image" class="product-image" style='background-image: url("${product.productImage}")'></div>
                <div class="details-image">
                    <div class="details-image-item" style='background-image: url("${product.productImage}")'></div>
                    <div class="details-image-item" style="background-image: url('../image/dell/dell1/dell2.png')"></div>
                    <div class="details-image-item" style="background-image: url('../image/dell/dell1/dell3.png')"></div>
                    <div class="details-image-item" style="background-image: url('../image/dell/dell1/dell4.png')"></div>
                    <div class="details-image-item" style="background-image: url('../image/dell/dell1/dell5.png')"></div>
                </div>
            </div>
			<div class="product-sale">
                <h1 class="title-pro">${product.productName}</h1>
                <div class="trademark">Thương hiệu: ${product.productBrand}</div>
                <div class="price-product">${product.getPriceCurrencyFormat()}</div>
                <div class="border-pro"></div>
                <div class="BOXKHUYENMAILIENQUAN">
                    <div class="css-mz7xyg">Thông tin:</div>
                    ${product.productDes}
                    <ul>
                    	
                    	<!--  
                        <li> Kích thước: 23.8" (1920 x 1080), Tỷ lệ 16:9</li>
                        <li> Tấm nền IPS, Góc nhìn: 178 (H) / 178 (V)</li>
                        <li> Tần số quét: 60Hz , Thời gian phản hồi 5 ms</li>
                        <li> HIển thị màu sắc: 16.7 triệu màu</li>
                        <li> Cổng hình ảnh: 1 x DisplayPort 1.2a, 1 x HDMI 1.4, 1 x VGA/D-sub</li>
                        -->
                    </ul>
                </div>
                <div class="border-pro"></div>
                <div class="btn-pro">
                    <div class="mua-ngay"><a href="" class="btn-mua ripple">MUA NGAY</a> </div>
                    <div class="them-vao-gio"><a role="button" id="them-vao-gio"  class="btn-mua ripple" href="/FinalProject/cart?action=AddCart&code=${product.productID}&quantity=1&accountId=${account.id}">THÊM VÀO GIỎ HÀNG</a></div>
                </div>
            </div>

        </div>
        <div class="sale-policy">
            <div style="display:flex;margin-bottom: 8px">
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/free-ship.png')"></div>
<!--                <img src="../image/icon-product/free-ship.png" style="">-->
                <span style="margin: auto 0 auto 0">Sản phẩm được miễn phí giao hàng</span>
            </div>
            <div class="border-pro"></div>
            <div class="policy" type="subtitle">Chính sách bán hàng</div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/ship.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/ship.png')"></div>

                <span style="margin: auto 0 auto 0">Miễn phí giao hàng cho đơn hàng từ 800K</span>
            </div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/camket.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/camket.png')"></div>

                <span style="margin: auto 0 auto 0">Cam kết hàng chính hãng 100%</span>
            </div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/doitra.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/doitra.png')"></div>

                <span style="margin: auto 0 auto 0">Đổi trả trong vòng 10 ngày</span>
            </div>
            <div class="policy" type="subtitle">Dịch vụ khác</div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/suachua.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/suachua.png')"></div>

                <span style="margin: auto 0 auto 0">Sửa chữa đồng giá 150.000đ.</span>
            </div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/baotri.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/baotri.png')"></div>

                <span style="margin: auto 0 auto 0">Vệ sinh máy tính, laptop.</span>
            </div>
            <div style="display:flex;margin-bottom: 8px">
<!--                <img src="../image/icon-product/camket.png" style="margin-right: 3px;line-height:normal">-->
                <div class="img-sale-policy" style="background-image: url('../image/icon-product/camket.png')"></div>

                <span style="margin: auto 0 auto 0">Bảo hành tại nhà.</span>
            </div>
        </div>
    </div>
    <div id="container">
        <div class="body-content">
            <div>
                <div class="tabs">
                    <a class="tab active" href="#">Thông số kỹ thuật</a>
                </div>
                <div class="tab-contents">
                    <div class="tab-content active" data-tabidx="1">
                        <div class="row">
                            <div class="col-sm-12">
                                <table class="table-specs">
                                    <tbody>
                                    <tr>
                                        <td> CPU</td>
                                        <td> AMD Ryzen™ 5 5600H Processor (3.3GHz, 16MB Cache, Up to 4.2GHz, 6
                                            Cores, 12 Threads)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Memory</td>
                                        <td> 8GB DDr4 Bus 3200Mhz (2 Slot, 4GB x 02, Dual Chanel)</td>
                                    </tr>
                                    <tr>
                                        <td> Hard Disk</td>
                                        <td> 512GB PCIe® NVMe™ M.2 SSD (Support x 1 Slot SSD M2 PCIe)</td>
                                    </tr>
                                    <tr>
                                        <td> VGA</td>
                                        <td> NVIDIA® GeForce® GTX1650 with 4GB GDDR6 / AMD Radeon™ Graphics</td>
                                    </tr>
                                    <tr>
                                        <td> Display</td>
                                        <td> 16.1 inch Full HD (1920 x 1080) 144Hz IPS Micro Edge Anti Glare 250
                                            Nits
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Other</td>
                                        <td> HP Audio Boost B&amp;O Play, Webcam 720p, Backlit Keyboard,
                                            Multi-Format SD Media Card Reader, Headphone/ Microphone Combo, HDMI
                                            2.1, RJ-45, SuperSpeed USB Type A 5Gbps Signaling Rate, SuperSpeed USB
                                            Type A 5Gbps Signaling Eate (HP Sleep and Charge), SuperSpeed USB Type-C
                                            5Gbps Signaling Rate (DisplayPort™ 1.4, HP Sleep and Charge)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Wireless</td>
                                        <td> Intel Wi Fi 6 (802.11ax) + Bluetooth 5.1</td>
                                    </tr>
                                    <tr>
                                        <td> Battery</td>
                                        <td> 4 Cells 70 Whrs Battery</td>
                                    </tr>
                                    <tr>
                                        <td> Weight</td>
                                        <td> 2,40 Kg</td>
                                    </tr>
                                    <tr>
                                        <td> SoftWare</td>
                                        <td> Windows 10 Home SL 64bit</td>
                                    </tr>
                                    <tr>
                                        <td> Xuất xứ</td>
                                        <td> Brand New 100%, Hàng Phân Phối Chính Hãng Tại Việt Nam, Bảo Hành Chính
                                            Hãng
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> Màu sắc</td>
                                        <td> Mica Silver</td>
                                    </tr>
                                    <tr>
                                        <td> Bảo hành</td>
                                        <td> 12 tháng</td>
                                    </tr>
                                    <tr>
                                        <td> VAT</td>
                                        <td> Đã bao gồm VAT</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div>
                                    <br>
                                </div>
                            </div>
                        </div>
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
                        <div class="img-product-bestseller img-product-sell1"></div>
                        <div class="product-bestseller-name">
                            <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                            <div class="product-status">Còn 1 sản phẩm</div>
                        </div>
                        <div class="product-price">228.000 ₫</div>
                    </div>
                </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a><a class="click-action" href="">
                <div class="product-bestseller-items">
                    <div class="img-product-bestseller img-product-sell1"></div>
                    <div class="product-bestseller-name">
                        <div class="product-name">Đế tản nhiệt Laptop DEEPCOOL Windpal Mini</div>
                        <div class="product-status">Còn 1 sản phẩm</div>
                    </div>
                    <div class="product-price">228.000 ₫</div>
                </div>
            </a>
                <a class="click-action" href="">
                    <div class="product-bestseller-items">
                        <div class="img-product-bestseller  img-product-sell2"></div>
                        <div class="product-bestseller-name">
                            <div class="product-name">USB 64GB Kingston DT100G3</div>
                            <div class="product-status">Còn 5 sản phẩm</div>
                        </div>
                        <div class="product-price">229.000 ₫</div>
                    </div>
                </a>
                <a class="click-action" href="">
                    <div class="product-bestseller-items">
                        <div class="img-product-bestseller  img-product-sell3"></div>
                        <div class="product-bestseller-name">
                            <div class="product-name">USB 32GB SanDisk SDCZ73- G46 Ultra</div>
                            <div class="product-status">Còn 10 sản phẩm</div>
                        </div>
                        <div class="product-price">157.000 ₫</div>
                    </div>
                </a>
                <a class="click-action" href="">
                    <div class="product-bestseller-items">
                        <div class="img-product-bestseller  img-product-sell4"></div>
                        <div class="product-bestseller-name">
                            <div class="product-name">Box ổ cứng 2.5'' Orico 2588US3 Sata (3.0) (Đen)</div>
                            <div class="product-status">Còn 6 sản phẩm</div>
                        </div>
                        <div class="product-price">172.000 ₫</div>
                    </div>
                </a>
                <a class="click-action" href="">
                    <div class="product-bestseller-items">
                        <div class="img-product-bestseller  img-product-sell5"></div>
                        <div class="product-bestseller-name">
                            <div class="product-name">Box ổ cứng 2.5'' Orico 2588US3 Sata (3.0) (Bạc)</div>
                            <div class="product-status">Còn 4 sản phẩm</div>
                        </div>
                        <div class="product-price">172.000 ₫</div>
                    </div>
                </a>
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
<script crossorigin="anonymous" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script crossorigin="anonymous"
        integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
        referrerpolicy="no-referrer"
        src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
<!--<script src="../js/slider.js"></script>-->
<script src="../js/CartAtHover.js"></script>
<script src="../js/ripple-button.js"></script>
<script src="../js/product-bestseller.js"></script>
<script src="../js/nav-responsive.js"></script>
<script src="../js/BackToTop.js"></script>
<script src="../js/Scroll-Indicator.js"></script>
<script src="../js/visibleCart.js"></script>
<script src="../js/clickAddCart.js"></script>
<script src="../js/hover-product.js"></script>
<script src="../js/view-image-product.js"></script>
</html>