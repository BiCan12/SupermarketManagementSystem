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
    <%-- 顶部导航栏 --%>
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
                    <li><a href="dashboard-employee.jsp" style="font-size: 20px">丿记忆灬永殇丨超市管理系统<span
                            class="sr-only">(current)</span></a>
                    </li>
                </ul>

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

    <div class="container" style="width: 90%;margin-top: 80px;height: 600px;background: rgba(255, 255, 255, .5);">
        <div class="col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                商品进货管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li class="active"><a href="dashboard-goods-buy-add.jsp">添加进货信息</a></li>
                                <li><a href="dashboard-goods-buy-query.jsp">查询进货信息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                商品销售管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="dashboard-goods-sell-add.jsp">添加销售信息</a></li>
                                <li><a href="dashboard-goods-sell-query.jsp">查询销售信息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                商品库存管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="dashboard-goods-remain-query.jsp">查询库存信息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-9">
            <div style="margin-top: 20px">
                <form method="post" role="form" action="addGoodsBuy.action">
                    <div class="form-group">
                        <label for="gid">商品编号</label>
                        <input type="number" name="gid" id="gid" class="form-control" placeholder="请输入商品编号">
                    </div>
                    <div class="form-group">
                        <label for="name">商品名称</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="请输入商品名称">
                    </div>
                    <div class="form-group">
                        <label for="type">商品类型</label>
                        <input type="text" name="type" id="type" class="form-control" placeholder="请输入商品类型">
                    </div>
                    <div class="form-group">
                        <label for="cost">商品进价</label>
                        <input type="number" name="cost" id="cost" class="form-control" placeholder="请输入商品进价">
                    </div>
                    <div class="form-group">
                        <label for="buy">进货数量</label>
                        <input type="number" name="buy" id="buy" class="form-control" placeholder="请输入进货数量">
                    </div>
                    <button type="submit" class="btn btn-primary" style="width: 40%;float:left;margin: 0 5%;">添加
                    </button>
                    <button type="reset" class="btn btn-info" style="width: 40%;float:right;margin: 0 5%;">放弃</button>
                </form>
            </div>
        </div>
    </div>

    <div class="footer" style="margin-top: 10px">
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