
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.lang.reflect.*"%>
<html>
<head>
    <style>
        body {

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        a{
            color: crimson;
        }
    </style>
</head>
    <body>
    <%request.setCharacterEncoding("UTF-8"); %>
    当前用户：<%=session.getAttribute("admin")%><br>
    <a href="viewBook.jsp" target="right" >浏览图书</a><br><br>
    <a href="listBook.jsp" target="right">书架维护</a><br><br>
    <a href="right.jsp" target="right">返回首页</a><br><br>
    </body>
</html>
