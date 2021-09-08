package com.practice.springbootrestcrudexample.repository;

import com.practice.springbootrestcrudexample.entity.ProductInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductInfoRepository extends JpaRepository<ProductInfo, Integer> {
    ProductInfo findByName(String name);
}
