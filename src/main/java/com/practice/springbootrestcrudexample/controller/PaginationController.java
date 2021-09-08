package com.practice.springbootrestcrudexample.controller;

import com.practice.springbootrestcrudexample.entity.APIResponse;
import com.practice.springbootrestcrudexample.entity.ProductInfo;
import com.practice.springbootrestcrudexample.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PaginationController {

    @Autowired
    private ProductInfoService productInfoService;

    @GetMapping("/{field}")
    public APIResponse<List<ProductInfo>> getProductsWithSort(@PathVariable String field){
        List<ProductInfo> allProducts = productInfoService.getProductsWithSorting(field);
        return new APIResponse<>(allProducts.size(), allProducts);
    }

    @GetMapping("/pagination/{offset}/{pageSize}/{field}")
    public APIResponse<Page<ProductInfo>> getProductsWithPagination(@PathVariable int offset, @PathVariable int pageSize, @PathVariable String field){
        Page<ProductInfo> productsWithPagination = productInfoService.getProductsWithPaginationAndSorting(offset, pageSize, field);

        return new APIResponse<>(productsWithPagination.getSize(),productsWithPagination);
    }

}
