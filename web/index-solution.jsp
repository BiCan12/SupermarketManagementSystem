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
    <style>
        /*内容板块*/
        .searching {
            width: 100%;
            height: 490px;
            min-width: 1200px;
            background: rgba(249, 249, 249, 0.2);
        }

        .intameta .checking {
            width: 1080px;
            height: 500px;
            margin: 0 auto;
            position: relative;
        }

        .checking img {
            float: left;
            margin-top: 110px;
        }

        .referrals {
            font-size: 18px;
            line-height: 30px;
            color: #626262;
        }

        .checkExplain {
            width: 40%;
            position: absolute;
            left: 55%;
            top: 140px;
        }

        .topic {
            font-size: 30px;
            color: #282828; /*font-weight: 400;*/
        }

        .broders {
            width: 60px;
            height: 3px;
            background: #0f88eb;
            margin: 30px 0 40px 0;
        }

        .intameta .fences {
            width: 100%;
            height: 490px;
            background: rgba(249, 249, 249, 0.1);
            margin: 0 auto;
        }

        .intameta .fences .fence {
            width: 1080px;
            margin: 0 auto;
            position: relative;
        }

        .intameta .fence img {
            float: right;
            margin-top: 110px;
        }

        .fenceExplain {
            position: absolute;
            top: 140px;
            width: 40%;
        }
    </style>
    <title>解决方案</title>
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
                    <li><a href="login.jsp">解决方案</a></li>
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

    <!-- 内容板块 -->
    <div class="intameta" style="margin: 80px auto">
        <div class="searching">
            <div class="checking">
                <img src="img/index-solution-01.png">
                <div class="inlineB checkExplain">
                    <h3 class="topic">开源免费</h3>
                    <div class="broders"></div>
                    <p class="referrals">
                        丿记忆灬永殇丨超市管理系统是一款开源的、免费的超市管理系统。该系统由多中开源框架开发而成，主要的Java Web框架有Struts 2、Hibernate 5和Spring 5。</p>
                </div>
            </div>
        </div>
        <div class="fences" style="margin: 80px auto">
            <div class="fence">
                <img src="img/index-solution-01.png">
                <div class="inlineB fenceExplain">
                    <h3 class="topic">界面优雅</h3>
                    <div class="broders"></div>
                    <p class="referrals">
                        Bootstrap来自Twitter，是最受欢迎的前端框架。Bootstrap是基于HTML、CSS、JAVASCRIPT的，它简洁灵活，界面统一美观。</p>
                </div>
            </div>
        </div>
        <div class="searching" style="margin: 80px auto">
            <div class="checking">
                <img src="img/index-solution-01.png">
                <div class="inlineB checkExplain">
                    <h3 class="topic">功能强大</h3>
                    <div class="broders"></div>
                    <p class="referrals">
                        在超市管理中引进现代化的办公软件，实现超市庞大商品的控制和传输，从而方便销售行业的管理和决策，为超市和超市管理人员解除后顾之忧。</p>
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