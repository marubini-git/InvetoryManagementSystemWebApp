/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.co.tshepo.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.co.tshepo.ejb.bl.ProductFacadeLocal;
import za.co.tshepo.entity.Product;
import za.co.tshepo.exception.InsufficientStockException;
import za.co.tshepo.exception.ProductNotFoundException;

/**
 *
 * @author Tshepo
 */
public class UpdateProductServlet extends HttpServlet {
    @EJB
    private ProductFacadeLocal productFacade;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try{
            Long p_id = Long.parseLong(request.getParameter("id"));
            Integer p_quantity = Integer.valueOf(request.getParameter("quantity"));

            Product product = productFacade.find(p_id);

            Product p = productFacade.updateStock(product, p_quantity);

            session.setAttribute("p",p);

            RequestDispatcher disp = request.getRequestDispatcher("update_p_outcome.jsp");
            disp.forward(request, response);
        
        } catch (NumberFormatException e) {
            String errorMessage = "Product ID and Quantity must be valid integers.";
            session.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("number_format_exception.jsp").forward(request, response);
        } catch (ProductNotFoundException e) {
            String errorMessage = e.getMessage();
            session.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("product_not_found.jsp").forward(request, response);
        } catch (InsufficientStockException e) {
            String errorMessage = e.getMessage();
            session.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("insufficient_stock.jsp").forward(request, response);
        }
        
    }
}
