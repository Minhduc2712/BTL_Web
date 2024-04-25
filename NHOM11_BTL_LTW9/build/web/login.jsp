<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!--header area start-->
        <jsp:include page="header.jsp"></jsp:include>
        <!--header area end-->
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <h3>My Account</h3>
                            <ul>
                                <li><a href="index.html">home</a></li>
                                <li>My account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <!-- customer login start -->
        <div class="customer_login">
            <div class="container">
                <div class="row align-items-center">
                    <!--login area start-->
                    <div class="col-6 mx-auto">
                        <div class="account_form">
                            <h2>login</h2>
                            <form action="login" method="post">
                            <c:if test="${error!=null}">
                                <p style="color: red"><i>${error}</i></p>
                            </c:if>
                                <label>Email: <span>*</span></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend3">@</span>
                                    </div>
                                    <input type="email" name="email" value="${param.email}" class="form-control" placeholder="nhập email...." required>
                                </div>
                                <p>
                                    <label>Passwords <span>*</span></label>
                                    <input type="password" name="password" value="${param.password}" placeholder="nhập password...." required>
                                </p>
                                <div style="text-align: left" class="login_submit">
                                    <label> <input type="checkbox" value="ON" name="rem"/>remember me</label>
                                </div>
                                <input type="submit" class="btn btn--full" value="Đăng nhập" style="background: yellowgreen"/>
                                <p style="color: yellowgreen ; text-align: center" ><a href="index.jsp">Trở về</a></p>
                                <p style="color: yellowgreen ; text-align: center"><a href="register">Đăng ký</a></p>
                            </form>
                        </div>
                    </div>
                    <!--login area start-->
                    <!--register area end-->
                </div>
            </div>
        </div>
        <!-- customer login end -->
        <!--footer area start-->
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