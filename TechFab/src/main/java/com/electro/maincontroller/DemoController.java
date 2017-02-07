package com.electro.maincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.electro.service.BrandService;
import com.electro.service.CategoryService;
import com.electro.service.ProductService;
import com.electro.service.SubCategoryService;

@Controller
public class DemoController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
ProductService productService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	BrandService brandService;
	
	
	@RequestMapping(value = "/contactus")
	public String contactUs(Model model)
	{
		model.addAttribute("cList",categoryService.getCategoryList());
		model.addAttribute("scList",subCategoryService.getSubCategoryList());
		model.addAttribute("bList",brandService.getBrandList());

	
		return "ContactUs";
	}
	
	@RequestMapping(value = "/accessdenied")
	public String LoginPage(Model model)
	{
		model.addAttribute("cList",categoryService.getCategoryList());
		model.addAttribute("scList",subCategoryService.getSubCategoryList());
		model.addAttribute("bList",brandService.getBrandList());

	
		return "AccessDenied";
	}
	
	@RequestMapping(value = "tyresponse")
	public String response(Model model)
	{
		model.addAttribute("cList",categoryService.getCategoryList());
		model.addAttribute("scList",subCategoryService.getSubCategoryList());
		model.addAttribute("bList",brandService.getBrandList());

	
		return "tyresponse";
	}
	
	

}
