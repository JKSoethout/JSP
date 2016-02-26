<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<style>
			body {
				text-align: center;
				padding-top: 15vw;
				font: 1.8vw "Arial";
			}
			#text {
				font: 3vw "Arial";
			}
		</style>
		<%@page import="java.util.Calendar"%>
		<%
			Calendar nu = Calendar.getInstance();
			int huidigUur = nu.get(Calendar.HOUR_OF_DAY);
			String text = "";
			if (huidigUur >= 6 && huidigUur < 12) {
				text = "Goedemorgen";
			}
			if (huidigUur >= 12 && huidigUur < 18) {
				text = "Goedemiddag";
			}
			if (huidigUur >= 18 && huidigUur < 24) {
				text = "Goedeavond";
			}
			if (huidigUur >= 0 && huidigUur< 6) {
				text = "Goedenacht";
			}
		%>
		<title>Text</title>
	</head>

	<body>
		<p id="text"><%=text%></p>
		<p>Huidig uur: <%=huidigUur%></p>
	</body>
</html>

