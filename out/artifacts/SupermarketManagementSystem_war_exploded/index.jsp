<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <title>超市管理系统</title>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-default navbar-fixed-top"
         style="background: rgba(255, 255, 255, .7);box-shadow: 0 1px 3px 0 rgba(0,34,77,.1);">
        <div class="container-fluid" style="width: 90%;margin: 0 auto;padding: 5px 0;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp" style="margin: -10px 0 0"><img src="img/brand.ico"></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" style="margin-top: 5px;">
                    <li><a href="index.jsp">网站首页<span class="sr-only">(current)</span></a></li>
                    <li><a href="index-solution.jsp">解决方案</a></li>
                    <li><a href="index-about.jsp">关于产品</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" style="height: 42px;width: 300px;"
                               placeholder="搜索你感兴趣的东西...">
                    </div>
                    <button type="submit"
                            style="background: #0f88eb;color: #ffffff;border: 1px solid #0f88eb;border-radius: 3px;margin-right: 16px;padding: 10px 15px;">
                        搜索
                    </button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <s:set var="username" value="#session.username"/>
                    <s:if test="#username != null">
                        <li class="dropdown">
                            <button class="navbar-btn dropdown-toggle" id="userDropdownMenu"
                                    style="background: #0f88eb;color: #ffffff;border: 1px solid #0f88eb;border-radius: 3px;margin-right: 16px;padding: 10px 15px;"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                <s:property value="#session.username"/>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="userDropdownMenu"
                                style="color: #8590a6;text-align: center;font-size: 18px;opacity: 0.9;border-radius: 6px;min-width: 120px;">
                                <li><a href="dashboardRole.action" style="margin: 5px 0">管理面板</a></li>
                                <li><a href="userLogon.action" style="margin: 5px 0">退出登录</a>
                                </li>
                            </ul>
                        </li>
                    </s:if>
                    <s:else>
                        <li><a href="login.jsp" class="navbar-btn"
                               style="color: #0f88eb;border: 1px solid #0f88eb;border-radius: 3px;margin-right: 16px;padding: 10px 15px;">登录</a>
                        </li>
                        <li><a href="register.jsp" class="navbar-btn"
                               style="background: #0f88eb;color: #ffffff;border: 1px solid #0f88eb;border-radius: 3px;margin-right: 16px;padding: 10px 15px;">注册</a>
                        </li>
                    </s:else>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row">
        <div class="span12">
            <div class="carousel slide" id="carousel-index">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-index"></li>
                    <li data-slide-to="1" data-target="#carousel-index"></li>
                </ol>
                <div class="carousel-inner" style="margin-top: -30px;">
                    <div class="item active">
                        <img src="img/index-01.png"/>
                        <div class="carousel-caption" style="padding-bottom: 400px;left: -35%">
                            <h1>
                                丿记忆灬永殇丨超市管理系统
                            </h1>

                            <h3>
                                开源、免费和优秀的解决方案
                            </h3>
                            <a class="btn btn-primary btn-lg" href="index-solution.jsp" style="margin-top: 20px">了解更多&nbsp;>></a>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/index-02.png"/>
                        <div class="carousel-caption" style="padding-bottom: 400px;right: -35%">
                            <h1>
                                丿记忆灬永殇丨超市管理系统
                            </h1>
                            <h3>
                                您的超市管家 · 智慧助手
                            </h3>
                            <a class="btn btn-primary btn-lg" href="login.jsp" style="margin-top: 20px">立即使用&nbsp;>></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer" style="margin-top: -30px;position: relative;z-index: 1">
        <p>&copy; 2017 · 丿记忆灬永殇丨 · <a href="http://blog.csdn.net/rcnjtech" target="_blank">CSDN博客</a>
            · <a href="https://www.jianshu.com/u/64a2c1b1740a" target="_blank">简书博客</a>
            · <a href="mailto: RCNJTECH@outlook.com">联系我</a></p>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper-1.13.0.min.js"></script>
<script src="js/bootstrap-3.3.7.min.js"></script>
<script>
    $(function () {
        $('.carousel').carousel({
            pause: null
        })
    });
</script>
</body>
</html>