<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
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
                        <button class="btn btn-primary">Thêm Mới</button>
                    </div>
                    <div class="card-body px-0 pt-0" style="height: 600px">
                        <div class="form-group row" style="padding: 0 20px">
                            <div class="col-sm-2 ">
                                <select class="form-control">
                                    <option value="" selected="selected">Hành Động</option>
                                    <option value="lap-xuong-nho">Bỏ Vào Thùng Rác</option>
                                </select>

                            </div>
                            <div class="col-sm-2">
                                <button class="btn btn-primary">Áp Dụng</button>
                            </div>
                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Chọn danh mục&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-nho">Lạp Xưởng Nhỏ&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Lạp Xưởng Tươi&nbsp;&nbsp;</option>
                                    <option value="qua-tang">Quà Tặng&nbsp;&nbsp;</option>
                                    <option value="uncategorized">Tất Cả&nbsp;&nbsp;</option>
                                </select>
                            </div>

                            <div class="col-sm-2">
                                <select class="form-control">
                                    <option value="" selected="selected">Lọc theo trạng thái kho&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-nho">Còn Hàng&nbsp;&nbsp;</option>
                                    <option value="lap-xuong-tuoi">Hết Hàng&nbsp;&nbsp;</option>
                                    <option value="uncategorized">Tất Cả&nbsp;&nbsp;</option>

                                </select>
                            </div>
                            <div class="col-sm-1">
                                <button class="btn btn-primary">Lọc</button>
                            </div>
                            <div class="col-sm-3" style="">
                                <form action="">
                                    <input type="text" placeholder="Nhập tên sản phẩm" class="form-control">
                                </form>
                            </div>
                        </div>

                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0">
                                <thead>
                                <tr>
                                    <th class="text-center opacity-7 text-uppercase">STT</th>
                                    <th class="text-center opacity-7 text-uppercase">Hình Ảnh</th>
                                    <th class="text-center opacity-7 text-uppercase">Mã SP</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên SP</th>
                                    <th class="text-center opacity-7 text-uppercase">Kho</th>
                                    <th class="text-center opacity-7 text-uppercase">Giá</th>
                                    <th class="text-center opacity-7 text-uppercase">Danh Mục</th>
                                    <th class="text-center opacity-7 text-uppercase">NSX</th>
                                    <th class="text-center opacity-7 text-uppercase">Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td class="text-center">1</td>
                                    <td class="text-center">
                                        <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3"
                                             alt="user1">
                                    </td>
                                    <td class="text-center">SP02</td>
                                    <td class="text-center">Trà Xanh</td>
                                    <td class="text-center text-success text-bold">Còn Hàng</td>
                                    <td class="text-center">
                                        <span class="text-decoration-line-through">200.000VNĐ</span> <br>
                                        <span>150.000VNĐ</span>
                                    </td>
                                    <td class="text-center">Trà</td>
                                    <td class="text-center">Trung Quốc</td>
                                    <td class="text-center">
                                        <a href="" class="btn btn-success">Detail</a>
                                        <a href="" class="btn btn-warning">Update</a>
                                        <a href="" class="btn btn-danger">Remove</a>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-center">1</td>
                                    <td class="text-center">
                                        <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3"
                                             alt="user1">
                                    </td>
                                    <td class="text-center">SP02</td>
                                    <td class="text-center">Trà Xanh</td>
                                    <td class="text-center text-success text-bold">Còn Hàng</td>
                                    <td class="text-center">
                                        <span class="text-decoration-line-through">200.000VNĐ</span> <br>
                                        <span>150.000VNĐ</span>
                                    </td>
                                    <td class="text-center">Trà</td>
                                    <td class="text-center">Trung Quốc</td>
                                    <td class="text-center">
                                        <a href="" class="btn btn-success">Detail</a>
                                        <a href="" class="btn btn-warning">Update</a>
                                        <a href="" class="btn btn-danger">Remove</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
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
<div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
        <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg">
        <div class="card-header pb-0 pt-3 ">
            <div class="float-start">
                <h5 class="mt-3 mb-0">Cài Đặt Cát Khánh</h5>
                <p>Xem các tùy chọn bảng điều khiển của chúng tôi</p>
            </div>
            <div class="float-end mt-4">
                <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                    <i class="fa fa-close"></i>
                </button>
            </div>
            <!-- End Toggle Button -->
        </div>
        <hr class="horizontal dark my-1">
        <div class="card-body pt-sm-3 pt-0 overflow-auto">
            <!-- Sidebar Backgrounds -->
            <div>
                <h6 class="mb-0">Màu Sidebar</h6>
            </div>
            <a href="javascript:void(0)" class="switch-trigger background-color">
                <div class="badge-colors my-2 text-start">
                    <span class="badge filter bg-gradient-primary active" data-color="primary"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-success" data-color="success"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-warning" data-color="warning"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-danger" data-color="danger"
                          onclick="sidebarColor(this)"></span>
                </div>
            </a>
            <!-- Sidenav Type -->
            <div class="mt-3">
                <h6 class="mb-0">Sidenav Type</h6>
                <p class="text-sm">Chọn giữa 2 loại sidenav khác nhau.</p>
            </div>
            <div class="d-flex">
                <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white"
                        onclick="sidebarType(this)">White
                </button>
                <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default"
                        onclick="sidebarType(this)">Dark
                </button>
            </div>
            <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
            <!-- Navbar Fixed -->
            <div class="d-flex my-3">
                <h6 class="mb-0">Navbar Fixed</h6>
                <div class="form-check form-switch ps-0 ms-auto my-auto">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                           onclick="navbarFixed(this)">
                </div>
            </div>
            <hr class="horizontal dark my-sm-4">
            <div class="mt-2 mb-5 d-flex">
                <h6 class="mb-0">Light / Dark</h6>
                <div class="form-check form-switch ps-0 ms-auto my-auto">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version"
                           onclick="darkMode(this)">
                </div>
            </div>
        </div>
    </div>
</div>
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