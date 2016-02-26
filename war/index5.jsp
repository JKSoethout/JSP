<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<style>
			body {
				text-align: center;
				padding-top: 10px;
				font: 1px "Arial";
			}
			div#boardEdge {
				display: flex;
				flex-flow: row wrap;
				margin: auto;
				width: 300px;
				border: 10px solid black;
			}
			div#boardEdge div {
				width: 3vw;
				height: 3vw;
			}
			div.black {background-color: black;}
			div.white {background-color: white;}
		</style>
		<title>Schaakbord</title>
	</head>

	<body>
		<div id="boardEdge">
			<%
				String kleur = "black";
				
				for (int iRow = 1; iRow <= 8; iRow++) {
					for (int iCol = 1; iCol <= 8; iCol++) {
						if (iRow % 2 == 1 && iCol % 2 == 1) {kleur = "black";} 
						if (iRow % 2 == 1 && iCol % 2 == 0) {kleur = "white";} 
						
						if (iRow % 2 == 0 && iCol % 2 == 1) {kleur = "white";} 
						if (iRow % 2 == 0 && iCol % 2 == 0) {kleur = "black";} 
						
						out.println("<div class="+ kleur +"></div>");
					}
					if (iRow < 8) {out.println("<br>");}
				}
			%>
		</div>
	</body>
</html>
