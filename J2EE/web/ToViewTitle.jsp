<%@ page import="bean.Service.imple.TitleServiceImpl" %>
<%@ page import="bean.Dao.Title" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
    String isbn = request.getParameter("isbn");
    TitleServiceImpl titleDao = new TitleServiceImpl();
    Title titles=titleDao.findByIsbn(isbn);//根据ISBN号查找图书

    session.setAttribute("titles",titles); //将图书对象titles保存在sessions对象中,保存属性名为titles

    //转发显示详细信息页面
    request.getRequestDispatcher("detail.jsp").forward(request, response);

%>
</body>
</html>
