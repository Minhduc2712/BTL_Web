    

<%@page import="data.CookieUtil"%>
<%@page import="Dao.UserDAO"%>
<%@page import="model.User"%>
<%@page import="Dao.CategoryDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Category> listT = CategoryDao.getCategorys("túi");
    ArrayList<Category> listPK = CategoryDao.getCategorys("phụ kiện");
    session.setAttribute("listT", listT);
    session.setAttribute("listPK", listPK);
%>
<div class="offcanvas_menu">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="canvas_open">
                    <a href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                </div>
                <div class="offcanvas_menu_wrapper">
                    <div class="canvas_close">
                        <a href="javascript:void(0)"><i class="fas fa-times"></i></a>
                    </div>
                    <div class="welcome-text">
                        <p>Free Delivery: Take advantage of our time to save event</p>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <div class="language_currency text-right">
                            <ul>
                                <c:choose>
                                    <c:when test="${cookie.cmail.value!=null}">
                                        <%
                                            Cookie[] cookies = request.getCookies();
                                            String email = CookieUtil.getCookieValue(cookies, "cmail");
                                            String password = CookieUtil.getCookieValue(cookies, "cpassword");
                                            User u = UserDAO.checkUser(email, password);
                                            session.setAttribute("user", u);
                                        %>
                                        <li>Xin chào ${user.username}</li>
                                        <li ><a href="logout">Đăng xuất</a>
                                        </c:when>
                                        <c:when test="${user.username!=null}">
                                        <li>Xin chào ${user.username}</li>
                                        <li ><a href="logout">Đăng xuất</a>
                                        </c:when>
                                        <c:otherwise>
                                        <li><a href="login">Đăng nhập</a>
                                        </li>
                                        <li ><a href="register">Đăng kí</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose> 
                            </ul>
                        </div>
                    </div>
                    <div class="search_container">
                        <form action="search" method="post">
                            <div class="search_box">
                                <input placeholder="Search product..." type="text">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="call-support">
                        <p>Số điện thoại liên hệ: <a href="tel:0123456789">0123456789</a></p>
                    </div>
                    <div id="menu" class="text-left ">
                        <ul class="offcanvas_main_menu">
                            <li class="menu-item-has-children active">
                                <a href="index.jsp">Trang chủ</a>
                            </li>
                            <c:if test="${user.isadmin==1}">
                                <li class="menu-item-has-children active">
                                    <a href="shopadmin.jsp">Shop Admin</a>
                                </li>    
                            </c:if>
                            <li class="menu-item-has-children">
                                <a href="shop">Tất cả sản phẩm</a>
                                <ul class="sub-menu">
                                    <li class="menu-item-has-children">
                                        <a href="shop?idCategory=PK">Phụ kiện</a>
                                        <ul class="sub-menu">
                                            <c:forEach var="o" items="${listPK}">
                                                <li><a href="shop?idCategory=${o.id}">${o.name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children">
                                        <a href="shop?idCategory=T">Túi</a>
                                        <ul class="sub-menu">
                                            <c:forEach var="o" items="${listT}">
                                                <li><a href="shop?idCategory=${o.id}">${o.name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </li> 
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="offcanvas_footer">
                        <span><a href="#"><i class="fa fa-envelope-o"></i> demo@example.com</a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<header>
    <div class="main_header">
        <div class="header_top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-7">
                        <div class="welcome-text">
                            <p>Free Delivery: Take advantage of our time to save event</p>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <div class="language_currency text-right">
                            <ul>
                                <c:choose>
                                    <c:when test="${cookie.cmail.value!=null}">
                                        <%
                                            Cookie[] cookies1 = request.getCookies();
                                            String email1 = CookieUtil.getCookieValue(cookies1, "cmail");
                                            String password1 = CookieUtil.getCookieValue(cookies1, "cpassword");
                                            User u1 = UserDAO.checkUser(email1, password1);
                                            session.setAttribute("user", u1);
                                        %>
                                        <li>Xin chào ${user.username}</li>
                                        <li ><a href="logout">Đăng xuất</a>
                                        </c:when>
                                        <c:when test="${user.username!=null}">
                                        <li>Xin chào ${user.username}</li>
                                        <li ><a href="logout">Đăng xuất</a>
                                        </c:when>
                                        <c:otherwise>
                                        <li><a href="login">Đăng nhập</a>
                                        </li>
                                        <li ><a href="register">Đăng kí</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose> 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header_middle">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-3 col-4">
                        <div class="logo">
                            <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-6 col-6">
                        <div class="header_right_info">
                            <div class="search_container">
                                <form action="search" method="get">
                                    <div class="search_box">
                                        <input placeholder="Search product..." type="text" name="search">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                            <div class="header_account_area">
                                <div class="header_account-list top_links">
                                    <a href="#"><i class="fa fa-user"></i></a>
                                    <ul class="dropdown_links">
                                        <li><a href="checkout">Checkout</a></li>
                                    </ul>
                                </div>
                                <div class="header_account-list  mini_cart_wrapper">
                                    <a href="cart"><i class="fa fa-shopping-bag"></i></a>
                                    <!--mini cart-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom sticky-header">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <!--main menu start-->
                            <div class="main_menu menu_position">
                                <nav>
                                    <ul>
                                        <li><a class="active" href="index.jsp">Trang chủ</a>
                                        </li>
                                        <li class="mega_items"><a href="shop">Tất cả sản phẩm<i
                                                    class="fa fa-angle-down"></i></a>
                                            <div class="mega_menu">
                                                <ul class="mega_menu_inner">
                                                    <li><a href="shop?idCategory=PK">Phụ kiện</a>
                                                        <ul>
                                                            <c:forEach var="o" items="${listPK}">
                                                                <li><a href="shop?idCategory=${o.id}">${o.name}</a></li>
                                                                </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <li><a href="shop?idCategory=T">Túi</a>
                                                        <ul>
                                                            <c:forEach var="o" items="${listT}">
                                                                <li><a href="shop?idCategory=${o.id}">${o.name}</a></li>
                                                                </c:forEach>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="contact.jsp">Liên hệ</a></li>
                                        <c:if test="${user.isadmin==1}">
                                            <li><a href="shopadmin.jsp">Shop Admin</a></li>    
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
                            <!--main menu end-->
                        </div>
                        <div class="col-lg-6">
                            <div class="call-support">
                                <p>Số điện thoại liên hệ: <a href="tel:0123456789">0123456789</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</header>