<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.SaleHouse.Entity.User" %>
<html>
<head>
    <title>账户管理</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/all.css">
    <script>
        function conf(name,id) {
            if(confirm("确定删除[" + name +"]吗？")){
                window.location.href = "UserServlet?action=delete&userid="+id;
            }
        }
    </script>
</head>
<body>
<!--包括另一个网页 -->
<%@include file="order.jsp"%>
<div style="text-align: center">
    <table align="center" border="1" style="width: 80%;margin:auto">
        <thead>
        <th >用户姓名</th>
        <th >账户密码</th>
        <th >电子邮件</th>
        <th>用户类型</th>
        <th></th>
        </thead>
        <tbody>
        <%
            List<User> users = (List<User>)request.getAttribute("users");
            for(User user:users){%>
        <tr>
            <td>
                <%=user.getUsername()%>
            </td>
            <td>
                <%=user.getPassword()%>
            </td>
            <td>
                <%=user.getEmail()%>
            </td>
            <td>
                <%=user.getType()%>
            </td>
            <td>
                <a href="#" onclick="conf('<%=user.getUsername()%>','<%=user.getId()%>')">删除</a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>

