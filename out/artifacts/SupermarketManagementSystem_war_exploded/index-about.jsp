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
    <title>关于我们</title>
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

    <div class="container" style="width: 100%;">
        <div class="container" style="margin: 80px auto 0;">
            <div class="row">
                <div class="span12">
                    <div class="well" style="background: rgba(255, 255, 255, .4);padding:20px 70px">
                        <h2>
                            丿记忆灬永殇丨超市管理系统
                            <small style="font-size: 22px">&nbsp;&nbsp;开源免费 · 界面优雅 · 功能强大</small>
                        </h2>
                        <p style="font-size: 18px;margin-top: 25px">
                            丿记忆灬永殇丨超市管理系统是一款开源的、免费的超市管理系统。该系统由多中开源框架开发而成，主要的Java Web框架有Struts 2、Hibernate 5和Spring 5。
                            Bootstrap来自Twitter，是最受欢迎的前端框架。Bootstrap是基于HTML、CSS、JAVASCRIPT的，它简洁灵活，界面统一美观。
                            在超市管理中引进现代化的办公软件，实现超市庞大商品的控制和传输，从而方便销售行业的管理和决策，为超市和超市管理人员解除后顾之忧。
                        </p>
                        <p>
                            <a class="btn btn-primary btn-lg" href="index-solution.jsp" style="margin-top: 20px">了解更多&nbsp;>></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" style="background: rgba(255, 255, 255, 0);width: 93%;margin: 0 auto;">
            <div class="col-md-4">
                <div class="thumbnail" style="background: rgba(255, 255, 255, 0.2);">
                    <img src="img/bootstrap-logo.png" style="padding: 20px;">
                    <div class="caption">
                        <h3>Bootstrap 3</h3>
                        <p>Bootstrap，来自Twitter，是目前最受欢迎的前端框架。Bootstrap是基于HTML、CSS、JAVASCRIPT的，它简洁灵活，使得Web开发更加快捷。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail" style="background: rgba(255, 255, 255, 0.2);">
                    <img src="img/ssh-logo.png" style="padding: 20px;">
                    <div class="caption">
                        <h3>SSH框架</h3>
                        <p>SSH框架是Struts 2、Spring 5、Hibernate 5的一个集成框架，是目前比较流行的一种Java Web应用程序开源框架。</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="thumbnail" style="background: rgba(255, 255, 255, 0.2);">
                    <img src="img/author-logo.png" style="padding: 20px;">
                    <div class="caption">
                        <h3>丿记忆灬永殇丨</h3>
                        <p><a href="http://blog.csdn.net/rcnjtech" target="_blank">CSDN博客</a><br>
                            <a href="https://www.jianshu.com/u/64a2c1b1740a" target="_blank">简书博客</a><br>
                            <a href="mailto: RCNJTECH@outlook.com">联系我</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer" style="position: relative;z-index: 1">
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