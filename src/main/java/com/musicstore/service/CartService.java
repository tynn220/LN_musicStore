package com.musicstore.service;

import com.musicstore.entity.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);

}
