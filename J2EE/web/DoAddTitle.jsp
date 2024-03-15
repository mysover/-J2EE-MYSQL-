<%@ page import="bean.Service.imple.TitleServiceImpl" %>
<%@ page import="bean.Dao.Title" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    response.setContentType("text/html;charset=utf-8 ");//从页面获取文本框数据
    String isbn=request.getParameter("isbn"); //isbn号
    String booktitle=request.getParameter("title"); //书名
    String copyright=request.getParameter("copyright");//版权
    String imageFile=request.getParameter("imageFile");//封面囹像文件名称
    int editionNumber=Integer.parseInt(request.getParameter("editionNumber")); //版本号
    int publisherId=Integer.parseInt(request.getParameter("publisherId"));//出版商ID"
    float price=Float.parseFloat(request.getParameter("price"));//价格

    Title titlebean=new Title();
    titlebean.setIsbn(isbn);
    titlebean.setCopyright(copyright);
    titlebean.setEditionNumber(editionNumber);
    titlebean.setImageFile(isbn+".jpg");
    titlebean.setPrice(price);
    titlebean.setPublisherId(publisherId);
    titlebean.setTitle(booktitle);

    TitleServiceImpl titleDao=new TitleServiceImpl();
    int n=titleDao.add(titlebean);
    if(n>0)
        response.sendRedirect("listBook.jsp");
    else
        out.println("<script>window.alert('请正确填写');window.location.href='DoAddTitle.jsp';</script>");

%>
</body>
</html>
