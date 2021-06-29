<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Draw JSP</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<%
	String width = request.getParameter("width");
	String height = request.getParameter("height");
	int x = Integer.parseInt(height);
	int y = Integer.parseInt(width);
	int z = 0;
	%>
	<div id="container">
		<h1><%="Checkerboard: " + width + "w x " + height + "h"%></h1>
		<%
		for (int i = 0; i < x; i++) {
			z = i;
		%>
		<div class="row">
			<%
			for (int j = 0; j < y; j++) {
			%>
			<div class="square<%=z % 2%>"></div>
			<%
			z++;
			}
			%>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>