<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  Página 2 </title>
</head>
<body>
	<c:if test="${empty sessionScope.autenticado}">
		<c:redirect url="login.jsp"/>
	</c:if>
	<span> Usuario : ${sessionScope.usuario} </span>	
	<c:import url="navbar.jspf"></c:import>		
	
	<p> pagina 2 </p>
	
	<c:url var="pagina1" value="pagina1.jsp"/>
	<a href="${pagina1 }"> <button type="button"> &#171; Anterior  </button> <a/>
	
</body>
</html>