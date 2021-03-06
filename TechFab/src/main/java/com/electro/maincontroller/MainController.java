package com.electro.maincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.electro.model.Category;
import com.electro.service.BrandService;
import com.electro.service.CategoryService;
import com.electro.service.ProductService;
import com.electro.service.SubCategoryService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Controller
public class MainController {

	@Autowired
	CategoryService categoryService;
	
	@Autowired
ProductService productService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/")
	public String hello(Model model) {
		model.addAttribute("category",new Category());
	model.addAttribute("cList",categoryService.getCategoryList());
	model.addAttribute("scList",subCategoryService.getSubCategoryList());
	model.addAttribute("bList",brandService.getBrandList());

Gson gson=new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
String productList=gson.toJson(productService.getProductList());
model.addAttribute("jsonProductList", productList);
		return "index";
	}
}
