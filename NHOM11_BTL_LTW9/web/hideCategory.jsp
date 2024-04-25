<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lukani</title>
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
                                    <li>Danh sách danh mục sản phẩm được hiện</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->
            
            <div class="shopping_cart_area mt-100">
                
            <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page table-responsive">
                                    <label><strong>Tổng danh mục sản phẩm: </strong>${size}</label>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Ẩn danh mục sản phẩm</th>
                                                <th>Mã DM</a></th>
                                                <th>Tên danh mục</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="o" items="${listCategory}">
                                        <tr>
                                        <td><a href="hiddencategory?idCate=${o.id}"><i class="fa fa-eye-slash"></i></a></td>
                                        <td>${o.id}</td>
                                        <td>${o.name}</td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="cart_submit">
                                    <p style="color: #198754 ; text-align:right"><a href="shopadmin.jsp">Trở về</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>        
        <!--footer area end-->
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