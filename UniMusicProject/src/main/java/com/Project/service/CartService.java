package com.Project.service;

import com.Project.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}

