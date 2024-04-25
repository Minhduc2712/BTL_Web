<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Dao.ProductDao"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lukani Shop </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
    <!--offcanvas menu area end-->
    <jsp:include page="header.jsp"></jsp:include>
    <!--header area end-->

    <!--slider area start-->
    <section class="slider_section">
        <div class="slider_area owl-carousel">
            <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider3.png">
                
            </div>
            <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider2.png">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="slider_content">
                                <h1>TOP SALE</h1>
                                <p>Giảm giá <span>20% khi mua trực tiếp </span> cho tất cả các khách hàng của shop</p>
                                <a class="button" href="shop">Khám phá ngay bây giờ </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider d-flex align-items-center" data-bgimg="assets/img/slider/slider1.png">
            </div>
        </div>
    </section>
    <!--slider area end-->
    
    <!--shipping area start-->
    <div class="shipping_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_shipping">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping1.png" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Giao hàng miễn phí</h3>
                            <p>Miễn phí vẫn chuyển cho đơn hàng
                            trên 1 triệu đồng</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_shipping col_2">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping2.png" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Thanh toán an toàn</h3>
                            <p>Với cổng thanh toán của chúng tôi, đừng lo lắng về thông tin của bạn.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_shipping col_3">
                        <div class="shipping_icone">
                            <img src="assets/img/about/shipping3.png" alt="">
                        </div>
                        <div class="shipping_content">
                            <h3>Dịch vụ thân thiện</h3>
                            <p>Đảm bảo đổi trả trong vòng 1 ngày</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--shipping area end-->
     <div class="welcome_lukani_store">
        <div class="container">
            <div class="welcome_lukani_container">
                <div class="row">
                    <div class="col-lg-6 col-md-5">
                        <div class="welcome_lukani_thumb">
                            <video width="550" height="300" controls autoplay loop muted="" >
                                <source src="assets/img/bg/mv.mp4" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <div class="welcome_lukani_content">
                            <div class="welcome_lukani_header">
                                <h3>Welcome to Lukani Shop</h3>
                            </div>
                            <div class="welcome_lukani_desc">
                                <p>Lukani Shop luôn mang đến những sản phẩm chất lượng,gần gũi với người dùng và hợp thời trang</p>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--lukani store titlev end-->
    
    <!--product area start-->
    <div class="product_area  mb-95">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_header">
                        <div class="section_title">
                            <h2>Sản phẩm Lukani Shop</h2>
                        </div>
                        <div class="product_tab_btn">
                            <ul class="nav" role="tablist" id="nav-tab">
                                <li>
                                    <a class="active" data-bs-toggle="tab" href="#plant1" role="tab" aria-controls="plant1"
                                        aria-selected="true">
                                        Túi
                                    </a>
                                </li>
                                <li>
                                    <a data-bs-toggle="tab" href="#plant2" role="tab" aria-controls="plant2"
                                        aria-selected="false">
                                        Phụ kiện
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="plant1" role="tabpanel">
                    <div class="row">
                        <div class="product_carousel product_column4 owl-carousel">
                            <%
                            ArrayList<Product>listTAll=ProductDao.getProducts("T");
                            session.setAttribute("listTAll", listTAll);
                            %>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listTAll}" begin="0" end="1">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                                   title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>

                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listTAll}" begin="2" end="3">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                                </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listTAll}" begin="4" end="5">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}"  title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listTAll}" begin="6" end="7">
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
                                                        <li class="add_to_cart"><a href="cart.jsp"
                                                                title="cart?idProduct=${o.id}"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="plant2" role="tabpanel">
                    <div class="row">
                        <div class="product_carousel product_column4 owl-carousel">
                            <div class="col-lg-3">
                                <%
                                ArrayList<Product>listGAll=ProductDao.getProducts("PK");
                                session.setAttribute("listGAll",listGAll);
                                %>
                                <div class="product_items">
                                    <c:forEach var="o" items="${listGAll}" begin="0" end="1">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listGAll}" begin="2" end="3">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                                </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listGAll}" begin="4" end="5">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="product_items">
                                    <c:forEach var="o" items="${listGAll}" begin="6" end="7">
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
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}"
                                                                title="Add to cart"><i
                                                                    class="fa fa-shopping-bag"></i></a></li>
                                                       
                                                        <li class="quick_button"><a href="productdetail?idProduct=${o.id}" title="quick view"> <i
                                                                    class="fa fa-eye"></i></a></li>
                                                        <c:if test="${user.isadmin==1}">
                                                            <li class="quick_button"><a href="deleteproduct?idProduct=${o.id}" title="delete product"> <i
                                                                        class="fa fa-trash-o"></i></a></li>
                                                        </c:if>
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
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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