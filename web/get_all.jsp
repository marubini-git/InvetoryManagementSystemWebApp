<%-- 
    Document   : get_all
    Created on : 17 Aug 2026, 3:41:22 PM
    Author     : Tshepo
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.co.tshepo.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Products - Inventory Engine</title>
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
        <div class="card">
            <h2 class="card-title">Complete Product Inventory</h2>
            <table class="data-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Current Quantity</th>
                        <th>Reorder Threshold</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Product> products = (List<Product>)session.getAttribute("getAll");
                        if (products != null && !products.isEmpty()) {
                            for (Product p : products) {
                    %>
                    <tr>
                        <td><%= p.getId() %></td>
                        <td><%= p.getProductName() %></td>
                        <td>R<%= String.format("%.2f", p.getProductPrice()) %></td>
                        <td><%= p.getQuantity() %></td>
                        <td><%= p.getRE_ORDER_THRESHOLD() %></td>
                    </tr>
                    <%      }
                        } else { 
                    %>
                    <tr>
                        <td colspan="5" style="text-align: center;">No products found.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>