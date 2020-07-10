<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>
        用户登录
    </title>
    <style type="text/css">
        .jz{
           color: red;
            position: absolute;
            top:30%;
            left: 50%;
            transform:translate(-50%,-50%);
            font-size: large;
        }
        .an{
           background-color:gainsboro;
           margin-bottom: 5px;
        }
    </style>
</head>
<body bgcolor="#7fffd4" class="jz">
<form action="Is ture.jsp" method="post">
<table>

            <caption><p style="font-size: xx-large">用户登录</p></caption>
            <tr><td><p style="font-size: large">用户名:</p></td><td><input type="text" name="username"size="20"/></td></tr>
            <tr><td><p style="font-size: large">密  码:</p></td><td><input type="text" name="pwd" size="20"/></td></tr>
          <tr><td><input class="an" type="submit" value="登录"/><td><input class="an" type="reset" value="重置"/>
</table>
    </form>
    如果您还没有注册，请单击<a href="zhuce.jsp">这里</a>注册！</body>
</html>
