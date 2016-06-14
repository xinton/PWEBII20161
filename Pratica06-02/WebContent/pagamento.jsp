<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<%@ taglib prefix="fmt" 
			uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> PAGAMENTO </title>
<style>
table, th, td {
    border: 1px solid black;
}
th {
	background-color: yellow;
}
</style>
</head>
<body>
	<center>
	<table>
		<tr> 
			<th> Descricao </th>
			<th> Quantidade </th> 
			<th> Total Parcial  </th>
		</tr>
		<c:forEach items="${sessionScope.carrinho.itemsCarrinho}" var="i">
		<tr>
			<td> ${i.descricaoCurta} </td>
			<td> ${i.numItens} </td>
			<td> ${i.precoTotal} </td>
		</tr>
		</c:forEach>
		<tr> 
			<td colspan="2"> Total: </td>
			<td> ${sessionScope.total} </td>
		</tr>
	</table>
	<br/>
	<a href="lista"> <button> Continuar Comprando </button> </a> <br/> <br/> <hr/>
	
	<form action="resumo" method="get" id="formEntrega"></form>	
	
	<form action="finaliza" method="post"> 
		<h3> Informações de pagamento </h3>
		Nome: <input type="text" name="nome"/>  <br/>
		Cartao: <input type="text" name="cartao"/>
		
		<h3> Informações de Entrega </h3>
		Forma de entrega : 
		<select name="formaEntrega"> 
			<option value="esedex">E-Sedex</option>
			<option value="sedex">Sedex</option>
		</select>
		<br/>
		Endereço: <input type="text" name="endereco"/>  <br/>
		Pais: <input type="text" name="pais"/>  <br/>
		<button type="submit" form="formEntrega" value="Submit">Calcular</button>
		
		<c:set var="now" value="<%=new java.util.Date()%>" />
		<input type="hidden" name="data" value="${now}"/>		
		<input type="hidden" name="total" value="${sessionScope.total}"/>
		
		 <br/>  <br/>
		<input type="submit" value="finalizar compra"/>
	</form>
	</center>
</body>
</html>