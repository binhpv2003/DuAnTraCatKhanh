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
    <title>Home | E-Shopper</title>
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

<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>

                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h2>Trà Cát Khánh</h2>
                                <h3> Trà San Tuyết: Hương vị tinh tế từ dãy núi cao</h3>
                                <p>Với mùi hương nồng nàn, hương vị tinh tế và sự thanh khiết của nước trà,
                                    San Tuyết là một trải nghiệm đích thực cho những người muốn thư giãn và tận hưởng
                                    hương vị tự nhiên. Hãy cùng chúng tôi khám phá thế giới của trà San Tuyết, nơi mà
                                    tất cả những điều tốt đẹp nhất của thiên nhiên được đúc kết vào từng cốc đầy ấm
                                    áp. </p>
                                <button type="button" class="btn btn-default get">Đến Shop</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="images/home/banner3.webp" class="girl img-responsive" alt=""/>

                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h2>Trà Cát Khánh</h2>
                                <h3>Hòa Quyện Hương Vị và Tâm Hồn</h3>
                                <p> Với mục tiêu mang đến cho khách hàng những trải nghiệm trà tuyệt vời nhất, chúng tôi
                                    tự hào về quy trình sản xuất trà tỉ mỉ, từ việc chọn lựa những búp trà tươi ngon tới
                                    quá trình xử lý tinh tế và đóng gói cẩn thận.
                                    Đội ngũ chuyên gia và những người yêu trà tại Cát Khánh luôn nỗ lực để tạo ra những
                                    sản phẩm độc đáo và đẳng cấp.. </p>
                                <button type="button" class="btn btn-default get">Đến Shop</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="images/home/banner2.webp" class="girl img-responsive" alt=""/>

                            </div>
                        </div>
                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Danh Mục</h2>
                    <div class="panel-group category-products active" id="accordian"><!--category-productsr-->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#tra">
                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        Trà Thảo Mộc
                                    </a>
                                </h4>
                            </div>
                            <div id="tra" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="#">Trà Dưỡng Nhan</a></li>
                                        <li><a href="#">Trà Giảm Stress</a></li>
                                        <li><a href="#">Trà Làm Ấm Cơ Thể</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#">Trà San Tuyết</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                        Trà Cụ
                                    </a>
                                </h4>
                            </div>
                            <div id="mens" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul>
                                        <li><a href="#">Ấm Pha Trà</a></li>
                                        <li><a href="#">Dụng Cụ Pha Trà</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div><!--/category-products-->


                    <div class="price-range"><!--price-range-->
                    <h2>Lọc Theo Giá</h2>
                    <div class="well text-center">
                        <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600"
                               data-slider-step="5" data-slider-value="[250,450]" id="sl2"><br/>
                        <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                    </div>
                </div><!--/price-range-->
                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->

                    <h2 class="title text-center">Sản Phẩm Nổi Bật</h2>
                   <c:forEach items="${listSanPham}" var="sp">
                       <div class="col-sm-4">
                           <div class="product-image-wrapper">
                               <div class="single-products">
                                   <div class="productinfo text-center">
                                       <img src="${sp.hinhAnh}" alt=""/>
                                       <h2><fmt:formatNumber value="${sp.giaBan}" type="number" pattern="###,### VNĐ" /></h2>
                                       <p>${sp.tenSp}</p>
                                       <a href="#" class="btn btn-default add-to-cart"><i
                                               class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng</a>
                                   </div>
                                   <div class="product-overlay">
                                       <div class="overlay-content">
                                           <h2><fmt:formatNumber value="${sp.giaBan}" type="number" pattern="###,### VNĐ" /></h2>
                                           <p>${sp.tenSp}</p>
                                           <a href="/add/${sp.id}" class="btn btn-default add-to-cart"><i
                                                   class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng</a>
                                       </div>
                                   </div>
                               </div>
                               <div class="choose">
                                   <ul class="nav nav-pills nav-justified">

                                       <li><a href="#"> <i
                                               class="fa-solid fa-eye"></i>Xem Chi Tiết</a></li>
                                   </ul>
                               </div>
                           </div>
                       </div>
                   </c:forEach>
                </div><!--features_items-->


                <div class="recommended_items"><!--recommended_items-->
                    <h2 class="title text-center">Bài Viết Mới Nhất</h2>
                    <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post1.webp" alt=""/>
                                                <h2>Quà tặng trung thu ý nghĩa 2023 – Nam Quốc Nhất Phẩm Trà</h2>
                                                <p>Bình yên đôi khi là những nụ cười ấm áp bên chén trà thơm,
                                                    hạnh...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>Quà tặng trung thu ý nghĩa 2023 – Nam Quốc Nhất Phẩm Trà</h2>
                                                    <p>Bình yên đôi khi là những nụ cười ấm áp bên chén trà thơm,
                                                        hạnh...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post2.png" alt=""/>
                                                <h2>Quà tặng trung thu – Xu hướng tặng trà Shan Tuyết cao cấp</h2>
                                                <p>Quà tặng trung thu không chỉ là món quà vật chất đơn giản, mà
                                                    đó...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <img src="images/home/post2.png" alt=""/>
                                                    <h2>Quà tặng trung thu – Xu hướng tặng trà Shan Tuyết cao cấp</h2>
                                                    <p>Quà tặng trung thu không chỉ là món quà vật chất đơn giản, mà
                                                        đó...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post3.webp" alt=""/>
                                                <h2>Trà trung thu – Món quà sức khỏe cho người thân</h2>
                                                <p>Trung thu là một dịp quan trọng để các thành viên trong gia đình
                                                    ngồi...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>Trà trung thu – Món quà sức khỏe cho người thân</h2>
                                                    <p>Trung thu là một dịp quan trọng để các thành viên trong gia đình
                                                        ngồi...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post4.webp" alt=""/>
                                                <h2>Trà Shan Tuyết – quà Trung Thu cho đối tác đẳng cấp, ý nghĩa</h2>
                                                <p>Văn hóa biếu tặng quà trung thu cho đối tác từ lâu đã là là...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>Trà Shan Tuyết – quà Trung Thu cho đối tác đẳng cấp, ý
                                                        nghĩa</h2>
                                                    <p>Văn hóa biếu tặng quà trung thu cho đối tác từ lâu đã là
                                                        là...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post5.webp" alt=""/>
                                                <h2>Ăn bánh trung thu nên uống loại trà nào cho hợp?</h2>
                                                <p>Thói quen trong việc ăn bánh trung thu – thưởng trà vào mỗi dịp
                                                    tết...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>Ăn bánh trung thu nên uống loại trà nào cho hợp?</h2>
                                                    <p>Thói quen trong việc ăn bánh trung thu – thưởng trà vào mỗi dịp
                                                        tết...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/post6.webp" alt=""/>
                                                <h2>Các dòng trà trung thu cao cấp tại Điểm trà 37</h2>
                                                <p>Điểm trà 37 tự hào là địa điểm cung cấp phẩm trà trung thu cao...</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i
                                                        class="fa-solid fa-eye"></i>Xem Thêm</a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2>Các dòng trà trung thu cao cấp tại Điểm trà 37</h2>
                                                    <p>Điểm trà 37 tự hào là địa điểm cung cấp phẩm trà trung thu
                                                        cao...</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i
                                                            class="fa-solid fa-eye"></i></i>Xem Thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>

                </div><!--/recommended_items-->

            </div>
        </div>
    </div>
</section>

<jsp:include page="template/footer.jsp"/>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>