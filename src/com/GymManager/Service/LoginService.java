package com.GymManager.Service;

import com.GymManager.Entity.AccountEntity;

public interface LoginService {
	public AccountEntity checkLoginAdmin(String username, String password);
}
