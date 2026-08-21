<%-- 
    Document   : calculate_outcome
    Created on : 16 Aug 2026, 2:50:23 PM
    Author     : Tshepo
--%>

<%@page import="za.co.tshepo.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Warehouse Inventory Valuation</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="header-container"><a href="menu.html" class="brand">Inventory Engine</a></div>
        <nav><a href="menu.html">Dashboard</a></nav>
    </header>

        <%
            Double valueTot = (Double)session.getAttribute("value");
        %>
    <main>
        <div class="card" style="max-width: 500px; margin: 2rem auto;">
            <h2 class="card-title" style="text-align: center;">Total Warehouse Asset Valuation</h2>
            <div class="metric-box">
                <p style="color: var(--text-muted); font-weight: 600;">Calculated Value</p>
                <div class="metric-value">
                    R<%= String.format("%.2f", valueTot != null ? valueTot : 0.0) %>
                </div>
            </div>
            <a href="menu.html" class="btn" style="margin-top: 1.5rem; width: 100%; text-align: center;">Back to Dashboard</a>
        </div>
    </main>
</body>
</html>


