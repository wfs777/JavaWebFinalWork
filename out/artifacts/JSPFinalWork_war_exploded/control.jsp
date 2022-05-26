<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.dao.CheckLogDAO, com.entity.LogStatus" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="img/ico.ico" type="image/x-icon" />
    <title>个人信息及家乡展示</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.jsp">JSP大作业个人网站</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <jsp:useBean id="logstatus" class="com.entity.LogStatus" scope="session"/>
    <%--    <%--%>
    <%--        CheckLogDAO dao = new CheckLogDAO();--%>
    <%--        List<LogStatus> list = dao.readLogStatus();--%>
    <%--        for (LogStatus ls : list) {--%>
    <%--    %>--%>
    <span class=" d-none d-lg-inline  small" style="color: white">
        <jsp:getProperty name="logstatus" property="name"/>
<%--               <%=ls.getName()%>--%>
              </span>
    <%--    <%}%>--%>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="Login.jsp">登录</a></li>
                <li><a class="dropdown-item" href="Register.jsp">注册</a></li>
                <li><hr class="dropdown-divider" /></li>
                <form method="post" action="ServletLogout">
                    <button class="dropdown-item" type="submit" data-toggle="modal">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        退出登录
                    </button>
                </form>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <%--          <div class="sb-sidenav-menu-heading">Core</div>--%>
                    <a class="nav-link" href="index.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        首页
                    </a>
                    <div class="sb-sidenav-menu-heading">前端部分</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        个人介绍
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="Introduce.jsp">基本介绍</a>
                            <a class="nav-link" href="Experience.jsp">项目经历与获奖</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        家乡页面
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="culture.jsp">家乡人文</a>
                            <a class="nav-link" href="scenery.jsp">家乡风景</a>
                            <a class="nav-link" href="food.jsp">家乡美食</a>
                        </nav>
                    </div>
                    <div class="sb-sidenav-menu-heading">后台</div>
                    <%--          <a class="nav-link" href="charts.html">--%>
                    <%--            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>--%>
                    <%--            Charts--%>
                    <%--          </a>--%>
                    <a class="nav-link" href="control.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        后台控制
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Design by</div>
                CJLU2000303224
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div>

            </div>
            <%
//                LogStatus ls = list.get(0);
                if("wfs777".equals(logstatus.getName())) {
            %>
            <div class="container-fluid px-4">
                <h1 class="mt-4">后台管理页面</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">对数据库增删改操作</li>
                </ol>
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">网页分布表</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>页面</th>
                                    <th>功能</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>页面</th>
                                    <th>功能</th>
                                    <th>状态</th>
                                </tr>
                                </tfoot>
                                <tbody>

                                <tr>
                                    <td>个人简介-Introduce.jsp
                                    </td>
                                    <td>个人信息及学习情况
                                    </td>
                                    <td><div>
                                        <a href="editStudy.jsp" class="btn btn-primary btn-icon-split" id="button1">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理学习内容</span>
                                        </a>
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>个人学习经历-Experience.jsp
                                    </td>
                                    <td>个人项目经历
                                    </td>
                                    <td><div>
                                        <a href="editScience.jsp" class="btn btn-primary btn-icon-split" id="button2">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理项目经历内容</span>
                                        </a>
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>个人学习经历-Experience.jsp
                                    </td>
                                    <td>获奖情况
                                    </td>
                                    <td><div>

                                        <a href="editReward.jsp" class="btn btn-primary btn-icon-split" id="button3">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理获奖内容</span>
                                        </a>

                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>家乡人文-culture.jsp
                                    </td>
                                    <td>家乡的文化以及名人等人文信息
                                    </td>
                                    <td><div>
                                        <a href="editCustom.jsp" class="btn btn-primary btn-icon-split" id="button4">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理人文内容</span>
                                        </a>
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>家乡风景-scenery.jsp
                                    </td>
                                    <td>家乡的旅游景点与自然景观
                                    </td>
                                    <td><div>
                                        <a href="editScene.jsp" class="btn btn-primary btn-icon-split" id="button5">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理风景内容</span>
                                        </a>
                                    </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>家乡美食-food.jsp
                                    </td>
                                    <td>家乡的美食
                                    </td>
                                    <td><div>
                                        <a href="editFood.jsp" class="btn btn-primary btn-icon-split" id="button6">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                            <span class="text">管理美食内容</span>
                                        </a>
                                    </div>
                                    </td>
                                </tr>




                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%}
            else {%>
            <h1>你没有后台管理权限</h1>
            <%}%>
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; 未方山 2022 CJLU 2000303224 JavaWeb大作业</div>
                </div>
            </div>
        </footer>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>

