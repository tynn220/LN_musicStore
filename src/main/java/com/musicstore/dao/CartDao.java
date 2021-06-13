package com.musicstore.dao;


import com.musicstore.entity.Cart;



public interface CartDao {

    Cart getCartById(int cartId);

    void update(Cart cart);

}
