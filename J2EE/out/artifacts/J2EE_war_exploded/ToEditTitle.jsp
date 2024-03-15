<%@ page import="bean.Service.imple.TitleServiceImpl" %>
<%@ page import="bean.Dao.Title" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
    String isbn=request.getParameter("isbn"); //href携带的isbn参数，这里提取出来
    TitleServiceImpl titleDao=new TitleServiceImpl();
    Title title=titleDao.findByIsbn(isbn);//调用books数据库操作类执行对titles表的根据isbn号"查询"书籍操作
    request.setAttribute("title" ,title); //i将图书信息保存在request对象中,转发到编辑页面
    request.getRequestDispatcher("editTitle.jsp").forward(request, response);

%>
</body>
</html>
