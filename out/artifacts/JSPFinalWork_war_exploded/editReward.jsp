
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/ico.ico" type="image/x-icon" />
    <title>个人与家乡展示管理平台</title>

    <!-- Custom fonts for this template-->
<%--    <link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">--%>
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="static/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <img src="static/img/register.jpg" width="450">
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">添加/编辑条目</h1>
                        </div>
                        <form class="user" action="ServletReward" method="post">

                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input class="form-control form-control-user"
                                           name="editId" placeholder="输入序号...">
                                </div>
                                <div class="col-sm-6">
                                    <input class="form-control form-control-user"
                                           name="level" placeholder="获奖奖项...">
                                </div>
                            </div>

                            <div class="form-group">
                                <input class="form-control form-control-user" name="name"
                                       placeholder="获奖名称...">
                            </div>


                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                提交修改！
                            </button>

                        </form>

                        <div>&nbsp;</div>
                        <div>&nbsp;</div>

                        <hr>

                        <div>&nbsp;</div>
                        <div>&nbsp;</div>

                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">删除条目</h1>
                        </div>
                        <form class="user" action="ServletReward" method="get">

                            <div class="form-group">
                                <input class="form-control form-control-user" name="deleteId"
                                       placeholder="输入要删除的序号...">
                            </div>

                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                删除指定条目！
                            </button>

                        </form>


                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Bootstrap core JavaScript-->
<%--<script src="static/vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

<!-- Core plugin JavaScript-->
<%--<script src="static/vendor/jquery-easing/jquery.easing.min.js"></script>--%>

<!-- Custom scripts for all pages-->
<script src="static/js/sb-admin-2.min.js"></script>

</body>

</html>

