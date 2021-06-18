<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.SaleHouse.Entity.Order" %>
<html>
<head>
    <title>订单管理</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/all.css">
    <script>
        function conf(name,id) {
            if(confirm("确定删除[" + name +"]吗？")){
                window.location.href = "OrderServlet?action=delete&orderid="+id;
            }
        }
    </script>
</head>
<body >
 <!--包括另一个网页 -->
 <%@include file="order.jsp"%>
<div  style="text-align: center" >
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
            List<Order> orders = (List<Order>)request.getAttribute("orders");
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
                <a href="#" onclick="conf('<%=order.getOname()%>','<%=order.getOid()%>')">删除</a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>

