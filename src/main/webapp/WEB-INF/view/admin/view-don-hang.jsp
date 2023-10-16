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
                        <h6>Quản Lý Đơn Hàng</h6>

                    </div>

                    <div class="card-body px-0 pt-0">

                        <div class="form-group row" style="padding: 0 20px">



                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Lọc theo trạng hóa Đơn&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-nho">Chờ Xác Nhận&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Đã Thanh Toán&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Đã Vận Chuyển&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Đã Giao Hàng&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Hủy Đơn&nbsp;&nbsp;</option>

                                </select>
                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-primary">Lọc</button>
                            </div>
                            <div class="col-sm-4" style="">
                                <form action="">
                                    <input type="text" placeholder="Nhập mã đơn hàng" class="form-control">
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
                                    <th class="text-center opacity-7 text-uppercase">Mã Đơn Hàng</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên Khách Hàng</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên Nhân Viên</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên Người Nhận</th>
                                    <th class="text-center opacity-7 text-uppercase">Địa Chỉ</th>
                                    <th class="text-center opacity-7 text-uppercase">Số Điện Thoại</th>
                                    <th class="text-center opacity-7 text-uppercase">Ngày Tạo</th>
                                    <th class="text-center opacity-7 text-uppercase">Ngày Thanh Toán</th>
                                    <th class="text-center opacity-7 text-uppercase">Ngày Ship</th>
                                    <th class="text-center opacity-7 text-uppercase">Ngày Nhận</th>
                                    <th class="text-center opacity-7 text-uppercase">Tổng Tiền</th>
                                    <th class="text-center opacity-7 text-uppercase">Tình Trạng</th>
                                    <th class="text-center opacity-7 text-uppercase">Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${listHoaDon}" var="sp" varStatus="loop">
                                    <tr>
                                        <td class="text-center">${loop.index}</td>
                                        <td class="text-center">${sp.ma}</td>
                                        <td class="text-center">${sp.khachHang.ten}</td>
                                        <td class="text-center">${sp.nhanVien.ten}</td>
                                        <td class="text-center">${sp.tenNguoiNhan}</td>
                                        <td class="text-center">${sp.diaChi}</td>
                                        <td class="text-center">${sp.sdt}</td>
                                        <td class="text-center">${sp.ngayTao}</td>
                                        <td class="text-center">${sp.ngayThanhToan}</td>
                                        <td class="text-center">${sp.ngayShip}</td>
                                        <td class="text-center">${sp.ngayNhan}</td>
                                        <td class="text-center"><fmt:formatNumber value="${sp.tongTien}" type="number" pattern="###,### VNĐ" /></td>
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${sp.tinhTrang == 1}">
                                                   Chờ Xác Nhận
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 2}">
                                                Đã Thanh Toán
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 3}">
                                                   Đã Vận Chuyển
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 4}">
                                                   Đã Giao Hàng
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 5}">
                                                   <span class="text-danger">Hủy</span>
                                                </c:when>
                                                <c:otherwise>
                                                    Trạng Thái Mặc Định
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td class="text-center">

                                            <c:choose>
                                                <c:when test="${sp.tinhTrang == 1}">
                                                    <a href="/admin/confirm/${sp.id}" class="btn btn-success">Xác Nhận</a>
<%--                                                    <a href="/admin/cancel/${sp.id}" class="btn btn-danger">Hủy Đơn</a>--%>
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 2}">
                                                    <a href="/admin/ship/${sp.id}" class="btn btn-primary">Vận Chuyển</a>
<%--                                                    <a href="/admin/cancel/${sp.id}" class="btn btn-danger">Hủy Đơn</a>--%>
                                                </c:when>
                                                <c:when test="${sp.tinhTrang == 3}">
                                                    <a href="/admin/done/${sp.id}" class="btn btn-danger">Đã Giao Hàng</a>
<%--                                                    <a href="/admin/cancel/${sp.id}" class="btn btn-danger">Hủy Đơn</a>--%>
                                                </c:when>

                                            </c:choose>
                                            <a href="/admin/view-hoa-don-ct/${sp.id}" class="btn btn-success">Hóa Đơn CT</a>

                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <div class="col-12">
                                <div class="row mt-3">
                                    <div class="d-flex justify-content-center">
                                        <div class="row">
                                            <a class="btn btn-outline-primary col" href="/admin/don-hang?page=${currentPage <= 1 ? 1 : currentPage - 1}">Previous</a>
                                            <c:forEach begin="1" end="${totalPages}" var="pageIndex">
                                                <a class="btn btn-outline-primary col" href="/admin/don-hang?page=${pageIndex}">${pageIndex}</a>
                                            </c:forEach>
                                            <a class="btn btn-outline-primary col" href="/admin/don-hang?page=${currentPage >= totalPages ? totalPages : currentPage + 1}">Next</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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