package com.GymManager.Service.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.GymManager.Entity.AccountEntity;
import com.GymManager.Service.LoginService;
@Controller
public class LoginServiceImpl implements LoginService{
	@Autowired
	SessionFactory factory;
	@Override
	public AccountEntity checkLoginAdmin(String username, String password) {
		Session session = factory.openSession();
        System.out.println(username);
        System.out.println(password);
        try {
            String hql = "FROM AccountEntity as u where u.username= :username and u.password= :password";
            Query query = session.createQuery(hql);
            System.out.println(query);
            query.setParameter("username", username);
            query.setParameter("password", password);
            AccountEntity result = (AccountEntity) query.uniqueResult();
//            System.out.println("KET QUA RESULT");
//            System.out.println(result.toString());
            if (result != null) {
                return result;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
		
	}

}
