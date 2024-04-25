<%@page import="Dao.CategoryDao"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Lukani Shop </title>
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

        <!--header area start-->
        <jsp:include page="header.jsp"></jsp:include>
        <!--header area end-->
        <%
        ArrayList<Category>listAllCate=CategoryDao.getCategorys();
        session.setAttribute("listAllCate", listAllCate);
        %>
        <!-- add product start -->
        <div class="customer_login">
            <div class="container">
                <div class="row align-items-center">
                    <!--register area start-->
                    <div class="col-6 mx-auto">
                        <div class="account_form register">
                            <h2>ADD</h2>
                            <form action="addproduct" method="post" enctype="multipart/form-data">
                                <p>
                                    <label>Tên sản phẩm </label>
                                    <input type="text" placeholder="Nhập tên sản phẩm " required name="name" value="${param.name}">
                                </p>
                                <p>
                                    <label>Giá </label>
                                    <input type="text" placeholder="Giá " required name="price" value="${param.price}">
                                </p>
                                <p>
                                    <label>Category </label><br/>
                                    <select name="idCate" id="short" class="select_option">
                                        <c:forEach var="o" items="${listAllCate}">
                                            <option value="${o.id}" >${o.name}</option>
                                        </c:forEach>
                                </select>
                                    <br/>
                                </p>
                                <p>
                                    <label>Mô tả</label><br/>
                                    <input type="text" placeholder="mô tả " required name="description" value="${param.description}">
                                </p>
                                <p>
                                    <label>Ngày nhập</label>
                                    <input type="date" placeholder="ngày nhập" required name="date" value="${param.date}">
                                </p>
                                <p>
                                    <label>Số lượng nhập</label>
                                    <input type="text" placeholder="số lượng nhập" required name="amount_left" value="${param.amount_left}">
                                </p>
                                <p>
                                    <label>Giảm giá</label>
                                    <input type="text" placeholder="giảm giá" required name="discount" value="${param.discount}">
                                </p>
                                <div>
                                    <label for="image_link">Ảnh cho sản phẩm</label>
                                    <br/>
                                    <input type="file" id="image_link" name="image_link" required />
                                </div>
                               
                                <div class="login_submit">
                                    <p style="color: green ; text-align: right" ><a href="shopadmin.jsp">Trở về</a></p>
                                    <button type="submit">Thêm</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--register area end-->
                </div>
            </div>
        </div>
        <!-- customer login end -->
        <!--footer area start-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--footer area end-->
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