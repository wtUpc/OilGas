<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>登录</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="${request.contextPath}/static/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${request.contextPath}/static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="${request.contextPath}/static/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
<div class="container">
    <div class="row text-center ">
        <div class="col-md-12">
            <br /><br />
            <h2> 油气管道管输价格测算系统</h2>
            <br />
        </div>
    </div>
    <div class="row ">

        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong> 输入详细信息登录</strong>
                </div>
                <div class="panel-body">
                    <form role="form" action="${request.contextPath}/users/adminLogin" method="post">
                        <br />
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                            <input type="text" class="form-control" placeholder="用户名 " name="userName"/>
                        </div>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                            <input type="password" class="form-control"  placeholder="密码" name="passWord"/>
                        </div>
                        <div class="form-group">
                            <label class="checkbox-inline">
                                <input type="checkbox" /> 记住我
                            </label>
                            <span class="pull-right">
                                <a href="#" >忘记密码? </a>
                            </span>
                        </div>

                        <button type="submit" class="btn btn-primary ">登录</button>
                        <hr />
                        没有注册 ? <a href="${request.contextPath}/users/registeration" >点我 </a>
                    </form>
                </div>

            </div>
        </div>


    </div>
</div>


<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="${request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="${request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="${request.contextPath}/static/assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${request.contextPath}/static/assets/js/custom.js"></script>

</body>
</html>
