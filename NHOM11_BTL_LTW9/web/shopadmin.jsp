<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Dao.UserDAO"%>
<%@page import="model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Dao.CategoryDao"%>
<%@page import="model.*"%>
<%@page import="data.ConnectionPool"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lukani Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
        <!-- CSS 
        ========================= -->
        <!--bootstrap min css-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!--owl carousel min css-->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <!--slick min css-->
        <link rel="stylesheet" href="assets/css/slick.css">
        <!--magnific popup min css-->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!--font awesome css-->
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css' rel='stylesheet'/>
        <!--animate css-->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!--jquery ui min css-->
        <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
        <!--slinky menu css-->
        <link rel="stylesheet" href="assets/css/slinky.menu.css">
        <!--plugins css-->
        <link rel="stylesheet" href="assets/css/plugins.css">

        <!-- Main Style CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" type="text/css"/>

        <!--modernizr min js here-->
        <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
              rel="stylesheet">
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb_content">
                                <h3>Shop</h3>
                                <ul>
                                    <li><a href="index.jsp">home</a></li>
                                    <li>Shop Admin</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--shop  area start-->
            <div class="shop_area shop_reverse mt-100 mb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-12">
                            <!--sidebar widget start-->
                            <aside class="sidebar_widget">
                                <div class="widget_inner">

                                    <div class="widget_list widget_color">
                                        <h3>Lựa chọn chức năng</h3>
                                        <ul>
                                            <li><a href="index.jsp">Trang chủ</a></li>
                                            <li><a href="leftproduct">Danh sách mặt hàng còn</a></li>
                                            <li><a href="soldoutproduct">Danh sách mặt hàng hết</a></li>
                                            <li><a href="hideproduct">Ẩn sản phẩm</a></li>
                                            <li><a href="displayproduct">Hiện sản phẩm</a></li>
                                            <li><a href="hiddencategory">Ẩn danh mục sản phẩm</a></li>
                                            <li><a href="displaycategory">Hiện danh mục sản phẩm</a></li>
                                            <li><a href="admin_add_product.jsp">Thêm sản phẩm</a></li>
                                            <li><a href="updateproduct">sửa sản phẩm</a></li>
                                            <li><a href="historyorder">Lịch sử mua hàng</a></li>
                                            <li><a href="logout">Đăng xuất</a></li>
                                        </ul>
                                    </div>

                                </div>
                            </aside>
                            <!--sidebar widget end-->
                        </div>
                        <div class="col-lg-9 col-md-12">
                            <!--shop wrapper start-->
                            <!--shop toolbar start-->

                            <!--shop toolbar end-->
                            <div class="row shop_wrapper">
                            <%
                                //Count product query
                                ArrayList<Product> list = new ArrayList<>();
                                list = ProductDao.getListProducts();

                                int allProducts = list.size();
                            %>
                            <h3>
                                <%=allProducts%>
                            </h3>
                            Total Products 
                        </div>
                        <div class="row shop_wrapper">
                            <%
                                //Count product query
                                ArrayList<User> list2 = new ArrayList<>();
                                list2 = UserDAO.getAllUser();

                                int allCustomer = list2.size();
                            %>
                            <h3>
                                <%=allCustomer%>
                            </h3>
                            Total Customer
                        </div>
                        <!--shop toolbar end-->
                        <!--shop wrapper end-->
                    </div>
                </div>
            </div>
        </div>
        <!--shop  area end-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- modal area end-->
        <!-- JS
    ============================================ -->
        <!--jquery min js-->
        <script src="assets/js/vendor/jquery-3.4.1.min.js"></script>
        <!--popper min js-->
        <script src="assets/js/popper.js"></script>
        <!--bootstrap min js-->
        <script src="assets/js/bootstrap.min.js"></script>
        <!--owl carousel min js-->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!--slick min js-->
        <script src="assets/js/slick.min.js"></script>
        <!--magnific popup min js-->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!--counterup min js-->
        <script src="assets/js/jquery.counterup.min.js"></script>
        <!--jquery countdown min js-->
        <script src="assets/js/jquery.countdown.js"></script>
        <!--jquery ui min js-->
        <script src="assets/js/jquery.ui.js"></script>
        <!--jquery elevatezoom min js-->
        <script src="assets/js/jquery.elevatezoom.js"></script>
        <!--isotope packaged min js-->
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <!--slinky menu js-->
        <script src="assets/js/slinky.menu.js"></script>
        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>
    </body>

</html>