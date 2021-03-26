<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" href="resources/assets/css/bootstrap.css">

    <link rel="stylesheet" href="resources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="resources/assets/css/app.css">
    <link rel="shortcut icon" href="resources/assets/images/favicon.svg" type="image/x-icon">
</head>

<body>
    <div id="app">
        <div id="sidebar" class='active'>
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <img src="assets/images/logo.svg" alt="" srcset="">
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">


                      <li class="sidebar-item  ">
                            <a href="./user" class='sidebar-link'>
                                <i data-feather="user" width="20"></i>
                                <span>회원관리</span>
                            </a>

                        </li>

                    
                        <li class="sidebar-item  ">
                            <a href="./mentor" class='sidebar-link'>
                                <i data-feather="user" width="20"></i>
                                <span>멘토관리</span>
                            </a>

                        </li>


                         <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i data-feather="file-text" width="20"></i>
                                <span>신고관리</span>
                            </a>

                            <ul class="submenu ">

                                <li>
                                    <a href="/declaration">신고관리</a>
                                </li>

                                <li>
                                    <a href="/dec_mes">신고조치</a>
                                </li>
                          
                            </ul>

                        </li>

                       <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i data-feather="trending-up" width="20"></i>
                                <span>매출관리</span>
                            </a>

                            <ul class="submenu ">

                                <li>
                                    <a href="./sum">매출 종합 관리</a>
                                </li>
                                
                            </ul>

                        </li>

                       <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i data-feather="user" width="20"></i>
                                <span>커뮤니티</span>
                            </a>

                            <ul class="submenu ">

                                <li>
                                    <a href="/community">공지사항</a>
                                </li>

                                <li>
                                    <a href="/com_later">후기</a>
                                </li>

                            </ul>

                        </li>

						<li class="sidebar-item  ">
                            <a href="./service" class='sidebar-link'>
                                <i data-feather="file-text" width="20"></i>
                                <span>고객센터</span>
                            </a>

                        </li>

                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
            <nav class="navbar navbar-header navbar-expand navbar-light">
                <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
                <button class="btn navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav d-flex align-items-center navbar-light ms-auto">
                        <li class="dropdown nav-icon">
                            <a href="#" data-bs-toggle="dropdown"
                                class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="bell"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-large">
                                <h6 class='py-2 px-4'>Notifications</h6>
                                <ul class="list-group rounded-none">
                                    <li class="list-group-item border-0 align-items-start">
                                        <div class="avatar bg-success me-3">
                                            <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                                        </div>
                                        <div>
                                            <h6 class='text-bold'>New Order</h6>
                                            <p class='text-xs'>
                                                An order made by Ahmad Saugi for product Samsung Galaxy S69
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown nav-icon me-2">
                            <a href="#" data-bs-toggle="dropdown"
                                class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="mail"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-bs-toggle="dropdown"
                                class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="avatar me-1">
                                    <img src="assets/images/avatar/avatar-s-1.png" alt="" srcset="">
                                </div>
                                <div class="d-none d-md-block d-lg-inline-block">관리자님! 안녕하세요!</div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="main-content container-fluid">
                <div class="page-title">
                    <h3>신고조치</h3>
                    <p class="text-subtitle text-muted">신고조치</p>
                </div>
                <div class="col-md-6 col-12">
            <div class="card">
                <div class="card-header">
                <h4 class="card-title">Horizontal Form with Icons</h4>
                </div>
                <div class="card-content">
                <div class="card-body">
                    <form class="form form-horizontal">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Name</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group has-icon-left">
                                    <div class="position-relative">
                                        <input type="text" class="form-control" placeholder="Name" id="first-name-icon">
                                        <div class="form-control-icon">
                                            <i data-feather="user"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Email</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group has-icon-left">
                                    <div class="position-relative">
                                        <input type="email" class="form-control" placeholder="Email" id="first-name-icon">
                                        <div class="form-control-icon">
                                            <i data-feather="mail"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Mobile</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group has-icon-left">
                                    <div class="position-relative">
                                        <input type="number" class="form-control" placeholder="Mobile">
                                        <div class="form-control-icon">
                                            <i data-feather="phone"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group has-icon-left">
                                    <div class="position-relative">
                                        <input type="password" class="form-control" placeholder="Password">
                                        <div class="form-control-icon">
                                            <i data-feather="lock"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <div class="form-group col-md-8 offset-md-4">
                            <div class='form-check'>
                                <div class="checkbox">
                                    <input type="checkbox" id="checkbox2" class='form-check-input' checked>
                                    <label for="checkbox2">Remember Me</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 d-flex justify-content-end ">
                            <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                            <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                        </div>
                        </div>
                    </div>
                    </form>
                </div>
                </div>
            </div>
            </div>
        </div>
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2020 &copy; Voler</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class='text-danger'><i data-feather="heart"></i></span> by <a
                                href="http://ahmadsaugi.com">Ahmad Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="resources/assets/js/feather-icons/feather.min.js"></script>
    <script src="resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="resources/assets/js/app.js"></script>

    <script src="resources/assets/vendors/chartjs/Chart.min.js"></script>
    <script src="resources/assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="resources/assets/js/pages/dashboard.js"></script>

    <script src="resources/assets/js/main.js"></script>
</body>

</html>