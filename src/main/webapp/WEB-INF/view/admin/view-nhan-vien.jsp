<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="./assets/img/favicon.png">
    <title>
        Trang Quản Trị Cát Khánh
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
                        <h6>Quản Lý Nhân Viên</h6>
                        <a class="btn btn-primary" href="/admin/nhan-vien/view-add">Thêm Mới</a>
                    </div>

                    <div class="card-body px-0 pt-0">

                        <div class="form-group row" style="padding: 0 20px">




                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Lọc theo trạng thái&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-nho">Hoạt Động</option>
                                    <option value="lap-xuong-tuoi">Ngừng Hoạt Động</option>

                                </select>
                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-primary">Lọc</button>
                            </div>
                            <div class="col-sm-4" style="">
                                <form action="">
                                    <input type="text" placeholder="Nhập nhân viên" class="form-control">
                                </form>
                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-primary">Tìm Kiếm</button>
                            </div>
                        </div>

                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0">
                                <thead>
                                <tr>
                                    <th class="text-center opacity-7 text-uppercase">#</th>
                                    <th class="text-center opacity-7 text-uppercase">Mã Nhân Viên</th>
                                    <th class="text-center opacity-7 text-uppercase">Họ và Tên</th>
                                    <th class="text-center opacity-7 text-uppercase">Giới Tính</th>
                                    <th class="text-center opacity-7 text-uppercase">Ngày Sinh</th>
                                    <th class="text-center opacity-7 text-uppercase">Địa Chỉ</th>
                                    <th class="text-center opacity-7 text-uppercase">SĐT</th>
                                    <th class="text-center opacity-7 text-uppercase">Chức Vu</th>
                                    <th class="text-center opacity-7 text-uppercase">Trạng Thái</th>
                                    <th class="text-center opacity-7 text-uppercase">Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${listNhanVien}" var="nv" varStatus="loop">
                                    <tr>
                                        <td class="text-center">${loop.index}</td>
                                        <td class="text-center">${nv.ma}</td>
                                        <td class="text-center">${nv.ho} ${nv.tenDem} ${nv.ten}</td>
                                        <td class="text-center">${nv.gioiTinh==true?"Nam":"Nữ"}</td>
                                        <td class="text-center">${nv.ngaySinh}</td>
                                        <td class="text-center">${nv.diaChi}</td>
                                        <td class="text-center">${nv.sdt}</td>
                                        <td class="text-center">${nv.cv.ten}</td>
                                        <td class="text-center">${nv.trangThai==true?"Ngừng Hoạt Động":"Hoạt Động"}</td>
                                        <td class="text-center">
                                            <a href="/admin/nhan-vien/view-update/${nv.id}" class="btn btn-warning">Update</a>
                                            <c:if test="${nv.trangThai==false}">
                                                <a href="/admin/nhan-vien/remove/${nv.id}" class="btn btn-danger">Remove</a>
                                            </c:if>
                                            <c:if test="${nv.trangThai==true}">
                                                <a href="/admin/nhan-vien/remove/${nv.id}" class="btn btn-primary">Khôi Phục</a>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="/admin/phan-trang?page=0">Fist</a></li>
                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    <li class="page-item"><a class="page-link" href="/admin/phan-trang?page=5">Last</a></li>

                                </ul>
                            </nav>
                        </div>

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