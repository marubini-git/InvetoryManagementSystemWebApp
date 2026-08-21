/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.co.tshepo.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.co.tshepo.entity.Product;
import za.co.tshepo.exception.InsufficientStockException;
import za.co.tshepo.exception.ProductNotFoundException;

/**
 *
 * @author Tshepo
 */
@Local
public interface ProductFacadeLocal {

    void create(Product product);

    void edit(Product product);

    void remove(Product product);

    Product find(Object id);

    List<Product> findAll();

    List<Product> findRange(int[] range);

    int count();
    
    Product updateStock(Product product,Integer quantity)throws ProductNotFoundException, InsufficientStockException;
    
    Double calcInventoryValue();
    
    List<Product> lowStockReport();
    
    List<Product> getAllProducts();
    
}
