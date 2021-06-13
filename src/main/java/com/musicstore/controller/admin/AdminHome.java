package com.musicstore.controller.admin;

import com.musicstore.entity.Customer;
import com.musicstore.entity.Product;
import com.musicstore.service.CustomerService;
import com.musicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> productList = productService.getProductList();
        model.addAttribute("productListInventory", productList);
        return "Inventory";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model){
        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList",customerList);
        return "customerManagement";
    }

}
