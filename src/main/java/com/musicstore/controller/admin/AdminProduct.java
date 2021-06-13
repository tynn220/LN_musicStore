package com.musicstore.controller.admin;

import com.musicstore.entity.Product;
import com.musicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
@RequestMapping("/admin")
public class AdminProduct {

    private Path path;

    @Autowired
    ProductService productService;

    @RequestMapping("/product/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setProductCategory("instrument");
        product.setProductCondition("new");
        product.setProductStatus("active");
        model.addAttribute("addProduct", product);
        return "addProduct";
    }

    @RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("addProduct") Product product,
                             BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "addProduct";
        }
        productService.addProduct(product);

        MultipartFile multipartFile = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\template\\img\\" + product.getProductId() + ".png");
        if(multipartFile != null && !multipartFile.isEmpty()){
            try {
                multipartFile.transferTo(new File(path.toString()));
            }catch (Exception e) {
                e.printStackTrace();
                throw  new RuntimeException("Product saving failed");
            }
        }

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/editProduct/{id}")
    public String editProduct(@PathVariable(value = "id")int id, Model model){
        Product product = productService.getProductById(id);
        model.addAttribute("editproduct", product);
        return "editProduct";
    }

    @RequestMapping(value = "/product/editProduct", method = RequestMethod.POST)
    public String editProduct(@Valid @ModelAttribute("editproduct") Product product, BindingResult result
                                , HttpServletRequest request){

        if(result.hasErrors()){
            return "editProduct";
        }

        MultipartFile multipartFile = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\template\\img\\" + product.getProductId() + ".png");
        if(multipartFile != null && !multipartFile.isEmpty()){
            try {
                multipartFile.transferTo(new File(path.toString()));
            }catch (Exception e) {
                e.printStackTrace();
                throw  new RuntimeException("Product saving failed");
            }
        }

        productService.editProduct(product);

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/deleteProduct/{id}")
    public String deleteProduct(@PathVariable(value = "id") int id, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\template\\img\\" + id + ".png");

        if(Files.exists(path)){
            try {
                Files.delete(path);
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        Product product = productService.getProductById(id);
        productService.deleteProduct(product);
        return "redirect:/admin/productInventory";
    }

}
