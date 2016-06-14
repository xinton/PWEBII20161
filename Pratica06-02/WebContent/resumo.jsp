<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<%@ taglib prefix="fmt" 
			uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Resumo da compra -  </title>
</head>
<body>
<%-- <fmt:formatDate pattern="yyyy-MM-dd" 
            value="${now}" /> --%>	
	<div>
		<h1> Compra Realizada </h1>
		<hr>
		<h2> Dados Da compra </h2>
		<p> Nome: ${nome } </p>
		<p> Data :${data } </p>
		<p> Total: ${total } </p>
		<h2> Endereço de entrega </h2>
		<p> ${endereco} </p>
		<p> ${pais } </p>
	</div> 
	<hr>
	<a href="index.html"> Home </a>
	
	
</body>
</html>