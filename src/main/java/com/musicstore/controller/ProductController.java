package com.musicstore.controller;

import com.musicstore.entity.Product;
import com.musicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList")
    public String getProducts(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/productDetail/{productId}")
    public String productDetail(@PathVariable(value = "productId")int productId, Model model) throws IOException {
        Product product = productService.getProductById(productId);
        model.addAttribute("productdetail",product);
        return "productDetails";
    }
}

