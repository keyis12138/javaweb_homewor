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
    <script>
        function goback(){
            window.location.href="ListServlet?username=<%=username%>";
        }
    </script>
</head>
<body>
<%@include file="head2.jsp"%>
            <!--基本信息开始-->
            <div class="main-item" align="center">
                <h3>基本信息</h3>
                <div class="main-info" style="padding-bottom:5px;" >
                        价<i style="margin-right:28px"></i>格： <span><%=houseInfo.getPrice()%></span><b></b><em>元/平方米起</em></div>
                </div>
                <ul >
                    <div class="img">
                        <img style="width:300px;height:250px;" src="<%=houseInfo.getImage()%>">
                    </div>
                    <li>
                       物业类别：<span><%=houseInfo.getWysort()%></span>
                    </li>

                    <li>
                       建筑类别：<span class="bulid-type"><%=houseInfo.getJzsort()%></span>
                    </li>
                    <li>
                        装修状况：<span class="zx"><%=houseInfo.getZxstate()%></span>
                    </li>
                    <li>
                        产权年限：<span><%=houseInfo.getYear()%></span>
                    </li>
                    <li >
                      开<i style="margin-right: 6px;"></i>发<i style="margin-right: 6px;"></i> 商：<span><%=houseInfo.getDeveloper()%></span>

                    </li>
                    <li >
                        楼盘地址：<span><%=houseInfo.getAddress()%></span>
                    </li>
                </ul>
</body>
</html>
