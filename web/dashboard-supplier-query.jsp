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
                    <li><a href="dashboard.jsp" style="font-size: 20px">丿记忆灬永殇丨超市管理系统<span class="sr-only">(current)</span></a>
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

    <div class="container" style="width: 90%;margin-top: 80px;min-height: 600px;background: rgba(255, 255, 255, .5);">
        <div class="col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                超市员工管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="dashboard-employee-add.jsp">添加员工信息</a></li>
                                <li class="active"><a href="dashboard-employee-query.jsp">查询员工信息</a></li>
                                <li><a href="dashboard-employee-update.jsp">修改员工信息</a></li>
                                <li><a href="dashboard-employee-delete.jsp">删除员工信息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo">
                                商品供应商管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="dashboard-supplier-add.jsp">添加供应商信息</a></li>
                                <li class="active"><a href="dashboard-supplier-query.jsp">查询供应商信息</a></li>
                                <li><a href="dashboard-supplier-update.jsp">修改供应商信息</a></li>
                                <li><a href="dashboard-supplier-delete.jsp">删除供应商信息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-primary" style="margin-top: 20px">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree">
                                超市系统管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="dashboard.jsp">系统通知</a></li>
                                <li><a href="dashboard.jsp">系统维护</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-9">
            <div style="margin-top: 20px">
                <div style="padding-bottom: 10px;border-bottom: 1px solid #0f88eb;">
                    <form class="form-inline" method="post" action="findSupplier.action">
                        <div class="form-group" style="margin-right: 30px">
                            <label for="fid" style="margin-right: 10px">供应商编号</label>
                            <input type="number" name="fid" id="fid" class="form-control" placeholder="请输入要查询的供应商编号"
                                   style="width: 485px" value="<s:property value="findSupplier.fid"/>">
                        </div>
                        <button type="submit" class="btn btn-primary" style="width: 100px;margin-right: 30px">查询
                        </button>
                        <a href="findAllSupplier.action" class="btn btn-primary"
                           style="width: 100px;">查询全部</a>
                    </form>
                </div>
                <div>
                    <table class="table table-hover table-bordered">
                        <tr>
                            <th>编号</th>
                            <th>名称</th>
                            <th>商品类型</th>
                            <th>联系方式</th>
                        </tr>
                        <s:iterator value="supplierList" var="supplier">
                            <tr>
                                <td><s:property value="#supplier.sid"/></td>
                                <td><s:property value="#supplier.name"/></td>
                                <td><s:property value="#supplier.goods"/></td>
                                <td><s:property value="#supplier.phone"/></td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>
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
<script>
    $(function () {
    });
</script>
</body>
</html>