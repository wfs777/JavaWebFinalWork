<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="icon" href="img/ico.ico" type="image/x-icon" />
  <title>注册页面</title>
  <link href="css/styles.css" rel="stylesheet" />
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
<div id="layoutAuthentication">
  <div id="layoutAuthentication_content">
    <main>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-7">
            <div class="card shadow-lg border-0 rounded-lg mt-5">
              <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3></div>
              <div class="card-body">
                <form class="user" action="ServletRegister" method="post">
                  <div class="row mb-3">
                    <div class="col-md-6">
                      <div class="form-floating mb-3 mb-md-0">
                        <input class="form-control" id="inputFirstName" name="name" type="text" placeholder="Enter your first name" />
                        <label for="inputFirstName">昵称</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-floating mb-3">
                    <input class="form-control" id="inputEmail" name="email" type="email" placeholder="name@example.com" />
                    <label for="inputEmail">邮件地址</label>
                  </div>
                  <div class="row mb-3">
                    <div class="col-md-6">
                      <div class="form-floating mb-3 mb-md-0">
                        <input class="form-control" id="inputPassword" name="password" type="password" placeholder="Create a password" />
                        <label for="inputPassword">密码</label>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-floating mb-3 mb-md-0">
                        <input class="form-control" id="inputPasswordConfirm" name="repeatPassword" type="password" placeholder="Confirm password" />
                        <label for="inputPasswordConfirm">重复密码</label>
                      </div>
                    </div>
                  </div>
                  <div class="mt-4 mb-0">
                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      注册！
                    </button>
                  </div>
                </form>
              </div>
              <div class="card-footer text-center py-3">
                <div class="small"><a href="Login.jsp">已有账号?登录</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
  <div id="layoutAuthentication_footer">
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
</body>
</html>
