
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--footer area start-->
<footer class="footer_widgets">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="widgets_container contact_us">
                        <h3>Thời gian mở của</h3>
                        <p><span>Thứ 2-Thứ 6:</span> 8h - 22h</p>
                        <p><span>Thứ 7:</span> 9h-20h</p>
                        <p><span>Chủ nhật:</span> 14h-18h</p>
                        <p><b>Chúng tôi làm việc trong tất cả các ngày lễ</b></p>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-3">
                    <div class="widgets_container contact_us">
                        <h3>Liên hệ:</h3>
                        <p><i class="fa fa-address-book-o"></i>  Trần Phú, Hà Đông, Hà Nội</p>
                        <p><i class="fa fa-phone"></i>  (+84)123456789</p>
                        <p><i class="fa fa-envelope-o"></i>  demo@gmail.com</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5">
                    <div class="widgets_container widget_app">
                        <div class="footer_logo">
                            <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <div class="footer_widgetnav_menu">
                            <ul>
                                <li><a href="checkout">Phương thức thanh toán</a></li>
                            </ul>
                        </div>
                        <div class="footer_social">
                            <ul>
                                <li><a href="https://www.facebook.com/lukanishop"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-6">
                    <div class="widgets_container widget_menu">
                        <h3>Tài khoản của tôi</h3>
                        <div class="footer_menu">
                            <ul>
                                <li><a href="contact.jsp">Liên hệ</a></li>
                                <li><a href="cart">Giỏ hàng</a></li>
                                <li><a href="checkout">Checkout</a></li>
                                <li><a href="shop">Mua sắm</a></li>
                                <c:if test="${user.isadmin==1}">
                                <li><a href="historyorder">Lịch sử đặt hàng</a></li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer_bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="copyright_area">
                        <p class="copyright-text">&copy; 2022 <a href="index.jsp">Lukani</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "105632038812631");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v13.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
    <!--End of Tawk.to Script-->
    
</footer>
<!--footer area end-->