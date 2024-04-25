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

            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb_content">
                                <ul>
                                    <li><a href="index.jsp">home</a></li>
                                    <li>Thông tin sản phẩm chi tiết</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--product details start-->
            <div class="product_details mt-100 mb-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="product-details-tab">
                                <div id="img-1" class="zoomWrapper single-zoom">
                                
                                <a href="#">
                                    <img id="zoom1" src="${product.image_link}"
                                         data-zoom-image="${product.image_link}" alt="big-1">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product_d_right">
                            <form action="cart?idProduct=${product.id}" method="post">

                                <h1><a href="product?idProduct=${product.id}">${product.name}</a></h1>
                                <div class="price_box">
                                    <span class="current_price">${product.priceDiscount}</span>
                                    <c:if test="${o.discount != 0}">
                                        <span class="old_price">${o.price}</span>
                                    </c:if>
                                    
                                </div>
                                <div class="product_desc">
                                    <p>${product.description}</p>
                                </div>
                                <c:if test="${product.left == 0}">
                                <h3 style="font: 10"><strong style="color: red">Hết Hàng</strong></h3>
                                <div class="product_variant quantity">
                                    <label>quantity</label>
                                    <input min="1" max="${product.left}" value="1" type="number" name="quantity" disabled>
                                    <button class="button" type="submit" disabled>add to cart</button>

                                </div>
                                </c:if>
                                <c:if test="${product.left != 0}">
                                <div class="product_variant quantity">
                                    <label>quantity</label>
                                    <input min="1" max="${product.left}" value="1" type="number" name="quantity">
                                    <button class="button" type="submit" ac>add to cart</button>

                                </div>
                                </c:if>
                            </form>
                            <div class="priduct_social">
                                <ul>
                                    <li><a class="facebook" href="https://www.facebook.com/lukanishop" title="facebook"><i class="fa fa-facebook"></i>
                                            Like</a></li>
                                    <li><a class="twitter" href="#" title="twitter"><i class="fa fa-twitter"></i> tweet</a>
                                    </li>
                                    <li><a class="pinterest" href="#" title="pinterest"><i class="fa fa-pinterest"></i>
                                            save</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--product details end-->

        <!--product area start-->

        <section class="product_area related_products">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2>Sản phẩm liên quan </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product_carousel product_column4 owl-carousel">
                        <c:forEach var="o" items="${listLienQuan}">
                            <div class="col-lg-3">
                                <article class="single_product">
                                    <figure>
                                        <div class="product_thumb">
                                            <a class="primary_img" href="productdetail?idProduct=${o.id}"><img
                                                    src="${o.image_link}" alt=""></a>
                                                <c:if test="${o.discount != 0}">
                                                <div class="label_product">
                                                    <span class="label_sale">-${o.discount}%</span>
                                                </div>
                                            </c:if>
                                            <div class="action_links">
                                                <ul>
                                                    <li class="add_to_cart"><a href="cart?idProduct=${o.id}" title="Add to cart"><i
                                                                class="fa fa-shopping-bag"></i></a></li>
                                                    <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                class="fa fa-eye"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <figcaption class="product_content">
                                            <h4 class="product_name"><a href="productdetail?idProduct=${o.id}">${o.name}</a></h4>
                                            <div class="price_box">
                                                <span class="current_price">${o.priceDiscount}</span>
                                                <c:if test="${o.discount != 0}">
                                                    <span class="old_price">${o.price}</span>
                                                </c:if>
                                            </div>
                                        </figcaption>
                                    </figure>
                                </article>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
        <!--product area end-->
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