<%-- 
    Document   : low_stock_outcome
    Created on : 17 Aug 2026, 12:22:29 PM
    Author     : Tshepo
--%>

<%@page import="za.co.tshepo.entity.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="za.co.tshepo.entity.Product"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Low Stock Alert Report</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="header-container"><a href="menu.html" class="brand">Inventory Engine</a>
         <nav><a href="menu.html">Dashboard</a></nav>
        </div>
    </header>

    <main>
        <div class="card">
            <h2 class="card-title" style="color: var(--danger);">Low Stock Warnings</h2>
            <table class="data-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Stock Level</th>
                        <th>Reorder Threshold</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Product> lowStock = (List<Product>)session.getAttribute("lowStock");
                        if (lowStock != null && !lowStock.isEmpty()) {
                            for (Product p : lowStock) {
                    %>
                    <tr>
                        <td><%= p.getId() %></td>
                        <td><%= p.getProductName() %></td>
                        <td style="color: var(--danger); font-weight: bold;"><%= p.getQuantity() %></td>
                        <td><%= p.getRE_ORDER_THRESHOLD()%></td>
                    </tr>
                    <%      }
                        } else { 
                    %>
                    <tr>
                        <td colspan="4" style="text-align: center; color: var(--success);">All products are sufficiently stocked.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>