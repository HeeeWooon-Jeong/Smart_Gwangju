<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
         String url1 = "";
         request.setCharacterEncoding("UTF-8");
         String id = request.getParameter("id");
         String pwd = request.getParameter("pwd");

     if(id.equals("smart") && pwd.equals("1234")){%>

         <% session.setAttribute("name", "smart");
           url1 = "ex15true.jsp";%>

     <%}else{%>
          <% url1 = "ex15FA.jsp";%>
      <% }%>
         <%response.sendRedirect(url1); %>
</body>
</html>