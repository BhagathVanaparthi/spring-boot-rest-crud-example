package com.practice.springbootrestcrudexample.service;

import com.practice.springbootrestcrudexample.entity.ProductInfo;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ProductInfoService {
    ProductInfo addProductInfo(ProductInfo productInfo);

    List<ProductInfo> addMultipleProductInfo(List<ProductInfo> productsInfo);

    List<ProductInfo> getProductInfoList();

    ProductInfo getProductInfoById(int id);

    ProductInfo getProductInfoByName(String name);

    ProductInfo updateProductInfo(ProductInfo productInfo);

    String deleteProductInfo(int id);

    List<ProductInfo> getProductsWithSorting(String field);

    Page<ProductInfo> getProductsWithPaginationAndSorting(int offset, int pageSize, String field);

    Page<ProductInfo> getProductsWithPagination(int offset, int pageSize);
}
