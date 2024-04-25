<%@page import="Dao.ProductDao"%>
<%@page import="model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Dao.CategoryDao"%>
<%@page import="model.Category"%>
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
                                    <li>${nameCategory}</li>
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
                    <div class="col-lg-14 col-md-11">
                        <!--shop wrapper start-->
                        <!--shop toolbar start-->
                        <div class="shop_toolbar_wrapper">
                            <div class="shop_toolbar_btn">

                                <button data-role="grid_3" type="button" class="active btn-grid-3" data-bs-toggle="tooltip"
                                        title="3"></button>

                                <button data-role="grid_4" type="button" class="btn-grid-4" data-bs-toggle="tooltip"
                                        title="4"></button>
                            </div>
                            <div class=" niceselect_option">
                                <form action="sort" method="get"/>
                                <select name="orderby" id="short" class="select_option">
                                    <option value="1" ${(orderby eq '1')? "selected":""}>Khuyến mãi</option>
                                    <option value="2" ${(orderby eq '2')? "selected":""}>Sắp xếp theo tên A_Z</option>
                                    <option value="3" ${(orderby eq '3')? "selected":""}>Sắp xếp theo tên Z_A</option>
                                    <option value="4" ${(orderby eq '4')? "selected":""}>Sắp xếp theo giá :từ cao đến thấp</option>
                                    <option value="5" ${(orderby eq '5')? "selected":""}>Sắp xếp theo giá: từ thấp đến cao</option>
                                    <option value="6" ${(orderby eq '6')? "selected":""}>Sắp xếp theo hàng mới</option>
                                    <option value="7" ${(orderby eq '7')? "selected":""}>Sản phẩm bán chạy</option>
                                </select>
                                <button type="submit" class="btn btn-light">Lọc</button>
                                </form>
                            </div>
                            <div class="page_amount">
                                <p>Showing 1–${num} of ${size} results</p>
                            </div>
                        </div>
                        <!--shop toolbar end-->
                        <div class="row shop_wrapper">
                            <c:forEach var="o" items="${listAll}" >
                                <div class="col-lg-4 col-md-4 col-12 ">
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
                                                <c:if test="${o.left == 0}">
                                                    <div class="label_product">
                                                        <span class="label_new">Hết</span>
                                                    </div>
                                                </c:if>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="cart?idProduct=${o.id}" title="Add to cart"><i
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
                                            <div class="product_content grid_content">
                                                <div class="product_price_rating">
                                                    <h4 class="product_name"><a href="productdetail?idProduct=${o.id}">${o.name}</a></h4>
                                                    <div class="price_box">
                                                        <span class="current_price">${o.priceDiscount}</span>
                                                        <c:if test="${o.discount != 0}">
                                                            <span class="old_price">${o.price}</span>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </figure>
                                    </article>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="shop_toolbar t_bottom">
                            <div class="pagination">
                                <ul>
                                    <c:forEach var="i" begin="1" end="${num}">
                                        <li class="${i==page?"current":""}"><a href="${url}page=${i}">${i}</a></li>
                                        </c:forEach>
                                </ul>
                            </div>
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