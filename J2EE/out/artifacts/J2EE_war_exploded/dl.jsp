<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(name != null && name.equals("admin") && password != null && password.equals("123456")) {
        session.setAttribute("admin", name);%>
<jsp:forward page="home.jsp"></jsp:forward>
<%}
else{
    out.println("<script>window.alert('账号或密码错误');window.location.href='index.jsp';</script>");
}%>
</body>
</html>
