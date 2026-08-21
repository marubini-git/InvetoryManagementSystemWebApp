/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.co.tshepo.ejb.bl;

import java.util.List;
import javax.annotation.security.DeclareRoles;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.co.tshepo.entity.Product;
import za.co.tshepo.exception.InsufficientStockException;
import za.co.tshepo.exception.ProductNotFoundException;

/**
 *
 * @author Tshepo
 */
@Stateless
public class ProductFacade extends AbstractFacade<Product> implements ProductFacadeLocal {
    @PersistenceContext(unitName = "InvetoryManagementSystemWebAppPU")
    private EntityManager em;

    
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductFacade() {
        super(Product.class);
    }

    @RolesAllowed({"admin","clerk"})
    @Override
    public Product updateStock(Product product,Integer quantity) throws ProductNotFoundException, InsufficientStockException {
        
        if (product == null) {
            throw new ProductNotFoundException("Product ID was not found.");
        }
        
        Integer totalQuantity = product.getQuantity() + quantity;
        if (totalQuantity < 0) {
            throw new InsufficientStockException("Stock level cannot drop below zero. Current stock: " + product.getQuantity());
        }
        product.setQuantity(totalQuantity);
        getEntityManager().merge(product);
        return product;
    }
    
    @RolesAllowed("admin")
    @Override
    public Double calcInventoryValue() {
        String strQ = "SELECT SUM(p.productPrice * p.quantity) FROM Product p";
        Query query = em.createQuery(strQ);
        Double inventoryValue = Math.ceil((Double)query.getSingleResult()); 
        return inventoryValue; 
    }

    @RolesAllowed({"admin","clerk"})
    @Override
    public List<Product> lowStockReport() {
        String strQ = "SELECT p FROM Product p WHERE p.quantity <= p.RE_ORDER_THRESHOLD";
        Query query = em.createQuery(strQ);
        List<Product> lowStock = (List<Product>)query.getResultList(); 
        return lowStock;
    }

    @RolesAllowed({"admin","clerk"})
    @Override
    public List<Product> getAllProducts() {
        String strQ = "SELECT p FROM Product p";
        Query query = em.createQuery(strQ);
        List<Product> getAll = (List<Product>)query.getResultList(); 
        return getAll;
    }
    
}
