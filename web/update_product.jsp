<%-- 
    Document   : update_product
    Created on : 15 Aug 2026, 3:42:30 PM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Stock - Inventory Engine</title>
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
        <div class="card" style="max-width: 500px; margin: 0 auto;">
            <h2 class="card-title">Update Product Quantity</h2>
            <form action="UpdateProductServlet.do" method="POST">
                <div class="form-group">
                    <label>Product ID</label>
                    <input type="text" name="id" required>
                </div>
                <div class="form-group">
                    <label>Quantity Delta (Positive to Add, Negative to Deduct)</label>
                    <input type="text" name="quantity" required placeholder="e.g. 10 or -5">
                </div>
                <button type="submit" class="btn">Update Stock</button>
            </form>
        </div>
    </main>
</body>
</html>
