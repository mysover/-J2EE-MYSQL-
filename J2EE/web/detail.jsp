<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="bean.Dao.Title" %>
<jsp:useBean id= "dao" class="bean.Service.imple.TitleServiceImpl" scope="request"/>
<html>
<head>
<title>书籍信息</title><%
    Title titles =(Title) session.getAttribute("titles");
%>
</head>
<body>
<table style="TEXT-ALIGN: center" cellSpacing="0" cellPadding="O" width="590" border="0">
    <tr height= "100">
        <td colspan="3"><h2><%=titles.getTitle()%></h2></td>
    </tr>
    <tr>
        <td rowspan="5">
        <img style="border: thin solid black" wicth="80" height="120"src= "images/<%=titles.getImageFile()%>”
        alt="<%=titles.getImageFile()%>"/>
        </td>
        <td align="left">图书编号:</td>
        <td align= "left"><%=titles.getIsbn()%></td>
    </tr>
    <tr align= "left">
    <td align="left">价格: </td>
    <td align= "left"><%=titles.getPrice()%></td>
    </tr>
    <tr align="left">
        <td>版本号:</td>
        <td><%=titles.getEditionNumber()%></td>
    </tr>
    <tr align="left">
    <td class="bold">版权:</td>
    <td><%=titles.getCopyright()%></td>
    </tr>
</table>
</body>
</html>

