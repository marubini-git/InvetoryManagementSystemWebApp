<%-- 
    Document   : update_p_outcome
    Created on : 15 Aug 2026, 3:57:09 PM
    Author     : Tshepo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Stock Update Outcome</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header><div class="header-container"><a href="menu.html" class="brand">Inventory Engine</a></div></header>

    <main>
        <div class="card" style="max-width: 500px; margin: 2rem auto;">
            <% String error = (String) request.getAttribute("errorMessage"); %>
            <% if (error != null) { %>
                <div class="alert alert-danger">
                    <h3>Update Failed</h3>
                    <p><%= error %></p>
                </div>
            <% } else { %>
                <div class="alert alert-success">
                    <h3>Stock Updated</h3>
                    <p>The product quantity was adjusted successfully.</p>
                </div>
            <% } %>
            <a href="menu.html" class="btn">Back to Dashboard</a>
        </div>
    </main>
</body>
</html>



