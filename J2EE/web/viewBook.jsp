<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="bean.*, java.util.*"%>
<%@ page import="bean.Dao.Title" %>
<jsp:useBean id="dao" class="bean.Service.imple.TitleServiceImpl" scope="request"/>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浏览图书</title>
</head>
<body>

<h1 align= "center">浏览图书</h1>
<table align= "center" bgcolor="#add8e6">
    <tr>
        <td>ISBN</td><td>书名</td><td>版本</td><td>发布时间</td><td>价格</td>
    </tr>
    <% List list = dao.getTitles();
        Title titles=null;
        for(int i=0;i<list.size();i++){
            titles=(Title)list.get(i);%>
    <tr bgcolor="#00ffff">
        <td> <a href="ToViewTitle.jsp?isbn=<%=titles.getIsbn() %>" title="图书详情">
            <%=titles.getIsbn() %></a>
        </td>
        <td> <%=titles.getTitle()%> </td>
        <td><%=titles.getEditionNumber() %></td>
        <td><%=titles.getCopyright()%></td>
        <td><%=titles.getPrice() %>   </td>
    </tr>
    <%}%>
</table>
</body>
</html>