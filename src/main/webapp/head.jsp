<%--
  Created by IntelliJ IDEA.
  User: Geeklu
  Date: 2021/6/15
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .header{
        background-color: #222121f1;
        color:#f0ffff;
    }
    .header .logo{
        margin-left: 0.5em;
        font-size:2em;
        line-height: 1.8em;
        margin-right: 3em;
        font-weight: 600;
        font-family: 'Courier New', Courier, monospace;
    }

    .header a{
        color: #f0ffff;
        margin-right: 1.5em;
        font-size: 1.3em;
        font-weight: 600;
        text-decoration: none;
    }

    .header span{
        margin-left: 20%;
    }

    .search{
        display:inline;
        margin-left: 15%;
    }

    .search input{
        width: 278px;
        height: 3em;
        margin-bottom: 10px;
        outline: none;
        padding: 10px;
        font-size: 14px;
        color:#222121f1;
        border-top: 1px solid #312E3D;
        border-left: 1px solid #312E3D;
        border-right: 1px solid #312E3D;
        border-bottom: 1px solid #56536A;
        border-radius: 7px;
        background-color: #ffffff;
    }

    .search button{
        line-height: 25px;
        width: 100px;
        min-height: 20px;
        background-color: #4a77d4;
        border: 1px solid #3762bc;
        color: #fff;
        padding: 9px 14px;
        font-size: 15px;
        line-height: normal;
        border-radius: 5px;
        margin: 0 auto;
    }

    .right {
        float: right;
        line-height: 4em;
        text-decoration: none;
        text-decoration-color: #f0ffff;
    }
</style>


<div class="header">
    <a class="logo">电影管理系统</a>
    <a>首页</a>
    <a>电影</a>
    <form class="search" action="roundSearchServlet" method="post">
        <input name="moviename">
        <button>查看</button>
    </form>
    <div class="right">
        <a href="admin.jsp">管理</a>
        <a>注销用户</a>
    </div>
</div>
