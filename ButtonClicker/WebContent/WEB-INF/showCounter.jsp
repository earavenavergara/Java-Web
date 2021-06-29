<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Counter">
		<input type="submit" value="Click Me!">
		<p>
			You have clicked this button
			<c:out value="${count.plus()}" />
			times
		</p>
	</form>
</body>
</html>