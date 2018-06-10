<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<!--<html>-->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title>Title</title>

</head>
<body>

<h1><div style="text-align: center;">Podsumowanie transakcji</div></h1>
<h2><div style="text-align: center;">Twój koszyk</div></h2>

<% Object zakupy = request.getAttribute("prices");
    List<Double> cena = (List<Double>) zakupy;

    Object listaProduktow = request.getAttribute("products");
    List<String> produkty = (List<String>) listaProduktow;
%>

<table class="table table-striped table-dark">
    <thead class="thead-dark">
    <thead>
    <div style="text-align: center;">
    <tr>
        <th scope="col">Lp.</th>
        <th scope="col">Nazwa produktu</th>
        <th scope="col">Cena produktu</th>
    </tr>
    </div></thead>
    <tbody>
    <div style="text-align: center;">
    <tr>
        <th scope="row">1</th>
        <td><%=produkty.get(0)%>
        </td>
        <td><%=cena.get(0)%>
        </td>
    </tr>

    <tr>

        <%
            if (produkty.size() > 1) {
                out.println("<th scope=\"row\">" + 2 + "</th>");
                out.println("<td>" + produkty.get(1) + "</td>");
                out.println("<td>" + cena.get(1) + "</td>");
            }
            ;
        %>

    </tr>
    <tr>
        <%
            if (produkty.size() > 2) {
                out.println("<th scope=\"row\">" + 3 + "</th>");
                out.println("<td>" + produkty.get(2) + "</td>");
                out.println("<td>" + cena.get(2) + "</td>");
            }
            ;
        %>
    </tr>
    <tr>
        <%
            if (produkty.size() > 3) {
                out.println("<th scope=\"row\">" + 4 + "</th>");
                out.println("<td>" + produkty.get(3) + "</td>");
                out.println("<td>" + cena.get(3) + "</td>");
            }
            ;
        %>
    </tr>
    </div></tbody>
</table></table>

<%
    Object suma = request.getAttribute("totalSum");
    Object srednia = request.getAttribute("average");
%>
<h2><div style="text-align: center;">Całkowity koszt: <%=suma%></div></h2>
<h2><div style="text-align: center;">Średnia cena pojedyńczego produktu: <%=srednia%></div></h2>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
