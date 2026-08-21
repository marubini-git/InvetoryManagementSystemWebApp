<%-- 
    Document   : unauthorized_user
    Created on : 17 Aug 2026, 2:04:28 PM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"  isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>403 - Access Forbidden</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <main>
        <div class="card" style="max-width: 500px; margin: 4rem auto; text-align: center;">
            <h1 style="font-size: 3rem; color: var(--danger);">403</h1>
            <h2>Access Forbidden</h2>
            <p style="color: var(--text-muted); margin: 1rem 0;">You do not have administrative privileges to view this page or perform this operation.</p>
            <a href="menu.html" class="btn">Return to Dashboard</a>
        </div>
    </main>
</body>
</html>
