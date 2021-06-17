<%@ page import="com.SaleHouse.Entity.Order" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ran Wei
  Date: 2021/6/16
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的订单</title>
    <link rel="stylesheet" type="text/css" href="css/all.css">
</head>
<body>
<%
    List<Order> orders = (List<Order>)request.getAttribute("order");
%>
<%@include file="head2.jsp"%>
<table border="1" style="width: 80%;margin:auto">
    <thead>
    <th >订单编号</th>
    <th >订单名称</th>
    <th >用户编号</th>
    <th>房屋编号</th>
    <th>房屋价格</th>
    <th>创建时间</th>
    <th></th>
    </thead>
    <tbody>
    <%

        for(Order order:orders){%>
    <tr>
        <td>
            <%=order.getOid()%>
        </td>
        <td>
            <%=order.getOname()%>
        </td>
        <td>
            <%=order.getUid()%>
        </td>
        <td>
            <%=order.getHid()%>
        </td>
        <td>
            <%=order.getPrice()%>
        </td>
        <td>
            <%=order.getOtime()%>
        </td>
        <td>
            <a href="deleteServlet?orderid=<%=order.getOid()%>">删除</a>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>
<a href="ListServlet?username=<%=request.getAttribute("username")%>">返回首页</a>
</body>
</html>
