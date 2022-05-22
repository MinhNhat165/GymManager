package student.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.bean.Product;

@Controller
@RequestMapping("/product/")
public class ProductController {
	@RequestMapping("list")
	public String list(ModelMap model) {
		List<Product> list = new ArrayList<>();
		list.add(new Product("Nokia Star",1000.0,0.05));
		list.add(new Product("iPhone9",1500.0,0.05));
		list.add(new Product("Samsung Galaxy N10",750.0,0.15));
		list.add(new Product("Sony Experia",500.0,0.0));
		model.addAttribute("prods",list);
		return "list";
	}
}
