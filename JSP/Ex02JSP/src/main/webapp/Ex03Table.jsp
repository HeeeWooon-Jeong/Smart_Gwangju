<%@page import="java.util.stream.IntStream"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border 1px black>
	<tr>
	<% 
	for(int i =1; i<11; i++){
			
	%>
	
	<td><%=i %></td>
 	
 	<%  }
	%> 
	</tr>
	</table>
</body>
</html>