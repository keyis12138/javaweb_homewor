<%@ page import="com.SaleHouse.Entity.HouseInfo" %><%--
  Created by IntelliJ IDEA.
  User: 86159
  Date: 2021/6/16
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        HouseInfo houseInfo = (HouseInfo) request.getAttribute("houseInfo");
        String username = (String) request.getAttribute("username");
    %>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/info.css">
    <script>
        function goback(){
            window.location.href="ListServlet?username=<%=username%>";
        }
    </script>
</head>
<body>
<%@include file="head1.jsp"%>
<div class="main">
    <div class="img">
        <img src="<%=houseInfo.getImage()%>">
    </div>
    <div class="context">
        <h3>基本信息</h3>
        <div class="infomation">
            <ul>
                <li><span class="title">价格：</span><span class="price"><%=houseInfo.getPrice()%></span>元/m² </li>
                <li><span class="title">物业类别：</span><span><%=houseInfo.getWysort()%></span></li>
                <li><span class="title">建筑类别：</span><span><%=houseInfo.getJzsort()%></span></li>
                <li><span class="title">装修状况：</span><span><%=houseInfo.getZxstate()%></span></li>
                <li><span class="title">产权年限：</span><span><%=houseInfo.getYear()%></span>   </li>
                <li><span class="title">开发商：</span><span><%=houseInfo.getDeveloper()%></span>  </li>
                <li><span class="title">楼盘地址：</span><span><%=houseInfo.getAddress()%></span> </li>
            </ul>
        </div>

    </div>
</div>
</body>
</html>
