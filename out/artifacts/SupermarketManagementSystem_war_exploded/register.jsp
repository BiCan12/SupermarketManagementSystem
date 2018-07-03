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
    <title>注册</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <%-- 注册表单 --%>
            <div class="login-card" style="margin-top: 50px">
                <h1 class="login-card-title"><a href="index.jsp" style="color: #0f88eb;">丿记忆灬永殇丨超市管理系统</a></h1>
                <h3 class="login-card-title">注册 · 您的智慧助手</h3>
                <form method="post" role="form" action="managerRegister.action">
                    <div class="form-group">
                        <label for="mid">手机号码</label>
                        <input type="tel" name="mid" id="mid" class="form-control" placeholder="请输入手机号码，将作为您的系统ID"
                               maxlength="11">
                    </div>
                    <div class="form-group">
                        <label for="name">姓名</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="请输入姓名">
                    </div>
                    <div class="form-group">
                        <label for="password">密码</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码">
                    </div>
                    <div class="form-group">
                        <label for="sex">性别</label>
                        <select name="sex" id="sex" class="form-control">
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="age">年龄</label>
                        <input type="number" name="age" id="age" class="form-control" placeholder="请输入年龄" min="16"
                               max="60">
                    </div>
                    <div class="form-group">
                        <label for="email">邮箱</label>
                        <input type="email" name="email" id="email" class="form-control" placeholder="请输入邮箱" maxlength="30">
                    </div>
                    <div class="form-group">
                        <label for="firm">超市名称</label>
                        <input type="text" name="firm" id="firm" class="form-control" placeholder="请输入超市名称">
                    </div>
                    <div class="form-group">
                        <label for="name">地址</label>
                        <input type="text" name="address" id="address" class="form-control" placeholder="请输入超市地址">
                    </div>
                    <div style="margin-bottom: 50px">
                        <a href="login.jsp" style="float: left">已有账号？</a>
                        <a href="#problemModal" data-toggle="modal" style="float: right">遇到问题？</a>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">注册</button>
                    <div style="margin-top: 15px; color: #8590a6;">
                        <p>注册即代表你同意<a href="#registerModal" data-toggle="modal">《丿记忆灬永殇丨超市管理系统注册协议》</a>
                        </p>
                    </div>
                </form>
                <!-- 遇到问题模态框（Modal） -->
                <div class="modal fade" id="problemModal" tabindex="-1" role="dialog"
                     aria-labelledby="problemModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h3 class="modal-title" id="problemModalLabel"
                                    style="text-align: center;color: #0f88eb;">
                                    遇到问题？
                                </h3>
                            </div>
                            <div class="modal-body">
                                <p style="font-size: 18px">
                                    亲爱的用户：<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该管理系统只允许超市经理注册，当经理注册后可登录管理系统进行添加、修改或删除员工，同时所添加的用户将由系统分配给员工账户和密码。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如您在注册过程中遇到各种问题或者有任何疑问，可<a
                                        href="mailto: RCNJTECH@outlook.com">咨询我们</a>，我们将竭诚为您服务。
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">关闭
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 注册协议模态框（Modal） -->
                <div class="modal fade" id="registerModal" tabindex="-1" role="dialog"
                     aria-labelledby="registerModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h3 class="modal-title" id="registerModalLabel"
                                    style="text-align: center;color: #0f88eb;">
                                    《丿记忆灬永殇丨超市管理系统注册协议》
                                </h3>
                            </div>
                            <div class="modal-body">
                                <p style="font-size: 18px">
                                    【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、与您约定免除或限制责任的条款；<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、与您约定法律适用和管辖的条款；<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、本系统传播与使用的重要条款。<br>
                                    如您对协议有任何疑问，可<a href="mailto: RCNJTECH@outlook.com">联系我们</a>。<br><br>
                                    【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与本系统发生争议的，适用《丿记忆灬永殇丨超市管理系统注册协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。<br><br>
                                    阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">我已阅读
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
    <div class="footer" style="margin-top: 45px;">
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