<%@page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@page import="bean.*"%>
<%@ page import="bean.Dao.Title" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>修改图书页面</title>
<%
    Title title=(Title)request.getAttribute("title");
%>
</head>
<body>
        <h1>修改图书</h1>
  <form method= "post" action="DoSaveEditTitle.jsp">
    <table>
      <tr><td>lsbn号</td>
        <td><input type="text" name="isbn" readOnly="true"
                   value="<%=title.getIsbn()%>"/></td>
      </tr>
      <tr><td>书名</td><td><input type="text" name="title" value="<%=title.getTitle()%>"/></td></tr>
      <tr><td>封面图像文件名称</td><td><input type="text" name="imageFile" value="<%=title.getImageFile() %>"/></td></tr>
      <tr><td>版本号</td><td><input type= "text" name="editionNumber" value="<%=title.getEditionNumber() %>"/></td></tr>
      <tr><td>出版商ID</td><td><input type="text" name="publisherId" value="<%=title.getPublisherId() %>"/></td></tr>
      <tr><td>价格</td><td><input type="text" name="price" value="<%=title.getPrice()%>"/></td></tr>
      <tr><td>版权</td><td><input type= "text" name="copyright" value="<%=title.getCopyright() %>"/></td></tr>
      <tr><td><input type= "submit" value="保存"/></td></tr></table>
  </form><br>
        </body>
</html>
