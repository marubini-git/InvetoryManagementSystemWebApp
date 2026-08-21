<%-- 
    Document   : add_product
    Created on : 15 Aug 2026, 3:13:52 PM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product - Inventory Engine</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="header-container">
            <a href="EndSessionServlet.do" class="brand">Inventory Engine</a>
            <nav><a href="menu.html">Dashboard</a></nav>
        </div>
    </header>

    <main>
        <div class="card" style="max-width: 600px; margin: 0 auto;">
            <h2 class="card-title">Add New Item</h2>
            <form action="AddProductServlet.do" method="POST">
                <div class="form-group">
                    <label>Product Id</label>
                    <input type="text" name="product_id" required placeholder="e.g. 111">
                </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <input type="text" name="product_name" required placeholder="e.g. Mechanical Keyboard">
                </div>
                <div class="form-group">
                    <label>Unit Price (R)</label>
                    <input type="number" step="0.01" name="product_price" required placeholder="0.00">
                </div>
                <div class="form-group">
                    <label>Initial Quantity</label>
                    <input type="number" name="product_quantity" required placeholder="0">
                </div>
                <button type="submit" class="btn">Save Product</button>
                <a href="menu.html" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </main>
</body>
</html>