package com.musicstore.service.impl;

import com.musicstore.dao.CustomerOrderDao;
import com.musicstore.entity.Cart;
import com.musicstore.entity.CartItem;
import com.musicstore.entity.CustomerOrder;
import com.musicstore.service.CartService;
import com.musicstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }


    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for(CartItem item : cartItems){
            grandTotal+=item.getTotalPrice();
        }
        return grandTotal;
    }
}
