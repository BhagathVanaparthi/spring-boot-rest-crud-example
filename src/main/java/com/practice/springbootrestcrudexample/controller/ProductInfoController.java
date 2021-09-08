package com.practice.springbootrestcrudexample.controller;

import com.practice.springbootrestcrudexample.entity.ProductInfo;
import com.practice.springbootrestcrudexample.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProductInfoController {

    @Autowired
    private ProductInfoService productInfoService;

    @PostMapping("/addProductInfo")
    public ProductInfo createProductInfo(@RequestBody ProductInfo productInfo){
        return productInfoService.addProductInfo(productInfo);
    }

    @PostMapping("/addProductsInfo")
    public List<ProductInfo> createProductsInfo(@RequestBody List<ProductInfo> productsInfo){
        return productInfoService.addMultipleProductInfo(productsInfo);
    }

    @GetMapping("/products")
    public List<ProductInfo> getAllProductsInfo(){
        return productInfoService.getProductInfoList();
    }

    @GetMapping("/productInfoById/{id}")
    public ProductInfo getProductInfo(@PathVariable int id){
        return productInfoService.getProductInfoById(id);
    }

    @GetMapping("/productInfoByName/{name}")
    public ProductInfo getProductInfoByName(@PathVariable String name){
        return productInfoService.getProductInfoByName(name);
    }

    @PutMapping("/update")
    public ProductInfo updateProductInfo(@RequestBody ProductInfo productInfo){
        return productInfoService.updateProductInfo(productInfo);
    }

    @DeleteMapping("/delete/{id}")
    public String deleteProductById(@PathVariable int id){
        return productInfoService.deleteProductInfo(id);
    }







}
