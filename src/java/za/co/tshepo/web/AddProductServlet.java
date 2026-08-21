/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.co.tshepo.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class AddProductServlet extends HttpServlet {
    @EJB
    private ProductFacadeLocal productFacade;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
        Long p_id = Long.valueOf(request.getParameter("product_id"));
        String p_name = request.getParameter("product_name");
        Double p_price = Double.valueOf(request.getParameter("product_price"));
        Integer p_quantity = Integer.valueOf(request.getParameter("product_quantity"));
        
        Product product = createProduct(p_id,p_name,p_price,p_quantity);
        productFacade.create(product);
        
        session.setAttribute("p", product);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_p_outcome.jsp");
        disp.forward(request, response);
        
    }

    private Product createProduct(Long p_id, String p_name, Double p_price, Integer p_quantity) {
        Product p = new Product();
        
        p.setId(p_id);
        p.setProductName(p_name);
        p.setProductPrice(p_price);
        p.setQuantity(p_quantity);
        p.setCreationDate(new Date());
        return p;
    }

}
