<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png">
    <link rel="icon" type="image/png" href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png">
    <title>
        Argon Dashboard 2 by Creative Tim
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet"/>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body class="g-sidenav-show   bg-gray-100">
<div class="min-height-300 bg-primary position-absolute w-100"></div>
<jsp:include page="template/asideMain.jsp"/>
<main class="main-content position-relative border-radius-lg ">

    <!-- Navbar -->
    <jsp:include page="template/navMain.jsp"/>
    <!-- End Navbar -->

    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card mb-4">
                    <div class="card-header pb-0 d-flex justify-content-between">
                        <h6>Thêm Sản Phẩm</h6>
                        <a class="btn btn-primary" href="/admin/quan-ly-san-pham" >Quay Lại</a>
                    </div>

                    <div class="card-body px-0 pt-0" >

                       <form:form class="row form-group d-flex justify-content-center p-3" action="/admin/add" method="post" modelAttribute="sp1">
                           <div class="col-md-6">
                            <form:label path="" style="font-size:15px">Hình Ảnh:</form:label>
                               <form:input path="hinhAnh" class="form-control"/>
                               <form:errors path="hinhAnh" class="text-danger"/>


                               <form:label path="" style="font-size:15px">Mã SP:</form:label>
                               <form:input path="maSp" class="form-control" />
                               <form:errors path="maSp" class="text-danger"/>

                               <form:label path="" style="font-size:15px">Tên SP:</form:label>
                               <form:input path="tenSp" class="form-control" />
                               <form:errors path="tenSp" class="text-danger"/>

                               <form:label path="" style="font-size:15px">Hạn SD:</form:label>
                               <form:input path="hanSD" class="form-control" type="number"/>
                               <form:errors path="hanSD" class="text-danger"/>

                               <form:label path="" style="font-size:15px">Giá Nhập:</form:label>
                               <form:input path="giaNhap" class="form-control" type="number"/>
                               <form:errors path="giaNhap" class="text-danger"/>

                               <form:label path="" style="font-size:15px">Giá Bán:</form:label>
                               <form:input path="giaBan" class="form-control" type="number"/>
                               <form:errors path="giaBan" class="text-danger"/>
                           </div>
                           <div class="col-md-6">


                               <form:label path="" style="font-size:15px">Số Lượng:</form:label>
                               <form:input path="soLuong" class="form-control" type="number"/>
                               <form:errors path="soLuong" class="text-danger"/>

                               <form:label path="" style="font-size:15px">Mô Tả:</form:label>
                               <form:textarea path="moTa" class="form-control"/>
                               <form:errors path="moTa" class="text-danger" rows="10"/>

                               <form:label path="" style="font-size:15px">Danh Mục:</form:label>
                               <div class="d-flex" style="height: 43px">
                                   <form:select path="dm" class="form-control">
                                       <form:options items="${listDanhMuc}" itemLabel="ten"/>
                                   </form:select>
                                   <a href="/admin/danh-muc" class="btn btn-primary" style="height: 43px;margin-left: 5px"><i class="fa-solid fa-plus"></i></a>
                               </div>


                               <form:label path="" style="font-size:15px">Nhà Sản Xuất:</form:label>
                               <div class="d-flex" style="height: 43px">
                                   <form:select path="nsx" class="form-control">
                                       <form:options items="${listNsx}" itemLabel="ten"/>
                                   </form:select>
                                   <a href="/admin/nsx" class="btn btn-primary" style="height: 43px;margin-left: 5px"><i class="fa-solid fa-plus"></i></a>
                               </div>

                               <form:label path="" style="font-size:15px">Trạng Thái:</form:label> <br>
                              <form:checkbox path="trangThai" />Ngừng Bán?
                           </div>
                           <form:button class="btn btn-primary mt-5" type="submit">Thêm Sản Phẩm</form:button>

                       </form:form>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer pt-3">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-lg-between">
                    <div class="col-lg-6 mb-lg-0 mb-4">
                        <div class="copyright text-center text-sm text-muted text-lg-start">
                            ©
                            <script>
                                document.write(new Date().getFullYear())
                            </script>
                            ,
                            made with <i class="fa fa-heart"></i> by
                            <a href="https://www.facebook.com/PhamVanBinh2023" class="font-weight-bold" target="_blank">Phạm
                                Văn Bình</a>
                            for a better web.
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</main>


<jsp:include page="template/tienich.jsp"/>

<!--   Core JS Files   -->
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>