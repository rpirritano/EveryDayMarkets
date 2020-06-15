package com.app.services;

import com.app.domain.ShoppingCart;

public interface CartService {

    ShoppingCart getShoppingCart();

    void addProductById(int id);

    void clearCart();

    void removeCartItemByProductId(int id);

}