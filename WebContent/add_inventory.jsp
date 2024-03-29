<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.ncsu.csc326.coffeemaker.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CoffeeMaker - Add Inventory</title>
<%@include file="head.jsp" %>
</head>
<body>
<div align=center class="font1">
<h1>CoffeeMaker</h1>
<h3>Add Inventory</h3>
<%	
	CoffeeMaker cm = (CoffeeMaker)session.getAttribute("cm");
	boolean added = false;
	String coffee = request.getParameter("amtCoffee");
	String milk = request.getParameter("amtMilk");
	String sugar = request.getParameter("amtSugar");
	String chocolate = request.getParameter("amtChocolate");
	if (coffee != null && !"".equals(coffee)) {
		cm.addCoffee(coffee);
		added = true;
	}
	if (milk != null && !"".equals(milk)) {
		cm.addMilk(milk);
		added = true;
	}
	if (sugar != null && !"".equals(sugar)) {
		cm.addSugar(sugar);
		added = true;
	}
	if (chocolate != null && !"".equals(chocolate)) {
		cm.addChocolate(chocolate);
		added = true;
	}
	
	if (added) {
		out.println("<span class=\"font_success\">Inventary is successfully updated.</span><br>");
	} else {

%>
<br>
<form method="post" action="add_inventory.jsp">
<table>
<tr>
<td><input type="text" name="amtCoffee"></td><td><span class="font1">Units Coffee</span></td>
</tr>
<tr>
<td><input type="text" name="amtMilk"></td><td><span class="font1">Units Milk</span></td>
</tr>
<tr>
<td><input type="text" name="amtSugar"></td><td><span class="font1">Units Sugar</span></td>
</tr>
<tr>
<td><input type="text" name="amtChocolate"></td><td><span class="font1">Units Chocolate</span></td>
</tr>
</table>
<input type="submit" value="Add Inventory!">
</form>
	<%} %>
<br><br>
<span class="font1"><a href="index.jsp"><span class="font1">Back to CoffeeMaker Menu</span></a>
</span>
</div>
</body>
</html>
