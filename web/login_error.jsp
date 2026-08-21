<%-- 
    Document   : login_error
    Created on : 17 Aug 2026, 1:38:41 PM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <main>
        <div class="card" style="max-width: 400px; margin: 4rem auto; text-align: center;">
            <div class="alert alert-danger">
                <h3>Authentication Failed</h3>
                <p>Invalid username or password.</p>
            </div>
            <a href="login.jsp" class="btn">Try Again</a>
        </div>
    </main>
</body>
</html>
