
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Sklep Internetowy</title>
</head>
<body>
<h1><div style="text-align: center;">Witaj w sklepie internetowym ze wszystkim!</div></h1>
<h2><div style="text-align: center;">Podaj ceny i nazwy prodyktów które pragniesz kupić:</div></h2>

<% %>
<form method="post" action="product">
  <div style="text-align: center;"><input type="text" name="product1" placeholder="Product 1">
  <input type="number" name="price1" placeholder="Price 1"><br>
  <input type="text" name="product2" placeholder="Product 2">
  <input type="number" name="price2" placeholder="Price 2"><br>
  <input type="text" name="product3" placeholder="Product 3">
  <input type="number" name="price3" placeholder="Price 3"><br>
  <input type="text" name="product4" placeholder="Product 4">
  <input type="number" name="price4" placeholder="Price 4"><br>
  <input type="submit" value="Accept →"></div>
</form>
</body>
</html>
