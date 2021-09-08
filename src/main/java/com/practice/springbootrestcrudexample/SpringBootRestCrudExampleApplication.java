package com.practice.springbootrestcrudexample;

import com.practice.springbootrestcrudexample.entity.APIResponse;
import com.practice.springbootrestcrudexample.entity.ProductInfo;
import com.practice.springbootrestcrudexample.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@SpringBootApplication
@RestController
@RequestMapping("/productList")
public class SpringBootRestCrudExampleApplication {

	@Autowired
	private ProductInfoService productInfoService;

	public static void main(String[] args) {

		SpringApplication.run(SpringBootRestCrudExampleApplication.class, args);
	}



}
