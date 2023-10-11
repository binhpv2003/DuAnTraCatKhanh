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
                        <h6>Quản Lý Sản Phẩm</h6>
                        <a class="btn btn-primary" href="/admin/view-add">Thêm Mới</a>
                    </div>

                    <div class="card-body px-0 pt-0" style="height: 600px">

                        <div class="form-group row" style="padding: 0 20px">


                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Chọn danh mục&nbsp;&nbsp;</option>
                                  <c:forEach items="${listDanhMuc}" var="dm">
                                      <option value="${dm.ten}">${dm.ten}</option>
                                  </c:forEach>

                                </select>
                            </div>

                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Lọc theo trạng thái kho&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-nho">Còn Hàng&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Hết Hàng&nbsp;&nbsp;</option>

                                </select>
                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-primary">Lọc</button>
                            </div>
                            <div class="col-sm-4" style="">
                                <form action="">
                                    <input type="text" placeholder="Nhập tên sản phẩm" class="form-control">
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
                                    <th class="text-center opacity-7 text-uppercase">Hình Ảnh</th>
                                    <th class="text-center opacity-7 text-uppercase">Mã SP</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên SP</th>
                                    <th class="text-center opacity-7 text-uppercase">Số Lượng</th>
                                    <th class="text-center opacity-7 text-uppercase">Giá Nhập</th>
                                    <th class="text-center opacity-7 text-uppercase">Giá bán</th>
                                    <th class="text-center opacity-7 text-uppercase">Danh Mục</th>
                                    <th class="text-center opacity-7 text-uppercase">NSX</th>
                                    <th class="text-center opacity-7 text-uppercase">Trạng Thái</th>
                                    <th class="text-center opacity-7 text-uppercase">Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${listSanPham}" var="sp" varStatus="loop">
                                    <tr>
                                        <td class="text-center">${sp.id}</td>
                                        <td class="text-center">
                                            <img src="${sp.hinhAnh}" class="avatar me-3"
                                                 alt="user1">
                                        </td>
                                        <td class="text-center">${sp.maSp}</td>
                                        <td class="text-center">${sp.tenSp}</td>
                                        <td class="text-center  ${sp.soLuong >0?"text-success":"text-danger"} text-bold">${sp.soLuong >0?sp.soLuong:"Hết Hàng"}</td>
                                        <td class="text-center"><fmt:formatNumber value="${sp.giaNhap}" type="number" pattern="###,### VNĐ" /></td>
                                        <td class="text-center"><fmt:formatNumber value="${sp.giaBan}" type="number" pattern="###,### VNĐ" /></td>
                                        <td class="text-center">${sp.dm.ten}</td>
                                        <td class="text-center">${sp.nsx.ten}</td>
                                        <td class="text-center">${sp.trangThai==true?"Ngừng Hoạt Động":"Hoạt Động"}</td>
                                        <td class="text-center">
                                            <button data-bs-toggle="modal" data-bs-target="#${sp.maSp}"
                                                    class="btn btn-success">Detail
                                            </button>
                                            <a href="/admin/view-update/${sp.id}" class="btn btn-warning">Update</a>
                                            <a href="/admin/remove/${sp.id}" class="btn btn-danger">Remove</a>


                                            <!-- Modal -->
                                            <div class="modal fade"  id="${sp.maSp}" tabindex="1"
                                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog " >
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title"
                                                                id="exampleModalLabel">${sp.tenSp}</h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <div class="modal-body row">
                                                            <div class="col-md-6">
                                                                <img src="${sp.hinhAnh}" class="img-fluid">
                                                            </div>
                                                            <div class="col-md-6 " style="text-align: left">
                                                                <h5>${sp.tenSp}</h5>
                                                                Mã SP: <p>${sp.maSp}</p>
                                                                Số Lượng: <p class=" text-success text-bold">${sp.soLuong}</p>
                                                                Giá Nhập: <p >${sp.giaNhap}VNĐ</p>
                                                                Giá Bán:<p >${sp.giaBan}VNĐ</p>
                                                                Danh Mục: <p >${sp.dm.ten}</p>
                                                                Nhà Sản Xuất: <p >${sp.nsx.ten}</p>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Close
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <c:forEach var="i" begin="0" end="${listSanPham.totalPages - 1}">
                            <li><a href="?page=${i}">${i + 1}</a></li>
                        </c:forEach>
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