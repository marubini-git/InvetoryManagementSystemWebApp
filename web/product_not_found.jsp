<%-- 
    Document   : product_not_found
    Created on : 22 Aug 2026, 1:07:11 AM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"  isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Not Found Exception Page</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <main>
        <div class="card" style="max-width: 500px; margin: 4rem auto; text-align: center;">
            <%
                String error = (String) session.getAttribute("errorMessage");
                
            %>
            <h1 style="font-size: 2rem; color: var(--danger);">Product Not Found Exception</h1>
            
            <p style="color: var(--text-muted); margin: 1rem 0;"><%=error%>.</p>
            <a href="menu.html" class="btn">Return to Dashboard</a>
        </div>
    </main>
</body>
</html>
