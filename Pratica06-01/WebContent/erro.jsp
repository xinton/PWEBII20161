<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Login </title>
</head>
<body>
	<h1> Página de login </h1>
	<h2 style="background-color: red"> Erro no login </h2>
	<center>
	<form action="autenticar" method="post" style="width: 300px; border: black 1px solid; border-radius:5px ">
		Login: <input type="text" name="login"/> <br/>
		Senha: <input type="text" name="senha"/> <br/>
		<input type="submit" name="autenticar" value="Autenticar"/>
	</form>
	<a href="ajuda.jsp"> <button type="button">  &#63; Ajuda  </button> <a/>
	</center>
</body>
</html>