<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>检验注册页面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        .jz{
            color: red;
            position: absolute;
            top:30%;
            left: 50%;
            transform:translate(-50%,-50%);
            font-size:xx-large;
            color: red;
        }
    </style>
</head>

<body bgcolor="#7fffd4" class="jz">
<br>
<%
    request.setCharacterEncoding("utf-8");
    String use=request.getParameter("username");
    String pass=request.getParameter("pwd");
    ResultSet rs=null;
%>
<%
    String driver = "com.mysql.jdbc.Driver";
    Class.forName(driver);
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yonghu?serverTimezone=GMT", "root","9540");
        PreparedStatement sql =conn.prepareStatement("insert into user_zm(user,pass)values(?,?)");
        sql.setString(1,use);
        sql.setString(2,pass);
        int rtn=sql.executeUpdate();
        sql.close();
        conn.close();
%>
注册成功<a href="sign in.jsp">返回登陆</a>
</body>
</html>