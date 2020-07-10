<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>结果</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
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
        .a{
            display:block;
            text-align:center;
        }
    </style>
</head>
<body bgcolor="#7fffd4" class="jz">
<h2 align="center">请输入1-100之间的数</h2>
<form  method="get">
    <p class="a"><input class="an" type="text" name="guess" id="g"/></p><br>
    <p class="a"><input class="an" type="submit" value="提交" onclick="ale()"/></p>
</form>
<%
    int num2=0;
    Integer str1=(Integer)session.getAttribute("number");
    Integer n1=(Integer)session.getAttribute("count");
    String str2=request.getParameter("guess");
    if(str2!=null){
        num2=Integer.parseInt(str2);
    }
    int num1=Integer.valueOf(str1);
    int n=Integer.valueOf(n1);
%>
<script type="text/javascript" >
    var num1='<%=session.getAttribute("number")%>' ;
    var n='<%=n+1%>';
    function ale(){
        var num2=document.getElementById("g").value;
        if(num1==num2){
            alert("猜对了！您一共猜了"+n+"次。再玩一次");
            window.location.href='cjj.jsp';
            window.event.returnValue=false;
        }
        else if(num1>num2){
            alert("猜小了");
        }
        else if(num1<num2){
            alert("猜大了");
        }
    }
</script>
<%
    n++;
    session.setAttribute("count", n);
%>
</body>
</html>
