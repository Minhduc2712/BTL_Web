	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="utf-8" />
	        <title>Trang chủ | Admim - Films</title>
	        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
	        <meta content="Themesbrand" name="author" />
	        <!-- App favicon -->
	        <link rel="shortcut icon" href="assets/images/favicon.ico">
	
	        <!-- plugin css -->
	        <link href="assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
	
	        <!-- preloader css -->
	        <link rel="stylesheet" href="assets/css/preloader.min.css" type="text/css" />
	
	        <!-- Bootstrap Css -->
	        <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
	        <!-- Icons Css -->
	        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	        <!-- App Css-->
	        <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
	</head>
	<body data-topbar="dark">
	
	    <!-- <body data-layout="horizontal"> -->
	
	        <!-- Begin page -->
	        <div id="layout-wrapper">
	
	            
	            <header id="page-topbar">
	                <div class="navbar-header">
	                    <div class="d-flex">
	                        <!-- LOGO -->
	                        <div class="navbar-brand-box">
	                            <a href="index.html" class="logo logo-dark">
	                                <span class="logo-sm">
	                                    <img src="assets/images/logo-sm.svg" alt="" height="30">
	                                </span>
	                                <span class="logo-lg">
	                                    <img src="assets/images/logo-sm.svg" alt="" height="24"> <span class="logo-txt" data-key="logo">Films</span>
	                                </span>
	                            </a>
	
	                            <a href="index.html" class="logo logo-light">
	                                <span class="logo-sm">
	                                    <img src="assets/images/logo-sm.svg" alt="" height="30">
	                                </span>
	                                <span class="logo-lg">
	                                    <img src="assets/images/logo-sm.svg" alt="" height="24"> <span class="logo-txt" data-key="logo">Films</span>
	                                </span>
	                            </a>
	                        </div>
	
	                        <button type="button" class="btn btn-sm px-3 font-size-16 header-item" id="vertical-menu-btn">
	                            <i class="fa fa-fw fa-bars"></i>
	                        </button>
	
	                        <!-- App Search-->
	                        <form class="app-search d-none d-lg-block">
	                            <div class="position-relative">
	                                <input type="search" class="form-control" placeholder="Search...">
	                                <button class="btn btn-primary" type="button"><i class="bx bx-search-alt align-middle"></i></button>
	                            </div>
	                        </form>
	                    </div>
	
	                    <div class="d-flex">
	
	                        <div class="dropdown d-inline-block d-lg-none ms-2">
	                            <button type="button" class="btn header-item" id="page-header-search-dropdown"
	                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <i data-feather="search" class="icon-lg"></i>
	                            </button>
	                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
	                                aria-labelledby="page-header-search-dropdown">
	        
	                                <form class="p-3">
	                                    <div class="form-group m-0">
	                                        <div class="input-group">
	                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Search Result">
	
	                                            <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
	                                        </div>
	                                    </div>
	                                </form>
	                            </div>
	                        </div>
	
	                        <div class="dropdown d-none d-sm-inline-block">
	                            <button type="button" class="btn header-item"
	                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <img id="header-lang-img" src="assets/images/flags/vi.jpg" alt="Header Language" height="16">
	                            </button>
	                            <div class="dropdown-menu dropdown-menu-end">
	
	                                <!-- item-->
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="vi">
	                                    <img src="assets/images/flags/vi.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Việt nam</span>
	                                </a>
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="en">
	                                    <img src="assets/images/flags/us.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">English</span>
	                                </a>
	                                <!-- item-->
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="sp">
	                                    <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
	                                </a>
	
	                                <!-- item-->
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="gr">
	                                    <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
	                                </a>
	
	                                <!-- item-->
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="it">
	                                    <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
	                                </a>
	
	                                <!-- item-->
	                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ru">
	                                    <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
	                                </a>
	                            </div>
	                        </div>
	
	                        <div class="dropdown d-none d-sm-inline-block">
	                            <button type="button" class="btn header-item" id="mode-setting-btn">
	                                <i data-feather="moon" class="icon-lg layout-mode-dark"></i>
	                                <i data-feather="sun" class="icon-lg layout-mode-light"></i>
	                            </button>
	                        </div>
	
	                        <div class="dropdown d-none d-lg-inline-block ms-1">
	                            <button type="button" class="btn header-item"
	                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <i data-feather="grid" class="icon-lg"></i>
	                            </button>
	                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
	                                <div class="p-2">
	                                    <div class="row g-0">
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/github.png" alt="Github">
	                                                <span>GitHub</span>
	                                            </a>
	                                        </div>
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/bitbucket.png" alt="bitbucket">
	                                                <span>Bitbucket</span>
	                                            </a>
	                                        </div>
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/dribbble.png" alt="dribbble">
	                                                <span>Dribbble</span>
	                                            </a>
	                                        </div>
	                                    </div>
	
	                                    <div class="row g-0">
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/dropbox.png" alt="dropbox">
	                                                <span>Dropbox</span>
	                                            </a>
	                                        </div>
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/mail_chimp.png" alt="mail_chimp">
	                                                <span>Mail Chimp</span>
	                                            </a>
	                                        </div>
	                                        <div class="col">
	                                            <a class="dropdown-icon-item" href="#">
	                                                <img src="assets/images/brands/slack.png" alt="slack">
	                                                <span>Slack</span>
	                                            </a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="dropdown d-inline-block">
	                            <button type="button" class="btn header-item noti-icon position-relative" id="page-header-notifications-dropdown"
	                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <i data-feather="bell" class="icon-lg"></i>
	                                <span class="badge bg-success rounded-pill">5</span>
	                            </button>
	                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
	                                aria-labelledby="page-header-notifications-dropdown">
	                                <div class="p-3">
	                                    <div class="row align-items-center">
	                                        <div class="col">
	                                            <h6 class="m-0" data-key="t-notifications"> Notifications </h6>
	                                        </div>
	                                        <div class="col-auto">
	                                            <a href="#!" class="small text-reset text-decoration-underline"> Unread (3)</a>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div data-simplebar style="max-height: 230px;">
	                                    <a href="#!" class="text-reset notification-item">
	                                        <div class="d-flex">
	                                            <div class="flex-shrink-0 me-3">
	                                                <img src="assets/images/users/avatar-3.jpg" class="rounded-circle avatar-sm" alt="user-pic">
	                                            </div>
	                                            <div class="flex-grow-1">
	                                                <h6 class="mb-1">James Lemire</h6>
	                                                <div class="font-size-13 text-muted">
	                                                    <p class="mb-1">It will seem like simplified English.</p>
	                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>1 hours ago</span></p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                    <a href="#!" class="text-reset notification-item">
	                                        <div class="d-flex">
	                                            <div class="flex-shrink-0 avatar-sm me-3">
	                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
	                                                    <i class="bx bx-cart"></i>
	                                                </span>
	                                            </div>
	                                            <div class="flex-grow-1">
	                                                <h6 class="mb-1">Your order is placed</h6>
	                                                <div class="font-size-13 text-muted">
	                                                    <p class="mb-1">If several languages coalesce the grammar</p>
	                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>3 min ago</span></p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                    <a href="#!" class="text-reset notification-item">
	                                        <div class="d-flex">
	                                            <div class="flex-shrink-0 avatar-sm me-3">
	                                                <span class="avatar-title bg-success rounded-circle font-size-16">
	                                                    <i class="bx bx-badge-check"></i>
	                                                </span>
	                                            </div>
	                                            <div class="flex-grow-1">
	                                                <h6 class="mb-1">Your item is shipped</h6>
	                                                <div class="font-size-13 text-muted">
	                                                    <p class="mb-1">If several languages coalesce the grammar</p>
	                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>3 min ago</span></p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </a>
	
	                                    <a href="#!" class="text-reset notification-item">
	                                        <div class="d-flex">
	                                            <div class="flex-shrink-0 me-3">
	                                                <img src="assets/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="user-pic">
	                                            </div>
	                                            <div class="flex-grow-1">
	                                                <h6 class="mb-1">Salena Layfield</h6>
	                                                <div class="font-size-13 text-muted">
	                                                    <p class="mb-1">As a skeptical Cambridge friend of mine occidental.</p>
	                                                    <p class="mb-0"><i class="mdi mdi-clock-outline"></i> <span>1 hours ago</span></p>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </div>
	                                <div class="p-2 border-top d-grid">
	                                    <a class="btn btn-sm btn-link font-size-14 text-center" href="javascript:void(0)">
	                                        <i class="mdi mdi-arrow-right-circle me-1"></i> <span>View More..</span> 
	                                    </a>
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="dropdown d-inline-block">
	                            <button type="button" class="btn header-item right-bar-toggle me-2">
	                                <i data-feather="settings" class="icon-lg"></i>
	                            </button>
	                        </div>
	
	                        <div class="dropdown d-inline-block">
	                            <button type="button" class="btn header-item bg-light-subtle border-start border-end" id="page-header-user-dropdown"
	                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                <img class="rounded-circle header-profile-user" src="assets/images/users/avatar-1.jpg"
	                                    alt="Header Avatar">
	                                <span class="d-none d-xl-inline-block ms-1 fw-medium">Paul K.</span>
	                                <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
	                            </button>
	                            <div class="dropdown-menu dropdown-menu-end">
	                                <!-- item-->
	                                <a class="dropdown-item" href="apps-contacts-profile.html"><i class="mdi mdi-face-profile font-size-16 align-middle me-1"></i> Profile</a>
	                                <a class="dropdown-item" href="auth-lock-screen.html"><i class="mdi mdi-lock font-size-16 align-middle me-1"></i> Lock screen</a>
	                                <div class="dropdown-divider"></div>
	                                <a class="dropdown-item" href="auth-logout.html"><i class="mdi mdi-logout font-size-16 align-middle me-1"></i> Logout</a>
	                            </div>
	                        </div>
	
	                    </div>
	                </div>
	            </header>
	
	            <!-- ========== Left Sidebar Start ========== -->
	            <div class="vertical-menu">
	
	                <div data-simplebar class="h-100">
	
	                    <!--- Sidemenu -->
	                    <div id="sidebar-menu">
	                        <!-- Left Menu Start -->
	                        <ul class="metismenu list-unstyled" id="side-menu">
	                            <li class="menu-title" data-key="t-menu">Menu</li>
	
	                            <li>
	                                <a href="index.html">
	                                    <i data-feather="home"></i>
	                                    <span class="badge rounded-pill bg-success-subtle text-success float-end">9+</span>
	                                    <span data-key="t-dashboard">Dashboard</span>
	                                </a>
	                            </li>
	
	                            <li class="menu-title" data-key="t-apps">Apps</li>
	                
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i class='bx bx-briefcase' ></i>
	                                    <span data-key="t-ecommerce">Ecommerce</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="ecommerce-products.html" data-key="t-films">Products</a></li>
	                                    <li><a href="ecommerce-product-detail.html" data-key="t-films-detail">Product Detail</a></li>
	                                    <li><a href="ecommerce-orders.html" data-key="t-list-user">Orders</a></li>
	                                    <li><a href="ecommerce-customers.html" data-key="t-range">Customers</a></li>
	                                    <li><a href="ecommerce-cart.html" data-key="t-favourite">Cart</a></li>
	                                    <li><a href="ecommerce-checkout.html" data-key="t-checkout">Checkout</a></li>
	                                    <li><a href="ecommerce-shops.html" data-key="t-shops">Shops</a></li>
	                                    <li><a href="ecommerce-add-product.html" data-key="t-add-films">Add Product</a></li>
	                                    <li><a href="ecommerce-seller.html" data-key="t-seller">Seller
	                                        <span class="badge rounded-pill bg-danger-subtle text-danger float-end" data-key="t-new">New</span>
	                                    </a></li>
	                                    <li><a href="ecommerce-sale-details.html" data-key="t-sale-details">Sale details
	                                        <span class="badge rounded-pill bg-danger-subtle text-danger float-end" data-key="t-new">New</span>
	                                    </a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="apps-chat.html">
	                                    <i data-feather="message-square"></i>
	                                    <span data-key="t-chat">Chat</span>
	                                </a>
	                            </li>
	                            <li>
	                                <a href="apps-notifications.html">
	                                    <i class='bx bxs-bell'></i>
	                                    <span data-key="t-notifications">Chat</span>
	                                </a>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="mail"></i>
	                                    <span data-key="t-email">Email</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="apps-email-inbox.html" data-key="t-inbox">Inbox</a></li>
	                                    <li><a href="apps-email-read.html" data-key="t-read-email">Read Email</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="apps-calendar.html">
	                                    <i data-feather="calendar"></i>
	                                    <span data-key="t-calendar">Calendar</span>
	                                </a>
	                            </li>
	                
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="users"></i>
	                                    <span data-key="t-contacts">Contacts</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="apps-contacts-grid.html" data-key="t-user-grid">User Grid</a></li>
	                                    <li><a href="apps-contacts-list.html" data-key="t-user-list">User List</a></li>
	                                    <li><a href="apps-contacts-profile.html" data-key="t-profile">Profile</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="trello"></i>
	                                    <span data-key="t-tasks">Tasks</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="tasks-list.html" key="t-task-list">Task List</a></li>
	                                    <li><a href="tasks-kanban.html" key="t-kanban-board">Kanban Board</a></li>
	                                    <li><a href="tasks-create.html" key="t-create-task">Create Task</a></li>
	                                </ul>
	                            </li>
	
	                            <li class="menu-title" data-key="t-pages">Pages</li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="layers"></i>
	                                    <span data-key="t-authentication">Authentication</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="auth-login.html" data-key="t-login">Login</a></li>
	                                    <li><a href="auth-register.html" data-key="t-register">Register</a></li>
	                                    <li><a href="auth-recoverpw.html" data-key="t-recover-password">Recover Password</a></li>
	                                    <li><a href="auth-lock-screen.html" data-key="t-lock-screen">Lock Screen</a></li>
	                                    <li><a href="auth-logout.html" data-key="t-logout">Log Out</a></li>
	                                    <li><a href="auth-confirm-mail.html" data-key="t-confirm-mail">Confirm Mail</a></li>
	                                    <li><a href="auth-email-verification.html" data-key="t-email-verification">Email Verification</a></li>
	                                    <li><a href="auth-two-step-verification.html" data-key="t-two-step-verification">Two Step Verification</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="file-text"></i>
	                                    <span data-key="t-pages">Pages</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="pages-starter.html" data-key="t-starter-page">Starter Page</a></li>
	                                    <li><a href="pages-maintenance.html" data-key="t-maintenance">Maintenance</a></li>
	                                    <li><a href="pages-comingsoon.html" data-key="t-coming-soon">Coming Soon</a></li>
	                                    <li><a href="pages-timeline.html" data-key="t-timeline">Timeline</a></li>
	                                    <li><a href="pages-faqs.html" data-key="t-faqs">FAQs</a></li>
	                                    <li><a href="pages-pricing.html" data-key="t-pricing">Pricing</a></li>
	                                    <li><a href="pages-404.html" data-key="t-error-404">Error 404</a></li>
	                                    <li><a href="pages-500.html" data-key="t-error-500">Error 500</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="layouts-horizontal.html">
	                                    <i data-feather="layout"></i>
	                                    <span data-key="t-horizontal">Horizontal</span>
	                                </a>
	                            </li>
	
	                            <li class="menu-title mt-2" data-key="t-components">Components</li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="briefcase"></i>
	                                    <span data-key="t-components">Bootstrap</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="ui-alerts.html" data-key="t-alerts">Alerts</a></li>
	                                    <li><a href="ui-buttons.html" data-key="t-buttons">Buttons</a></li>
	                                    <li><a href="ui-cards.html" data-key="t-cards">Cards</a></li>
	                                    <li><a href="ui-carousel.html" data-key="t-carousel">Carousel</a></li>
	                                    <li><a href="ui-dropdowns.html" data-key="t-dropdowns">Dropdowns</a></li>
	                                    <li><a href="ui-grid.html" data-key="t-grid">Grid</a></li>
	                                    <li><a href="ui-images.html" data-key="t-images">Images</a></li>
	                                    <li><a href="ui-modals.html" data-key="t-modals">Modals</a></li>
	                                    <li><a href="ui-offcanvas.html" data-key="t-offcanvas">Offcanvas</a></li>
	                                    <li><a href="ui-progressbars.html" data-key="t-progress-bars">Progress Bars</a></li>
	                                    <li><a href="ui-placeholders.html" data-key="t-progress-bars">Placeholders</a></li>
	                                    <li><a href="ui-tabs-accordions.html" data-key="t-tabs-accordions">Tabs & Accordions</a></li>
	                                    <li><a href="ui-typography.html" data-key="t-typography">Typography</a></li>
	                                    <li><a href="ui-video.html" data-key="t-video">Video</a></li>
	                                    <li><a href="ui-general.html" data-key="t-general">General</a></li>
	                                    <li><a href="ui-colors.html" data-key="t-colors">Colors</a></li>
	                                    <li><a href="ui-utilities.html" data-key="t-utility">Utilities
	                                        <span class="badge rounded-pill bg-danger-subtle text-danger float-end">New</span>
	                                    </a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="gift"></i>
	                                    <span data-key="t-ui-elements">Extended</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="extended-lightbox.html" data-key="t-lightbox">Lightbox</a></li>
	                                    <li><a href="extended-rangeslider.html" data-key="t-range-slider">Range Slider</a></li>
	                                    <li><a href="extended-sweet-alert.html" data-key="t-sweet-alert">SweetAlert 2</a></li>
	                                    <li><a href="extended-session-timeout.html" data-key="t-session-timeout">Session Timeout</a></li>
	                                    <li><a href="extended-rating.html" data-key="t-rating">Rating</a></li>
	                                    <li><a href="extended-notifications.html" data-key="t-notifications">Notifications</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);">
	                                    <i data-feather="box"></i>
	                                    <span class="badge rounded-pill bg-danger-subtle text-danger float-end">7</span>
	                                    <span data-key="t-forms">Forms</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="form-elements.html" data-key="t-form-elements">Basic Elements</a></li>
	                                    <li><a href="form-validation.html" data-key="t-form-validation">Validation</a></li>
	                                    <li><a href="form-advanced.html" data-key="t-form-advanced">Advanced Plugins</a></li>
	                                    <li><a href="form-editors.html" data-key="t-form-editors">Editors</a></li>
	                                    <li><a href="form-uploads.html" data-key="t-form-upload">File Upload</a></li>
	                                    <li><a href="form-wizard.html" data-key="t-form-wizard">Wizard</a></li>
	                                    <li><a href="form-mask.html" data-key="t-form-mask">Mask</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="sliders"></i>
	                                    <span data-key="t-tables">Tables</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="tables-basic.html" data-key="t-basic-tables">Bootstrap Basic</a></li>
	                                    <li><a href="tables-datatable.html" data-key="t-data-tables">DataTables</a></li>
	                                    <li><a href="tables-responsive.html" data-key="t-responsive-table">Responsive</a></li>
	                                    <li><a href="tables-editable.html" data-key="t-editable-table">Editable</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="pie-chart"></i>
	                                    <span data-key="t-charts">Charts</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="charts-apex.html" data-key="t-apex-charts">Apexcharts</a></li>
	                                    <li><a href="charts-echart.html" data-key="t-e-charts">Echarts</a></li>
	                                    <li><a href="charts-chartjs.html" data-key="t-chartjs-charts">Chartjs</a></li>
	                                    <li><a href="charts-knob.html" data-key="t-knob-charts">Jquery Knob</a></li>
	                                    <li><a href="charts-sparkline.html" data-key="t-sparkline-charts">Sparkline</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="cpu"></i>
	                                    <span data-key="t-icons">Icons</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="icons-feather.html" data-key="t-feather">Feather</a></li>
	                                    <li><a href="icons-boxicons.html" data-key="t-boxicons">Boxicons</a></li>
	                                    <li><a href="icons-materialdesign.html" data-key="t-material-design">Material Design</a></li>
	                                    <li><a href="icons-dripicons.html" data-key="t-dripicons">Dripicons</a></li>
	                                    <li><a href="icons-fontawesome.html" data-key="t-font-awesome">Font Awesome 5</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="map"></i>
	                                    <span data-key="t-maps">Maps</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="false">
	                                    <li><a href="maps-google.html" data-key="t-g-maps">Google</a></li>
	                                    <li><a href="maps-vector.html" data-key="t-v-maps">Vector</a></li>
	                                    <li><a href="maps-leaflet.html" data-key="t-l-maps">Leaflet</a></li>
	                                </ul>
	                            </li>
	
	                            <li>
	                                <a href="javascript: void(0);" class="has-arrow">
	                                    <i data-feather="share-2"></i>
	                                    <span data-key="t-multi-level">Multi Level</span>
	                                </a>
	                                <ul class="sub-menu" aria-expanded="true">
	                                    <li><a href="javascript: void(0);" data-key="t-level-1-1">Level 1.1</a></li>
	                                    <li>
	                                        <a href="javascript: void(0);" class="has-arrow" data-key="t-level-1-2">Level 1.2</a>
	                                        <ul class="sub-menu" aria-expanded="true">
	                                            <li><a href="javascript: void(0);" data-key="t-level-2-1">Level 2.1</a></li>
	                                            <li><a href="javascript: void(0);" data-key="t-level-2-2">Level 2.2</a></li>
	                                        </ul>
	                                    </li>
	                                </ul>
	                            </li>
	
	                        </ul>
	
	                        <div class="card sidebar-alert shadow-none text-center mx-4 mb-0 mt-5">
	                            <div class="card-body">
	                                <img src="assets/images/giftbox.png" alt="">
	                                <div class="mt-4">
	                                    <h5 class="alertcard-title font-size-16">Unlimited Access</h5>
	                                    <p class="font-size-13 text-dark">Upgrade your plan from a Free trial, to select ‘Business Plan’.</p>
	                                    <a href="#!" class="btn btn-primary mt-2">Upgrade Now</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- Sidebar -->
	                </div>
	            </div>
	            <!-- Left Sidebar End -->
	
	            
	
	            <!-- ============================================================== -->
	            <!-- Start right Content here -->
	            <!-- ============================================================== -->
	            <div class="main-content">
	
	                <div class="page-content">
	                    <div class="container-fluid">
	
	                        <!-- start page title -->
	                        <div class="row">
	                            <div class="col-12">
	                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
	                                    <h4 class="mb-sm-0 font-size-18" data-key="t-wellcome">Welcome !</h4>
	
	                                    <div class="page-title-right">
	                                        <ol class="breadcrumb m-0">
	                                            <li class="breadcrumb-item"><a href="javascript: void(0);" data-key="t-dashboard">Dashboard</a></li>
	                                            <li class="breadcrumb-item active" data-key="t-wellcome">Welcome !</li>
	                                        </ol>
	                                    </div>
	
	                                </div>
	                            </div>
	                        </div>
	                        <!-- end page title -->
	
	                        <div class="row">
	                            <div class="col-12">
	                                <div class="col-xl-12 col-sm-12 text-end">
	                                    <div class="btn btn-primary btn-rounded waves-effect waves-light mb-2 me-2 ">
	                                        <i class='bx bx-export'></i>
	                                        Báo cáo
	                                    </div>
	                                    
	                                </div>
	                            </div>
	                        </div>
	
	                        <div class="row">
	                            <div class="col-xl-3 col-md-6">
	                                <!-- card -->
	                                <div class="card card-h-100">
	                                    <!-- card body -->
	                                    <div class="card-body">
	                                        <div class="d-flex align-items-center">
	                                            <div class="flex-grow-1">
	                                                <span class="text-muted mb-3 lh-1 d-block text-truncate" data-key="t-total-user">Total Sales</span>
	                                                <h4 class="mb-3">
	                                                    <span class="counter-value" data-target="100000">0</span>
	                                                </h4>
	                                                <div class="text-nowrap">
	                                                    <span class="badge bg-success-subtle text-success">+ 50000</span>
	                                                    <span class="ms-1 text-muted font-size-13" data-key="t-last-week">Since last week</span>
	                                                </div>
	                                            </div>
	        
	                                            <div class="flex-shrink-0 text-end dash-widget">
	                                                <div id="mini-chart1" data-colors='["--bs-primary", "--bs-success"]' class="apex-charts"></div>
	                                            </div>
	                                        </div>
	                                    </div><!-- end card body -->
	                                </div><!-- end card -->
	                            </div><!-- end col -->
	        
	                            <div class="col-xl-3 col-md-6">
	                                <!-- card -->
	                                <div class="card card-h-100">
	                                    <!-- card body -->
	                                    <div class="card-body">
	                                        <div class="d-flex align-items-center">
	                                            <div class="flex-grow-1">
	                                                <span class="text-muted mb-3 lh-1 d-block text-truncate" data-key="t-total-films">Total Items</span>
	                                                <h4 class="mb-3"> 
	                                                    <span class="counter-value" data-target="1256">0</span>
	                                                </h4>
	                                                <div class="text-nowrap">
	                                                    <span class="badge bg-success-subtle text-success">+ 200 bộ</span>
	                                                    <span class="ms-1 text-muted font-size-13" data-key="t-last-week">Since last week</span>
	                                                </div>
	                                            </div>
	                                            <div class="flex-shrink-0 text-end dash-widget">
	                                                <div id="mini-chart2" data-colors='["--bs-primary", "--bs-success"]' class="apex-charts"></div>
	                                            </div>
	                                        </div>
	                                    </div><!-- end card body -->
	                                </div><!-- end card -->
	                            </div><!-- end col-->
	        
	                            <div class="col-xl-3 col-md-6">
	                                <!-- card -->
	                                <div class="card card-h-100">
	                                    <!-- card body -->
	                                    <div class="card-body">
	                                        <div class="d-flex align-items-center">
	                                            <div class="flex-grow-1">
	                                                <span class="text-muted mb-3 lh-1 d-block text-truncate"data-key="t-total-qc" >Average Sales</span>
	                                                <h4 class="mb-3">
	                                                    <span class="counter-value" data-target="1000">0</span>
	                                                </h4>
	                                                <div class="text-nowrap">
	                                                    <span class="badge bg-success-subtle text-success">+ 20</span>
	                                                    <span class="ms-1 text-muted font-size-13" data-key="t-last-week">Since last week</span>
	                                                </div>
	                                            </div>
	                                            <div class="flex-shrink-0 text-end dash-widget">
	                                                <div id="mini-chart3" data-colors='["--bs-primary", "--bs-success"]' class="apex-charts"></div>
	                                            </div>
	                                        </div>
	                                    </div><!-- end card body -->
	                                </div><!-- end card -->
	                            </div><!-- end col -->
	        
	                            <div class="col-xl-3 col-md-6">
	                                <!-- card -->
	                                <div class="card card-h-100">
	                                    <!-- card body -->
	                                    <div class="card-body">
	                                        <div class="d-flex align-items-center">
	                                            <div class="flex-grow-1">
	                                                <span class="text-muted mb-3 lh-1 d-block text-truncate" data-key="t-total-revenue">Order Delivery</span>
	                                                <h4 class="mb-3">
	                                                    <span class="counter-value" data-target="180">0</span>M VNĐ
	                                                </h4>
	                                                <div class="text-nowrap">
	                                                    <span class="badge bg-success-subtle text-success">+5.32%</span>
	                                                    <span class="ms-1 text-muted font-size-13" data-key="t-last-week">Since last week</span>
	                                                </div>
	                                            </div>
	                                            <div class="flex-shrink-0 text-end dash-widget">
	                                                <div id="mini-chart4" data-colors='["--bs-primary", "--bs-success"]' class="apex-charts"></div>
	                                            </div>
	                                        </div>
	                                    </div><!-- end card body -->
	                                </div><!-- end card -->
	                            </div><!-- end col -->    
	                        </div><!-- end row-->
	
	                        <div class="row">
	                            <div class="col-xl-8">
	                                <!-- card -->
	                                <div class="card">
	                                    <!-- card body -->
	                                    <div class="card-body">
	                                        <div class="d-flex flex-wrap align-items-center mb-4">
	                                            <h5 class="card-title me-2">Market Overview</h5>
	                                            <div class="ms-auto">
	                                                <div>
	                                                    <button type="button" class="btn btn-soft-primary btn-sm">
	                                                        ALL
	                                                    </button>
	                                                    <button type="button" class="btn btn-soft-secondary btn-sm">
	                                                        1M
	                                                    </button>
	                                                    <button type="button" class="btn btn-soft-secondary btn-sm">
	                                                        6M
	                                                    </button>
	                                                    <button type="button" class="btn btn-soft-secondary btn-sm">
	                                                        1Y
	                                                    </button>
	                                                </div>
	                                            </div>
	                                        </div>
	
	                                        <div class="row align-items-center">
	                                            <div class="col-xl-8">
	                                                <div>
	                                                    <div id="market-overview" data-colors='["--bs-primary", "--bs-success"]' class="apex-charts"></div>
	                                                </div>
	                                            </div>
	                                            <div class="col-xl-4">
	                                                <div class="p-4">
	                                                    <div class="mt-0">
	                                                        <div class="d-flex align-items-center">
	                                                            <div class="avatar-sm m-auto">
	                                                                <span class="avatar-title rounded-circle bg-light text-dark font-size-13">
	                                                                    1
	                                                                </span>
	                                                            </div>
	                                                            <div class="flex-grow-1 ms-3">
	                                                                <span class="font-size-14">Mobile Phones</span>
	                                                            </div>
	        
	                                                            <div class="flex-shrink-0">
	                                                                <span class="badge rounded-pill bg-success-subtle text-success  font-size-12 fw-medium">+5.4%</span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	        
	                                                    <div class="mt-3">
	                                                        <div class="d-flex align-items-center">
	                                                            <div class="avatar-sm m-auto">
	                                                                <span class="avatar-title rounded-circle bg-light text-dark font-size-13">
	                                                                    2
	                                                                </span>
	                                                            </div>
	                                                            <div class="flex-grow-1 ms-3">
	                                                                <span class="font-size-14">Smart Watch</span>
	                                                            </div>
	        
	                                                            <div class="flex-shrink-0">
	                                                                <span class="badge rounded-pill bg-success-subtle text-success  font-size-12 fw-medium">+6.8%</span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	        
	                                                    <div class="mt-3">
	                                                        <div class="d-flex align-items-center">
	                                                            <div class="avatar-sm m-auto">
	                                                                <span class="avatar-title rounded-circle bg-light text-dark font-size-13">
	                                                                    3
	                                                                </span>
	                                                            </div>
	                                                            <div class="flex-grow-1 ms-3">
	                                                                <span class="font-size-14">Protable Acoustics</span>
	                                                            </div>
	        
	                                                            <div class="flex-shrink-0">
	                                                                <span class="badge rounded-pill bg-danger-subtle text-danger  font-size-12 fw-medium">-4.9%</span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	        
	                                                    <div class="mt-3">
	                                                        <div class="d-flex align-items-center">
	                                                            <div class="avatar-sm m-auto">
	                                                                <span class="avatar-title rounded-circle bg-light text-dark font-size-13">
	                                                                    4
	                                                                </span>
	                                                            </div>
	                                                            <div class="flex-grow-1 ms-3">
	                                                                <span class="font-size-14">Smart Speakers</span>
	                                                            </div>
	        
	                                                            <div class="flex-shrink-0">
	                                                                <span class="badge rounded-pill bg-success-subtle text-success  font-size-12 fw-medium">+3.5%</span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	
	                                                    <div class="mt-3">
	                                                        <div class="d-flex align-items-center">
	                                                            <div class="avatar-sm m-auto">
	                                                                <span class="avatar-title rounded-circle bg-light text-dark font-size-13">
	                                                                    5
	                                                                </span>
	                                                            </div>
	                                                            <div class="flex-grow-1 ms-3">
	                                                                <span class="font-size-14">Camcorders</span>
	                                                            </div>
	        
	                                                            <div class="flex-shrink-0">
	                                                                <span class="badge rounded-pill bg-danger-subtle text-danger  font-size-12 fw-medium">-0.3%</span>
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                    <div class="mt-4 pt-2">
	                                                        <a href="" class="btn btn-primary w-100">See All Balances <i
	                                                                class="mdi mdi-arrow-right ms-1"></i></a>
	                                                    </div>
	        
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <!-- end card -->
	                                </div>
	                                <!-- end col -->
	                            </div>
	                            <!-- end row-->
	        
	                            <div class="col-xl-4">
	                                <div class="card">
	                                    <div class="card-header align-items-center d-flex">
	                                        <h4 class="card-title mb-0 flex-grow-1" data-key="t-list-user">Customer List</h4>
	                                        <div class="flex-shrink-0">
	                                            <div class="dropdown">
	                                                <a class=" dropdown-toggle" href="#" id="dropdownMenuButton2"
	                                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                    <span class="text-muted" ><span data-key="t-all-user">All Members</span><i class="mdi mdi-chevron-down ms-1"></i></span>
	                                                </a>
	                        
	                                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton2">
	                                                    <a class="dropdown-item" href="#" data-key="t-user">Members</a>
	                                                    <a class="dropdown-item" href="#" data-key="t-new-user">New Members</a>
	                                                    <a class="dropdown-item" href="#" data-key="t-old-user">Old Members</a>
	                                                    <a class="dropdown-item" href="#" data-key="t-premium-user"></a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div><!-- end card header -->
	
	                                    <div class="card-body px-0">
	                                        <div class="px-3" data-simplebar style="max-height: 386px;">
	                                            <div class="d-flex align-items-center pb-4">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Randy Matthews</a></h5>
	                                                    <span class="text-muted">Randy@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	
	                                            <div class="d-flex align-items-center pb-4">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Vernon Wood</a></h5>
	                                                    <span class="text-muted">Vernon@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	
	                                            <div class="d-flex align-items-center pb-4">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-5.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Howard Rhoades</a></h5>
	                                                    <span class="text-muted">Howard@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	
	                                            <div class="d-flex align-items-center pb-4">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-6.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Arthur Zurcher</a></h5>
	                                                    <span class="text-muted">Arthur@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	
	                                            <div class="d-flex align-items-center pb-4">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-8.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Angela Palmer</a></h5>
	                                                    <span class="text-muted">Angela@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	
	                                            <div class="d-flex align-items-center pb-3">
	                                                <div class="avatar-md me-4">
	                                                    <img src="./assets/images/users/avatar-9.jpg" class="img-fluid rounded-circle" alt="">
	                                                </div>
	                                                <div class="flex-grow-1">
	                                                    <h5 class="font-size-15 mb-1"><a href="" class="text-dark">Dorothy Wimson</a></h5>
	                                                    <span class="text-muted">Dorothy@gmail.com</span>
	                                                </div>
	                                                <div class="flex-shrink-0 text-end">
	                                                    <div class="dropdown align-self-start">
	                                                        <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                            <i class="bx bx-dots-vertical-rounded font-size-24 text-dark"></i>
	                                                        </a>
	                                                        <div class="dropdown-menu">
	                                                            <a class="dropdown-item" href="#">Copy</a>
	                                                            <a class="dropdown-item" href="#">Save</a>
	                                                            <a class="dropdown-item" href="#">Forward</a>
	                                                            <a class="dropdown-item" href="#">Delete</a>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <!-- end card body -->
	                                </div>
	                                <!-- end card -->
	                            </div>
	                            <!-- end col -->
	                        </div>
	                        <!-- end row-->
	
	                        <div class="row">
	                            
	                            <!-- end col -->
	                            
	                            <div class="col-xl-6">
	                                <div class="card">
	                                    <div class="card-header align-items-center d-flex">
	                                        <h4 class="card-title mb-0 flex-grow-1" data-key="t-series">Selling Products</h4>
	                                        <div class="flex-shrink-0">
	                                            <div class="dropdown align-self-start">
	                                                <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                    <i class="bx bx-dots-horizontal-rounded font-size-18 text-dark"></i>
	                                                </a>
	                                                <div class="dropdown-menu">
	                                                    <a class="dropdown-item" href="#">Copy</a>
	                                                    <a class="dropdown-item" href="#">Save</a>
	                                                    <a class="dropdown-item" href="#">Forward</a>
	                                                    <a class="dropdown-item" href="#">Delete</a>
	                                                </div>
	                                            </div>
	                                        </div>
	
	                                    </div><!-- end card header -->
	
	                                    <div class="card-body px-0 pt-2">
	                                            <div class="table-responsive px-3" data-simplebar style="max-height: 395px;">
	                                                <table class="table align-middle table-nowrap">
	                                                    <tbody>
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-1.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Half sleeve T-shirt</a></h5>
	                                                                    <span class="text-muted">$240.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">243K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">145 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-2.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Light blue T-shirt</a></h5>
	                                                                    <span class="text-muted">$650.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Out Of Stock</a></p>
	                                                                <span class="text-muted">1,253K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">260 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-3.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Black Color T-shirt</a></h5>
	                                                                    <span class="text-muted">$325.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">2,586K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">220 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-4.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Hoodie (Blue)</h5>
	                                                                    <span class="text-muted">$170.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">4,565K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-5.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Half sleeve T-Shirt</h5>
	                                                                    <span class="text-muted">$150.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Out Of Stock</a></p>
	                                                                <span class="text-muted">5,265K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-6.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Green color T-shirt</h5>
	                                                                    <span class="text-muted">$120.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">125K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                    </tbody>
	                                                </table>
	                                            </div>
	                                    </div>
	                                    <!-- end card body -->
	                                </div>
	                                <!-- end card -->
	                            </div>
	                            <div class="col-xl-6">
	                                <div class="card">
	                                    <div class="card-header align-items-center d-flex">
	                                        <h4 class="card-title mb-0 flex-grow-1" data-key="t-series-all">Selling Products</h4>
	                                        <div class="flex-shrink-0">
	                                            <div class="dropdown align-self-start">
	                                                <a class="dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                                                    <i class="bx bx-dots-horizontal-rounded font-size-18 text-dark"></i>
	                                                </a>
	                                                <div class="dropdown-menu">
	                                                    <a class="dropdown-item" href="#">Copy</a>
	                                                    <a class="dropdown-item" href="#">Save</a>
	                                                    <a class="dropdown-item" href="#">Forward</a>
	                                                    <a class="dropdown-item" href="#">Delete</a>
	                                                </div>
	                                            </div>
	                                        </div>
	
	                                    </div><!-- end card header -->
	
	                                    <div class="card-body px-0 pt-2">
	                                            <div class="table-responsive px-3" data-simplebar style="max-height: 395px;">
	                                                <table class="table align-middle table-nowrap">
	                                                    <tbody>
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-1.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Half sleeve T-shirt</a></h5>
	                                                                    <span class="text-muted">$240.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">243K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">145 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-2.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Light blue T-shirt</a></h5>
	                                                                    <span class="text-muted">$650.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Out Of Stock</a></p>
	                                                                <span class="text-muted">1,253K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">260 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-3.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark">Black Color T-shirt</a></h5>
	                                                                    <span class="text-muted">$325.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">2,586K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">220 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-4.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Hoodie (Blue)</h5>
	                                                                    <span class="text-muted">$170.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">4,565K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-5.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Half sleeve T-Shirt</h5>
	                                                                    <span class="text-muted">$150.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Out Of Stock</a></p>
	                                                                <span class="text-muted">5,265K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                        <tr>
	                                                            <td style="width: 50px;">
	                                                                <div class="avatar-md me-4">
	                                                                    <img src="./assets/images/product/img-6.png" class="img-fluid" alt="">
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <div>
	                                                                    <h5 class="font-size-15"><a href="" class="text-dark"></a>Green color T-shirt</h5>
	                                                                    <span class="text-muted">$120.00</span>
	                                                                </div>
	                                                            </td>
	
	                                                            <td>
	                                                                <p class="mb-1"><a href="" class="text-dark">Available</a></p>
	                                                                <span class="text-muted">125K</span>
	                                                            </td>
	
	                                                            <td>
	                                                                <div class="text-end">
	                                                                    <ul class="mb-1 ps-0">
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bxs-star text-warning"></li>
	                                                                        <li class="bx bx-star text-warning"></li>
	                                                                    </ul>
	                                                                    <span class="text-muted mt-1">165 Sales</span>
	                                                                </div>
	                                                            </td>
	                                                        </tr>
	
	                                                    </tbody>
	                                                </table>
	                                            </div>
	                                    </div>
	                                    <!-- end card body -->
	                                </div>
	                                <!-- end card -->
	                            </div>
	                            <!-- end col -->
	
	                            <!-- end col -->
	                        </div><!-- end row -->
	                    </div>
	                    <!-- container-fluid -->
	                </div>
	                <!-- End Page-content -->
	
	                <footer class="footer">
	                    <div class="container-fluid">
	                        <div class="row">
	                            <div class="col-sm-6">
	                                <script>document.write(new Date().getFullYear())</script> © Films.
	                            </div>
	                            <div class="col-sm-6">
	                                <div class="text-sm-end d-none d-sm-block">
	                                    Design & Develop by <a href="#!" class="text-decoration-underline">Nhóm 5</a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </footer>
	            </div>
	            <!-- end main content-->
	
	        </div>
	        <!-- END layout-wrapper -->
	
	        
	        <!-- Right Sidebar -->
	        <div class="right-bar">
	            <div data-simplebar class="h-100">
	                <div class="rightbar-title d-flex align-items-center p-3">
	
	                    <h5 class="m-0 me-2">Theme Customizer</h5>
	
	                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
	                        <i class="mdi mdi-close noti-icon"></i>
	                    </a>
	                </div>
	
	                <!-- Settings -->
	                <hr class="m-0" />
	
	                <div class="p-4">
	                    <h6 class="mb-3">Select Custome Colors</h6>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input theme-color" type="radio" name="theme-mode"
	                            id="theme-default" value="default" onchange="document.documentElement.setAttribute('data-theme-mode', 'default')" checked>
	                        <label class="form-check-label" for="theme-default">Default</label>
	                    </div>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input theme-color" type="radio" name="theme-mode"
	                            id="theme-red" value="red" onchange="document.documentElement.setAttribute('data-theme-mode', 'red')">
	                        <label class="form-check-label" for="theme-red">Red</label>
	                    </div>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input theme-color" type="radio" name="theme-mode"
	                            id="theme-purple" value="purple" onchange="document.documentElement.setAttribute('data-theme-mode', 'purple')">
	                        <label class="form-check-label" for="theme-purple">Purple</label>
	                    </div>
	
	
	                    <h6 class="mt-4 mb-3 pt-2">Layout</h6>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout"
	                            id="layout-vertical" value="vertical">
	                        <label class="form-check-label" for="layout-vertical">Vertical</label>
	                    </div>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout"
	                            id="layout-horizontal" value="horizontal">
	                        <label class="form-check-label" for="layout-horizontal">Horizontal</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2">Layout Mode</h6>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-mode"
	                            id="layout-mode-light" value="light">
	                        <label class="form-check-label" for="layout-mode-light">Light</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-mode"
	                            id="layout-mode-dark" value="dark">
	                        <label class="form-check-label" for="layout-mode-dark">Dark</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2">Layout Width</h6>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-width"
	                            id="layout-width-fuild" value="fuild" onchange="document.body.setAttribute('data-layout-size', 'fluid')">
	                        <label class="form-check-label" for="layout-width-fuild">Fluid</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-width"
	                            id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed'),document.body.setAttribute('data-sidebar-size', 'sm')">
	                        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2">Layout Position</h6>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-position"
	                            id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')">
	                        <label class="form-check-label" for="layout-position-fixed">Fixed</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-position"
	                            id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
	                        <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2">Topbar Color</h6>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="topbar-color"
	                            id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')">
	                        <label class="form-check-label" for="topbar-color-light">Light</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="topbar-color"
	                            id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
	                        <label class="form-check-label" for="topbar-color-dark">Dark</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2 sidebar-setting">Sidebar Size</h6>
	
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-size"
	                            id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')">
	                        <label class="form-check-label" for="sidebar-size-default">Default</label>
	                    </div>
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-size"
	                            id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
	                        <label class="form-check-label" for="sidebar-size-compact">Compact</label>
	                    </div>
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-size"
	                            id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
	                        <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2 sidebar-setting">Sidebar Color</h6>
	
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-color"
	                            id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')">
	                        <label class="form-check-label" for="sidebar-color-light">Light</label>
	                    </div>
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-color"
	                            id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
	                        <label class="form-check-label" for="sidebar-color-dark">Dark</label>
	                    </div>
	                    <div class="form-check sidebar-setting">
	                        <input class="form-check-input" type="radio" name="sidebar-color"
	                            id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
	                        <label class="form-check-label" for="sidebar-color-brand">Brand</label>
	                    </div>
	
	                    <h6 class="mt-4 mb-3 pt-2">Direction</h6>
	
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-direction"
	                            id="layout-direction-ltr" value="ltr">
	                        <label class="form-check-label" for="layout-direction-ltr">LTR</label>
	                    </div>
	                    <div class="form-check form-check-inline">
	                        <input class="form-check-input" type="radio" name="layout-direction"
	                            id="layout-direction-rtl" value="rtl">
	                        <label class="form-check-label" for="layout-direction-rtl">RTL</label>
	                    </div>
	
	           
	
	                </div>
	
	            </div> <!-- end slimscroll-menu-->
	        </div>
	
	        <script>
	
	
	            
	        </script>
	        <!-- /Right-bar -->
	
	        <!-- Right bar overlay-->
	        <div class="rightbar-overlay"></div>
	
	        <!-- JAVASCRIPT -->
	        <script src="assets/libs/jquery/jquery.min.js"></script>
	        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
	        <script src="assets/libs/simplebar/simplebar.min.js"></script>
	        <script src="assets/libs/node-waves/waves.min.js"></script>
	        <script src="assets/libs/feather-icons/feather.min.js"></script>
	        <!-- pace js -->
	        <script src="assets/libs/pace-js/pace.min.js"></script>
	
	        
	        <!-- apexcharts -->
	        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>
	
	        <!-- Plugins js-->
	        <script src="assets/libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js"></script>
	        <script src="assets/libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
	
	        <script src="assets/js/pages/allchart.js"></script>
	        <!-- dashboard init -->
	        <script src="assets/js/pages/dashboard.init.js"></script>
	
	        <script src="assets/js/app.js"></script>
	
	    </body>
	</html>