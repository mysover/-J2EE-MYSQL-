<%@ page import="bean.Service.imple.TitleServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    response.setContentType("text/html;charset=utf-8 ");
    String isbn=request.getParameter("isbn");
    TitleServiceImpl titleDao=new TitleServiceImpl();
    int n=titleDao.delete(isbn); //调用books数据库操作类执行对titles表的”删除"操作
    if(n>0)
        response.sendRedirect("listBook.jsp");
    else
        out.println("<script>window.alert('删除失败');window.location.href='listBook.jsp';</script>");

%>
</body>
</html>
