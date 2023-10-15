<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                        <li class="active">Thanh Toán</li>
                    </ol>
                </div>
                <h4>Thông Tin Thanh Toán</h4>
                <form:form action="/thanh-toan/add" method="post" modelAttribute="hd1">
                    <form:label path="">Mã Đơn Hàng:</form:label>
                    <form:input path="ma" class="form-control"/>
                    <form:errors path="ma" class="text-danger"/>

                    <form:label path="">Tên Người Nhận:</form:label>
                    <form:input path="tenNguoiNhan" class="form-control"/>
                    <form:errors path="tenNguoiNhan" class="text-danger"/>

                    <form:label path="">Số Điện Thoại:</form:label>
                    <form:input path="sdt" class="form-control"/>
                    <form:errors path="sdt" class="text-danger"/>

                    <form:label path="">Địa Chỉ:</form:label>
                    <form:input path="diaChi" class="form-control"/>
                    <form:errors path="diaChi" class="text-danger"/>
                    <form:button type="submit" class="btn btn-success " style="margin-top:10px">Thanh Toán</form:button>
                </form:form>


                <h4>Review & Payment</h4>
                <div class="table-responsive cart_info">

                    <table class="table table-condensed">
                        <thead>
                        <tr class="cart_menu">
                            <td class="image">Hình Ảnh</td>
                            <td class="description">Tên Sản Phẩm</td>
                            <td class="price">Giá</td>
                            <td class="quantity">Số lượng</td>
                            <td class="total">Tổng Tiền</td>

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
                                        <p class="cart_total_price">${gh.soLuong}</p>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price"><fmt:formatNumber
                                            value="${gh.sanPham.giaBan * gh.soLuong}" type="number"
                                            pattern="###,### VNĐ"/></p>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div style="float: right;margin-bottom: 30px">
                        <h4>Thành Tiền: <strong class="text-danger"><fmt:formatNumber value="${tongTien}" type="number"
                                                                                      pattern="###,### VNĐ"/></strong></h4>

                    </div>
                </div>
            </div>

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