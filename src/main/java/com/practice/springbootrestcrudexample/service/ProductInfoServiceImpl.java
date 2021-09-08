package com.practice.springbootrestcrudexample.service;

import com.practice.springbootrestcrudexample.entity.ProductInfo;
import com.practice.springbootrestcrudexample.repository.ProductInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Service
public class ProductInfoServiceImpl implements ProductInfoService{


    @Autowired
    private ProductInfoRepository productInfoRepository;



    public ProductInfo addProductInfo(ProductInfo productInfo){
        return productInfoRepository.save(productInfo);
    }

    public List<ProductInfo> addMultipleProductInfo(List<ProductInfo> productInfos){
        return productInfoRepository.saveAll(productInfos);
    }

    public List<ProductInfo> getProductInfoList(){
        return productInfoRepository.findAll();
    }

    public ProductInfo getProductInfoById(int id){
        return productInfoRepository.findById(id).orElse(null);
    }

    public ProductInfo getProductInfoByName(String name){
        return productInfoRepository.findByName(name);
    }

    public String deleteProductInfo(int id){
        productInfoRepository.deleteById(id);
        return "product removed successfully !!"+id;
    }

    @Override
    public List<ProductInfo> getProductsWithSorting(String field) {
        return productInfoRepository.findAll(Sort.by(Sort.Direction.ASC,field));
    }

    @Override
    public Page<ProductInfo> getProductsWithPaginationAndSorting(int offset, int pageSize, String field) {

        Page<ProductInfo> productList = productInfoRepository.findAll(PageRequest.of(offset, pageSize).withSort(Sort.by(field)));

        return productList;
    }

    @Override
    public Page<ProductInfo> getProductsWithPagination(int offset, int pageSize) {

        Page<ProductInfo> productList = productInfoRepository.findAll(PageRequest.of(offset, pageSize));

        return productList;
    }

    public ProductInfo updateProductInfo(ProductInfo productInfo){
        ProductInfo existingProductInfo = productInfoRepository.findById(productInfo.getProductId()).orElse(null);
        existingProductInfo.setName(productInfo.getName());
        existingProductInfo.setQuantity(productInfo.getQuantity());
        existingProductInfo.setUnitPrice(productInfo.getUnitPrice());
        return productInfoRepository.save(existingProductInfo);
    }



}
