package com.practice.springbootrestcrudexample.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "PRODUCT_INFO")
public class ProductInfo {

    @Id
    @GeneratedValue
    private int productId;
    private String name;
    private int quantity;
    private double unitPrice;

    public ProductInfo(String s, int nextInt, int nextInt1) {
    }
}
