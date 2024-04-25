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
        <!--header area end-->
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <h3>Liên hệ</h3>
                            <ul>
                                <li><a href="index.html">Trang chủ</a></li>
                                <li>Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <!--contact map start-->
        <div class="contact_map ">
            <div class="map-area">
                <div id="googleMap">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1510.7621775132404!2d105.78680525246082!3d20.980272305343554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accdd8a1ad71%3A0xa2f9b16036648187!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCB2aeG7hW4gdGjDtG5n!5e0!3m2!1svi!2s!4v1652340264635!5m2!1svi!2s" width="1470" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
        <!--contact map end-->

        <!--contact area start-->
        <div class="contact_area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message content">
                            <h3>Liên hệ với chúng tôi qua địa chỉ sau: </h3>
                            <ul>
                                <li><i class="fa fa-fax"></i> Địa chỉ : Trần Phú - Hà Đông - Hà Nội</li>
                                <li><i class="fa fa-phone"></i> <a href="#">demo@example.com</a></li>
                                <li><i class="fa fa-envelope-o"></i><a href="tel:0123456789">0123456789</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="contact_message form">
                            <p style="color: green">${message}</p>
                            <h3>Liên hệ</h3>
                            <form action="contact" method="get">
                                <p>
                                    <label> Họ và tên* </label>
                                    <input name="name" placeholder="Họ và tên *" type="text" required value="${param.name}">
                                </p>
                                <p>
                                    <label> Email*</label>
                                    <input name="email" placeholder="nhập email " type="email" required value="${param.email}">
                                </p>
                                <p>
                                    <label> Chủ đề</label>
                                    <input name="subject" placeholder="Chủ đề" type="text" value="${param.subject}">
                                </p>
                                <div class="contact_textarea">
                                    <label> Nội dung*</label>
                                    <textarea placeholder="Nội dung" name="mess" class="form-control2" required value="${param.mess}"></textarea>
                                </div>
                                <button type="submit"> Gửi</button>
                                <a href="index.jsp">Trang chủ</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--contact area end-->

        <!--footer area start-->
        <jsp:include page="footer.jsp"></jsp:include>


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