<%--
  Created by IntelliJ IDEA.
  User: Fairy Tail
  Date: 2020/6/28
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        用户登录
    </title>
</head>
<body bgcolor="#e3e3e3">
    <form action="check.jsp" method="post">
        <table>
            <caption>用户登录</caption>
            <tr><td>用户名:</td><td><input type="text" name="username" size="20"/></td></tr>
            <tr><td>密码:</td><td><input type="text" name="pwd" size="20"/></td></tr>
            <tr><td><input type="submit" value="登录"/><td><input type="reset" value="重置"/>
        </table>
    </form>
    如果您还没有注册，请单击<a href="zhuce.jsp">这里</a>注册！</body>
</center>
</html>
