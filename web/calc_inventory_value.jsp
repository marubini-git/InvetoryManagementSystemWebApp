<%-- 
    Document   : calc_inventory_value
    Created on : 16 Aug 2026, 2:44:47 PM
    Author     : Tshepo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Inventory Value Page</title>
    </head>
    <body>
        <h1>Calculate Inventory Value</h1>
        <p>
            Provide id of the product you want to calculate inventory value of.
        </p>
        <form action="InventoryValueServlet.do" method="POST">
            <table>
                <tr>
                    <td>Product Id:</td>
                    <td><input type="text" name="product_id"  required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="CALCULATE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
