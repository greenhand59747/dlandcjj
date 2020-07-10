<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>
        游戏开始界面
    </title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style type="text/css">
        .a{
            color: violet;
            display:block;
            text-align:center;
        }
.an{
    background-color:gainsboro;
    margin-bottom: 5px;
}
    </style>
</head>
<body bgcolor="#7fffd4">
<h1 style="color: blue" align="center">欢迎来到猜数字小游戏</h1>
<h2 style="color: red " align="center">这仅仅是考验运气和技巧的游戏，请不要沉迷哦！！！</h2><br>
<p class="a" size="24">游戏会给出1-100间的随机数字，请猜出这个数字。看看谁的次数最少</p><br>
<form action="isTrue.jsp">
    <p class="a"><input class="an"  type="submit" value="开始游戏"/></p>
</form>
<%
    int a=(int)(Math.random()*100+1);
    session.setAttribute("number",a);
    session.setAttribute("count", new Integer(0));
%>
</body>
</html>