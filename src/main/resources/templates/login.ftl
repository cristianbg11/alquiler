<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Alquisis | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="webjars/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <!--<link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">-->
    <!-- Theme style -->
    <link rel="stylesheet" href="webjars/AdminLTE/2.4.0/dist/css/AdminLTE.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="webjars/AdminLTE/2.4.0/plugins/iCheck/all.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>Alquileres</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in para iniciar sesión</p>

        <form action="/login" method="POST" class="form-signin">
            <div class="form-group has-feedback">
                <input name="username" id="username" class="form-control" placeholder="Usuario">
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="password" name="password" class="form-control" placeholder="Contraseña">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <button type="submit" id="LogIn" class="btn btn-primary btn-block btn-flat">Iniciar Sesión</button>
                </div>
            </div>
        </form>

    </div>
    <!-- /.login-box-body -->
    <br/>
    <#if error.isPresent()>
        <div class="alert alert-danger alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-ban"></i> Error!</h4>
            Usuario no existe...
        </div>
    </#if>
</div>
<!-- /.login-box -->


<!-- jQuery 3 -->
<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="webjars/AdminLTE/2.4.0/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
</body>
</html>
