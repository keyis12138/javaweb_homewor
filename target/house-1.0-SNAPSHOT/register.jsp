<%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/5
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="script/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            var nameflag=0,pw1flag=0,pw2flag=0;
            $("#username").blur(function checkname() {
                var username = $("#username").val();
                $.post("UserServlet",
                    {
                        action:"check",
                        username:username,
                    },
                    function (result){
                        if(result=="true"){
                            $("#userspan").css("color","green");
                            $("#userspan").html("用户名可用");
                            nameflag=1
                        }else{
                            $("#userspan").css("color","red");
                            $("#userspan").html("用户名已存在");
                            nameflag=0
                        }
                    })
            })
            $("#password").blur(function checkpw1() {
                var pswd=$("#password").val();
                if(pswd==""){
                    $("#pwspan").css("color","red");
                    $("#pwspan").html("密码不可为空");
                    pw1flag=0
                }else{
                    $("#pwspan").html("");
                    pw1flag=1
                }
            })

            $("#password2").blur(function checkpw2() {
                var pswd=$("#password").val();
                var pswd2=$("#password2").val();
                if(pswd!=pswd2){
                    pw2flag=0
                    $("#pw2span").css("color","red");
                    $("#pw2span").html("两次密码不一致");
                }else {
                    $("#pw2span").html("");
                    pw2flag=1
                }
            })
            $("#register").click(function () {
                if(nameflag!=1||pw1flag!=1||pw2flag!=1){
                    alert("请仔细填写表单")
                }else {
                    var username = $("#username").val();
                    var pswd=$("#password").val();
                    var email=$("#email").val();
                    $.post("UserServlet",
                        {
                            action:"register",
                            username:username,
                            password:pswd,
                            email:email
                        },
                        function (result){
                            if(result=="true"){
                                alert("注册成功");
                                location.href="login.jsp";
                            }else{
                                alert("注册失败")
                            }
                        })
                }

            })
        })
    </script>
</head>
<body>
    <form>
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" id="username"><span id="userspan"></span></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" id="password"><span id="pwspan"></span></td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td><input type="password" name="password2" id="password2"><span id="pw2span"></span></td>
            </tr>
            <tr>
                <td>电子邮箱：</td>
                <td><input type="email" name="email" id="email"></td>
            </tr>
            <tr>
                <td><input type="button" value="提交" id="register"></td>
                <td><input type="reset" value="取消"></td>
            </tr>
        </table>
    </form>
</body>
</html>
