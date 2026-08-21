<%-- 
    Document   : add_p_outcome
    Created on : 15 Aug 2026, 3:35:28 PM
    Author     : Tshepo
--%>

<%@page import="za.co.tshepo.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Add Outcome</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="header-container">
            <a href="menu.html" class="brand">Inventory Engine</a>
            <nav><a href="menu.html">Dashboard</a></nav>
        </div>
    </header>

    <main>
        <div class="card" style="max-width: 500px; margin: 2rem auto;">
            <% Product p = (Product)session.getAttribute("p"); %>
                <div class="alert alert-success">
                    <h3>Success!</h3>
                    <p>Product <%=p.getProductName()%> has been added to the inventory database.</p>
                </div>
            <a href="menu.html" class="btn">Back to Dashboard</a>
        </div>
    </main>
</body>
</html>