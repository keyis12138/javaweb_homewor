<%--
  Created by IntelliJ IDEA.
  User: Geeklu
  Date: 2021/6/15
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .header {
        background-color: rgba(187, 199, 216, 0.247);
        height: 40px;
        color: black;
    }

    .header a {
        font-size: 20px;
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
        line-height: 40px;
    }
</style>

<div class="header">
    <div style="float: left; margin-left: 20px;height: 100%;"><a>电影管理后台</a></div>
    <div style="float: right; margin-right: 20px; height: 100%;">
        <a href="login.jsp">注销用户</a>
        <a href="mainServlet">回到首页</a>
    </div>
</div>
