<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="img/favicon.ico">
    <link rel="stylesheet" href="css/bootstrap-3.3.7.min.css">
    <link rel="stylesheet" href="css/main.css">
    <title>登录</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <%-- 登录表单 --%>
            <div class="login-card">
                <h1 class="login-card-title"><a href="index.jsp" style="color: #0f88eb;">丿记忆灬永殇丨超市管理系统</a></h1>
                <h3 class="login-card-title">登录 · 您的超市管家</h3>
                <form method="post" role="form" action="userLogin.action">
                    <div class="form-group">
                        <label for="uid">用户ID</label>
                        <input type="text" name="uid" id="uid" class="form-control" placeholder="请输入用户ID">
                    </div>
                    <div class="form-group">
                        <label for="password">密码</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码">
                    </div>
                    <div class="form-group">
                        <label for="role">角色</label>
                        <select name="role" id="role" class="form-control">
                            <option value="manager">经理</option>
                            <option value="employee">员工</option>
                        </select>
                    </div>
                    <div style="margin-bottom: 50px">
                        <a href="register.jsp" style="float: left">需要注册？</a>
                        <a href="#forgetModal" data-toggle="modal" style="float: right">忘记密码？</a>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">登录</button>
                </form>

                <!-- 忘记密码模态框（Modal） -->
                <div class="modal fade" id="forgetModal" tabindex="-1" role="dialog" aria-labelledby="forgetModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h3 class="modal-title" id="forgetModalLabel"
                                    style="text-align: center;color: #0f88eb;">
                                    忘记密码？
                                </h3>
                            </div>
                            <div class="modal-body">
                                <p style="font-size: 18px">
                                    亲爱的用户：<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如您是超市经理并已注册过该系统，若忘记密码后可<a
                                        href="mailto: RCNJTECH@outlook.com">联系我们</a>找回密码。如您是超市员工，可以超市经理咨询。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如您在登录过程中遇到各种问题或者有任何疑问，可<a
                                        href="mailto: RCNJTECH@outlook.com">联系我们</a>，我们将竭诚为您服务。
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <%-- 页脚 --%>
    <div class="footer" style="margin-top: 90px">
        <p>&copy; 2017 · 丿记忆灬永殇丨 · <a href="http://blog.csdn.net/rcnjtech" target="_blank">CSDN博客</a>
            · <a href="https://www.jianshu.com/u/64a2c1b1740a" target="_blank">简书博客</a>
            · <a href="mailto: RCNJTECH@outlook.com">联系我</a></p>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper-1.13.0.min.js"></script>
<script src="js/bootstrap-3.3.7.min.js"></script>
</body>
</html>