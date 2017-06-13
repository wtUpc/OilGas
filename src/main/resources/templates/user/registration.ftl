<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>注册用户</title>
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
    <div class="row text-center  ">
        <div class="col-md-12">
            <br /><br />
            <h2>  油气管道管输价格测算系统</h2>


            <br />
        </div>
    </div>
    <div class="row">

        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong> 注册用户 </strong>
                </div>
                <div class="panel-body">
                    <form role="form" action="${request.contextPath}/zhuce" method="post">
                        <br/>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-circle-o-notch"  ></i></span>
                            <input type="text" class="form-control" placeholder="用户名" name="userName" />
                        </div>
                        <#--<div class="form-group input-group">-->
                            <#--<span class="input-group-addon">@</span>-->
                            <#--<input type="text" class="form-control" placeholder="邮箱" />-->
                        <#--</div>-->
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                            <input type="password" class="form-control" placeholder="输入密码" name="passWord"/>
                        </div>
                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                            <input type="password" class="form-control" placeholder="确认密码" name="passWord1"/>
                        </div>

                        <button type="submit" class="btn btn-success ">注册</button>
                        <hr />
                        已经注册?  <a href="${request.contextPath}/login" >现在登录</a>
                    </form>
                </div>

            </div>
        </div>


    </div>
</div>


<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="${basePath}/static/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="${basePath}/static/assets/js/bootstrap.min.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="${basePath}/static/assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${basePath}/static/assets/js/custom.js"></script>

</body>
</html>
