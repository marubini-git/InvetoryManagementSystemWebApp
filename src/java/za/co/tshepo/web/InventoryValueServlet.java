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

/**
 *
 * @author Tshepo
 */
public class InventoryValueServlet extends HttpServlet {
    @EJB
    private ProductFacadeLocal productFacade;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        Double value = productFacade.calcInventoryValue(/*p_id*/);
        
        session.setAttribute("value",value);

        RequestDispatcher disp = request.getRequestDispatcher("calculate_outcome.jsp");
        disp.forward(request, response);
    }
}
