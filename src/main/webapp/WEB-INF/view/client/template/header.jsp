<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
      crossorigin="anonymous" referrerpolicy="no-referrer"/>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0"
        nonce="DbvLU1u1"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills ">
                            <li><a href="#"><i class="fa fa-phone "></i> +84 3452622229</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> Binhpvph29510@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-google-plus-g"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="/trang-chu"><img src="images/home/logo.PNG" class="img-fluid" height="80px"
                                                  alt=""/></a>
                    </div>
                    <div class="btn-group pull-right">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="search_box">
                        <input type="text" placeholder="Search"/>
                        <button><i class="fa-solid fa-magnifying-glass"></i></button>

                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">

                            <c:if test="${checkLogin==true}">
                                <li>
                                    <div class="dropdown">
                                        <a href="#" class="nav-link text-white font-weight-bold px-0" role="button"
                                           id="dropdownMenuLink" data-toggle="dropdown"> <span
                                                class="d-sm-inline d-none"><i
                                                class="fa fa-user"></i>${tenAccount}</span></a>

                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item" href="/thong-tin-tai-khoan">Thông tin tài khoản</a>
                                            <br>
                                            <a class="dropdown-item" href="/logout">Đăng xuất</a>
                                        </div>
                                    </div>
                                </li>

                            </c:if>
                            <li><a href="/gio-hang"><i class="fa fa-shopping-cart"></i> <fmt:formatNumber value="${tongTien}" type="number" pattern="###,### VNĐ" /></a></li>
                            <c:if test="${checkLogin==false}">
                                <li><a href="/login"><i class="fa fa-lock"></i> Login</a></li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container text-center">
            <div class="row ">
                <div class="col-sm-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu ">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="/trang-chu" class="active">Trang Chủ</a></li>
                            <li class="dropdown"><a href="/shop">Cửa hàng<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="shop.html">Sản Phẩm</a></li>
                                    <li><a href="shop.html">Trà Cụ</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-us.html">Quà Tặng</a></li>
                            <li class="dropdown"><a href="#">Câu Chuyện<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="blog.html">Kiến Thức về Trà</a></li>
                                    <li><a href="blog-single.html">Đọc Sách</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-us.html">Liên Hệ</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div><!--/header-bottom-->
</header>
<!--/header-->