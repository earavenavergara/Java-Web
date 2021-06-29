<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dog</title>
</head>
<body>
	<p>
		Tu creaste un
		<c:out value="${dog.breed}" />
	</p>
	<p>
		<c:out value="${dog.showAffection()}" />
	</p>
</body>