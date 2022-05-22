package com.GymManager.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.GymManager.Entity.AccountEntity;
import com.GymManager.Serializer.LoginRequest;
import com.GymManager.Service.LoginService;

@Controller
@Transactional
public class LoginController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "admin/login", method = RequestMethod.GET)
	public String adminLogin(ModelMap model) {
		model.addAttribute("loginRequest", new LoginRequest());
		return "admin/login";
	}

	@RequestMapping(value = "admin/login", method = RequestMethod.POST)
	public String handleLogin(ModelMap model, HttpSession ss, HttpServletRequest request) {
		Session session = factory.getCurrentSession();
		String hql = "FROM AccountEntity WHERE policyId = '0' AND username = '" + request.getParameter("username")
				+ "' AND password = '" + request.getParameter("password") + "'";

		Query query = session.createQuery(hql);
		if (query.list().size() > 0) {
			AccountEntity account = (AccountEntity) query.list().get(0);
			ss.setAttribute("admin", account);
		} else {
			model.addAttribute("matKhau", "Tài khoản hoặc mật khẩu không đúng");
			ss.removeAttribute("admin");
			return "admin/login";
		}

		return "redirect:/admin/customer.htm";
	}

}
