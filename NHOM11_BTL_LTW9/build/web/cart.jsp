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

        <jsp:include page="header.jsp"></jsp:include>
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <h3>Giỏ hàng</h3>
                            <ul>
                                <li><a href="index.jsp">Trang chủ</a></li>
                                <li>Giỏ hàng</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--breadcrumbs area end-->

        <!--shopping cart area start -->
        <div class="shopping_cart_area mt-100">
            <div class="container">
                <form action="updateCart" method="post">
                    <div class="row">
                        <div class="col-12">
                            <div class="table_desc">
                                <div class="cart_page table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product_remove">Xóa</a></th>
                                                <th class="product_thumb">Ảnh minh họa</th>
                                                <th class="product_name">Sản phẩm</th>
                                                <th class="product-price">Giá</th>
                                                <th class="product_quantity">Số lượng</th>
                                                <th class="product_total">Tổng giá</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="o" items="${listCart}">
                                            <tr>
                                                <td class="product_remove"><a href="delete?idProduct=${o.product.id}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                                <td class="product_thumb"><a href="productdetail?idProduct=${o.product.id}"><img
                                                            src="${o.product.image_link}" alt=""></a></td>
                                                <td class="product_name"><a href="productdetail?idProduct=${o.product.id}">${o.product.name}</a></td>
                                                <td class="product-price">${o.priceBuy}</td>
                                                <td class="product_quantity"><label>Quantity</label> <input min="1"
                                                                                                            max="${o.product.left}" value="${o.quantity}" type="number" name="${o.product.id}"></td>
                                                
                                                <td class="product_total">${o.total}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="cart_submit">
                                    <p style="color: #198754 ; text-align:right"><a href="shop">Tiếp tục mua sắp</a></p>
                                    <button type="submit">Cập nhật</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--coupon code area start-->
                    <div class="coupon_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code">
                                    <h3>Chú thích cho chủ cửa hàng</h3>
                                    <div class="contact_area">
                                        <textarea class="form-control" rows="7"></textarea>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="coupon_code right">
                                    <h3>Tổng giỏ hàng</h3>
                                    <div class="coupon_inner">
                                        <div class="cart_subtotal">
                                            <p>Total</p>
                                            <p class="cart_amount">${totalCart}</p>
                                        </div>
                                        <div class="checkout_btn">
                                            <a href="checkout">Thanh toán</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--coupon code area end-->
                </form>
            </div>
        </div>
        <!--shopping cart area end -->
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