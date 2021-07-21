<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	/* outline: 1px dotted red; */
	margin: 0px;
	padding: 0px;
}

#container {
	width: 800px;
	margin: 0 auto;
	text-align: center;
}

.closs {
	width: 100px;
	height: 100px;
	background-color: red;
}
</style>
</head>
<body>
	<div id="container">
		<h1>¡Bienvenido al gran juego de números!</h1>
		<p>Estoy pensando en un número entre 1 y 100</p>
		<p>¡adivina!</p>
				<div class="closs">
			<p>
				<c:out value="${txt}" />
			</p>
		</div>
		<form action="Number" method="POST">
			<p>
				<input type="text" name="numero">
			</p>
			<p>
				<input type="submit" value="Enviar">
			</p>
		</form>
	</div>
</body>
</html>