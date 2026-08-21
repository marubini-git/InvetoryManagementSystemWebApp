/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.co.tshepo.exception;

/**
 *
 * @author Tshepo
 */
public class InvalidProductDataException extends Exception {
    public InvalidProductDataException(String message) {
        super(message);
    }
}
