<%-- 
    Document   : login
    Created on : 17 Aug 2026, 1:34:28 PM
    Author     : Tshepo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Inventory Engine</title>
    
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <header>
        <div class="header-container">
            <a href="EndSessionServlet.do" class="brand">Inventory Engine</a>
        </div>
    </header>

    <main>
        <div class="card" style="max-width: 400px; margin: 3rem auto;">
            <h2 class="card-title" style="text-align: center;">Sign In</h2>
            <form action="j_security_check" method="POST">
                
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="j_username" required placeholder="e.g. alice_admin">
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="j_password" required="">
                </div>
                
                <button type="submit" class="btn" style="width: 100%;">Sign In</button>
            </form>
        </div>
    </main>
    
</body>
</html>
