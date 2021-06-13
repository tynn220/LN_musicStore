package com.musicstore.dao;

import com.musicstore.entity.Cart;
import com.musicstore.entity.CartItem;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);


}
