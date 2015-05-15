<%--
  Created by IntelliJ IDEA.
  User: peter
  Date: 2015/4/28
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="mate.jsp"/>
    <%--导入 bootstrap--%>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="${pagecontext.request.contextpath}/static/plugins/bootstrap-3.3.4-dist/css/bootstrap.min.css">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <!--导入 jquery-->
    <script type="text/javascript" src="${pagecontext.request.contextpath}/static/plugins/jquery.min.js"
            charset="utf-8"></script>
    <script src="${pagecontext.request.contextpath}/static/plugins/bootstrap-3.3.4-dist/js/bootstrap.min.js" charset="utf-8"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js" charset="utf-8"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js" charset="utf-8"></script>
    <![endif]-->

    <!-- Start banner HEAD section -->
    <link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/static/plugins/banner/engine1/style.css" />
    <!-- End banner HEAD section -->


    <!--导入 全局样式表-->
    <link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/static/css/style.css">


    <%--导入导航菜单--%>
    <script type="text/javascript" src="${pagecontext.request.contextpath}/static/plugins/menu/dropdown.js"
            charset="utf-8"></script>

    <!--导入slide-box-->
    <link rel="stylesheet" type="text/css"
          href="${pagecontext.request.contextpath}/static/plugins/slide-box/jquery.slideBox.css">
    <script type="text/javascript"
            src="${pagecontext.request.contextpath}/static/plugins/slide-box/jquery.slideBox.min.js"
            charset="utf-8"></script>
    <script type="text/javascript"
            src="${pagecontext.request.contextpath}/static/plugins/news-images-scrolllist/slider.js"
            charset="utf-8"></script>
    <title>蕴商信息网</title>
</head>