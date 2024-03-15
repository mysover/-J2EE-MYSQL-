<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="bean.*, java.util.*"%>
<%@ page import="bean.Dao.Title" %>
<jsp:useBean id="dao" class="bean.Service.imple.TitleServiceImpl" scope="request"/>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>图书</title>
</head>
    <body>
        <h1 align= "center">书架维护</h1>
        <table align= "center" bgcolor="#add8e6">
            <tr>
                <td>ISBN</td><td>书名</td><td>版本</td><td>发布时间</td><td>价格</td>
            </tr>
            <% List list = dao.getTitles();
                Title titles=null;
                for(int i=0;i<list.size();i++){
                    titles=(Title)list.get(i);%>
            <tr bgcolor="#00ffff">
                <td> <a href="ToEditTitle.jsp?isbn=<%=titles.getIsbn() %>" title="单击进行编辑">
                        <%=titles.getIsbn() %></a>
                </td>
                <td> <%=titles.getTitle()%> </td>
                <td><%=titles.getEditionNumber() %></td>
                <td><%=titles.getCopyright()%></td>
                <td><%=titles.getPrice() %>   </td>
                <td><a href="DoDeleteTitle.jsp?isbn=<%=titles.getIsbn() %>">删除</a></td>
            </tr>
            <%}%>
        </table><br></br>
        <button onClick="window.open('addTitle.jsp')"  >添加图书</button>
    </body>
</html>