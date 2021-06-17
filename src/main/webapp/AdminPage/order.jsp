
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


    .right {
        float: right;
        line-height: 4em;
        text-decoration: none;
        text-decoration-color: #f0ffff;
    }
</style>

<div class="header">
    <a class="logo">后台管理</a>
    <div class="right">
        <a href="AdminServlet?action=order">订单管理</a>
        <a href="AdminServlet?action=account">账户管理</a>
        <a href="AdminServlet?action=house">房屋管理</a>
    </div>
</div>
