<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cat</title>
</head>
<body>
	<p>
		Tu gato
		<c:out value="${cat.breed}" />
		,
		<c:out value="${cat.name}" />
		,
		<c:out value="${cat.showAffection()}" />
	</p>
</body>
</html>