<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="bean.*, java.util.*"%>
<%@ page import="bean.Dao.Title" %>
<jsp:useBean id="dao" class="bean.Service.imple.TitleServiceImpl" scope="request"/>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>浏览图书</title>
</head>
        <h1>添加图书</h1>
        <form method="post" action="DoAddTitle.jsp">
            <table>
            <tr><td>Isbn号</td><td><input type= "text" name="isbn"/></td></tr>
            <tr><td>书名</td><td><input type="text" name="title"/></td></tr>
            <tr><td>版本号</td><td><input type= "text" name="editionNumber"/></td></tr>
            <tr><td>出版商ID</td><td><input type= "text" name="publisherId"/></td></tr>
            <tr><td>价格</td><td><input type= "text" name="price"/></td></tr>
            <tr><td>出版时间</td><td><input type="text" name="copyright"/>
            </td></tr><tr><td><input type="submit" value="添加"/></td></tr>
            </table>
        </form>
    </body>
</html>
