<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Trà Cát Khánh</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
<jsp:include page="template/header.jsp"/>


<section>
    <div class="container">
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Trang Chủ</a></li>
                        <li class="active">Giỏ Hàng</li>
                    </ol>
                </div>
                <c:if test="${tinhTrang==false}">
                    <div class="table-responsive cart_info">

                        <table class="table table-condensed">
                            <thead>
                            <tr class="cart_menu">
                                <td class="image">Hình Ảnh</td>
                                <td class="description">Tên Sản Phẩm</td>
                                <td class="price">Giá</td>
                                <td class="quantity">Số lượng</td>
                                <td class="total">Tổng Tiền</td>
                                <td>Hành Động</td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listGioHang}" var="gh">
                                <tr>
                                    <td class="cart_product">
                                        <img src="${gh.sanPham.hinhAnh}" alt="" style="width: 150px;">
                                    </td>
                                    <td class="cart_description">
                                        <p style="font-size: 20px">${gh.sanPham.tenSp}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p><fmt:formatNumber value="${gh.sanPham.giaBan}" type="number"
                                                             pattern="###,### VNĐ"/></p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">

                                            <form action="/update/${gh.id}" method="post">
                                                <input type="text" value="${gh.soLuong}" name="soLuong"
                                                       class="cart_quantity_input" autocomplete="off" size="2">
                                                <button class="btn btn-warning"><i
                                                        class="fa-solid fa-arrow-rotate-left"></i></button>
                                            </form>

                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price"><fmt:formatNumber
                                                value="${gh.sanPham.giaBan * gh.soLuong}" type="number"
                                                pattern="###,### VNĐ"/></p>
                                    </td>
                                    <td>

                                        <a class="btn btn-danger" href="/remove/${gh.id}">Xóa</a>
                                    </td>
                                </tr>
                            </c:forEach>


                            </tbody>

                        </table>
                        <div style="float: right;margin-bottom: 30px">
                            <h4>Thành Tiền: <strong class="text-danger"><fmt:formatNumber value="${tongTien}" type="number"
                                                                                          pattern="###,### VNĐ"/></strong></h4>
                            <a href="/checkout" class="btn btn-success">Thanh Toán</a>
                        </div>

                    </div>
                </c:if>

            </div>
            <c:if test="${tinhTrang==true}">
                <h2 class="text-center" style="margin-bottom: 50px;color:var(--main-color)"> Không có sản phẩm nào trong giỏ hàng</h2>
            </c:if>
        </section> <!--/#cart_items-->
    </div>
</section>

<jsp:include page="template/footer.jsp"/>


<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>