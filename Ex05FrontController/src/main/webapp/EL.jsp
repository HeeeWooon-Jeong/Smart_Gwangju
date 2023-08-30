<%@page import="com.smhrd.entity.Member"%>
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
	
		// EL : 서버상(scope)에 저장되어 있는 데이터를 출력하기 위해 사용
		//		${name} == .getAttribute >> 표현식
		//		자바 변수 출력 X
		//		${name.필드명} : 저장된 객체 안의 필드에 접근 가능
		int a = 10;
	
		Member member = new Member();
		member.setNick("nick");
		member.setTel("010-5678-1234");
		
		session.setAttribute("member", member);
		request.setAttribute("member", 1);
	
	%>
	
	<%
		Member m = (Member)session.getAttribute("member");
	%>
	
	<h1><%=m.getNick() %></h1>
	
	<%-- EL은 ${}안의 name을 모든 scope 에서 검색
		 - 작은 범위의 scope부터 순차적으로 검색, 찾던 이름을 발견하면 중단 
		 - 특정 scope에서 데이터를 꺼내서 출력하고 싶다면 name 앞에 scope 명을 붙여주면 된다. 
		 - 가급적 다른 scope에 저장하더라도 이름은 다르게 저장할 것 --%>
	<h1>${sessionScope.member.nick}</h1>
	
	<%-- EL은 ${}안에서 연산이 가능
		 - 특이한 연산자
		
		 request 영역에 user 라는 이름의 데이터가 있는지?
		 
		 - empty : 특정 값이 비어있는 값('', null)인 경우에 true 를 리턴
		 -		   "== null" 이랑 같은 뜻 --%>
		 -		   문자열을 비교할 때 (있는지, 없는지(비어있는지))
	
	<h1>${empty user}</h1>

</body>
</html>