<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76"
          href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png">
    <link rel="icon" type="image/png" href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png">
    <title>
        Update Sản Phẩm
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet"/>
    <!-- Nucleo Icons -->
    <link href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png" rel="stylesheet"/>
    <link href="https://diemtra37.vn/wp-content/uploads/2021/10/logo-diem-tra-01.png" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet"/>
    <!-- CSS Files -->
    <link id="pagestyle" href="../../../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet"/>
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
                        <h6>Quản Lý Danh Mục</h6>
                        <a class="btn btn-primary" href="/admin/view-add">Quay Lại</a>
                    </div>

                    <div class="card-body px-0 pt-0 ">


                        <form:form class="row form-group d-flex justify-content-center p-3" action="/admin/add-nsx"
                                   method="post" modelAttribute="sx1">
                            <form:label path="" style="font-size:15px">ID Nhà SX:</form:label>
                            <form:input path="id" class="form-control" readonly="true"/>


                            <form:label path="" style="font-size:15px">Mã Nhà SX:</form:label>
                            <form:input path="ma" class="form-control"/>
                            <form:errors path="ma" class="text-danger"/>


                            <form:label path="" style="font-size:15px">Tên Nhà SX:</form:label>
                            <form:input path="ten" class="form-control"/>
                            <form:errors path="ten" class="text-danger"/>
                            <form:button class="btn btn-primary mt-5" type="submit">Thực Hiện</form:button>
                        </form:form>

                        <div class="table-responsive p-0">

                            <table class="table align-items-center mb-0">
                                <thead>
                                <tr>
                                    <th class="text-center opacity-7 text-uppercase">ID</th>
                                    <th class="text-center opacity-7 text-uppercase">Mã Nhà SX</th>
                                    <th class="text-center opacity-7 text-uppercase">Tên Nhà SX</th>
                                    <th class="text-center opacity-7 text-uppercase">Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${listNSX}" var="dm" varStatus="loop">
                                    <tr>
                                        <td class="text-center">${dm.id}</td>
                                        <td class="text-center">${dm.ma}</td>
                                        <td class="text-center">${dm.ten}</td>
                                        <td class="text-center">
                                            <a href="/admin/detail-nsx/${dm.id}" class="btn btn-success">Detail</a>
                                            <a href="/admin/remove-nsx/${dm.id}" class="btn btn-danger">Remove</a>
                                        </td>
                                    </tr>
                                </c:forEach>

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