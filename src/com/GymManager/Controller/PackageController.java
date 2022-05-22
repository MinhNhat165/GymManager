package com.GymManager.Controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/package")
@Transactional
public class PackageController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(ModelMap model) {
		return "admin/package";
	}

	@RequestMapping(value = "type", method = RequestMethod.GET)
	public String packageType() {
		return "admin/package-type";
	}
}
