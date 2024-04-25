<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">
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
        <jsp:include page="header.jsp"></jsp:include>
            <!--breadcrumbs area start-->
            <div class="breadcrumbs_area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb_content">
                                <h3>Thanh toán</h3>
                                <ul>
                                    <li><a href="index.jsp">Trang chủ</a></li>
                                    <li>Thanh toán</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--breadcrumbs area end-->

            <!--Checkout page section-->
            <div class="Checkout_section  mt-100" id="accordion">
                <div class="container">
                    <div class="checkout_form">
                        <form action="checkout" method="post">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">

                                    <h3>Thông tin thanh toán</h3>
                                    <div class="row">

                                        <div class="col-lg-12 mb-20">
                                            <label>Họ và tên <span>*</span></label>
                                            <input type="text" placeholder="Họ và tên" required value="${user.username}" name="name" readonly>
                                    </div>
                                    <div class="col-12 mb-20">
                                        <label>Email:<span>*</span></label>
                                        <input placeholder="nhập Email....." type="text" value="${user.email}" name="email" readonly>
                                    </div>
                                    <div class="col-lg-12 mb-20">
                                        <label>Số Điện thoại <span>*</span></label>
                                        <input type="text" placeholder="Số điện thoại" required value="${user.phone}" name="phone">
                                    </div>
                                    <div class="col-12 mb-20">
                                        <label>Địa chỉ <span>*</span></label>
                                        <input placeholder="Số nhà và tên đường" type="text" value="${user.address}" name="address">
                                    </div>
                                    <div class="col-12">
                                        <div class="order-notes">
                                            <label for="order_note">Ghi chú</label>
                                            <textarea id="order_note"
                                                      placeholder="Gi chú về đơn hàng của bạn, ví dụ như ghi chú đặc biệt để giao hàng" name="note"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <h3>Giỏ hàng của bạn</h3>
                                <div class="order_table table-responsive">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>Sản phẩm</th>
                                                <th>Tổng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="o" items="${listCart}">
                                                <tr>
                                                    <td>${o.product.name}<strong> × ${o.quantity}</strong></td>
                                                    <td><strong>${o.total}</strong></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Tạm tiền</th>
                                                <td><strong>${totalCart}</strong></td>
                                            </tr>
                                            <tr>
                                                <th>Phí ship</th>
                                                <td><strong>${fee}</strong></td>
                                            </tr>
                                            <tr class="order_total">
                                                <th>Tổng tiền</th>
                                                <td><strong>${total}</strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment_method">
                                    <div class="panel-default">
                                        <h3>Phương thức vận chuyển</h3>
                                        <input type="radio" ${(fee==0)?"":"checked"}/><label>Giao hàng tận nơi đơn hàng dưới 500,000đ có phí vận chuyển    20000đ</label>
                                        <h3>Phương thức thanh toán</h3>
                                        <input type="radio" name="payment"checked size="0.1" value="thanh toán khi giao hàng"/><label>Thanh toán khi giao hàng(COD)</label>
                                        <br>
                                        <input type="radio" name="payment" size="0.1" value="chuyển qua ngân hàng"/><label>Chuyển qua ngân hàng</label>
                                        <button type="submit">Thanh Toán</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:if test="${mark!=null}">
            <!--news letter popup start-->
            <div class="newletter-popup">
                <div id="boxes" class="newletter-container">
                    <div id="dialog" class="window">
                        <div id="popup2">
                            <span class="b-close"><span>close</span></span>
                        </div>
                        <div class="box">
                            <div class="newletter-title">
                                <h2>Thông báo</h2>
                            </div>
                            <div class="box-content newleter-content">
                                <label class="newletter-label">Bạn đã thanh toán thành công</label>
                            </div>
                            <p style="color: yellowgreen ; text-align: center" ><a href="index.jsp">Trở về</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

        <!--news letter popup start-->
        <!--Checkout page section end-->
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