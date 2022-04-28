package com.dao;

import com.dto.Admin;

public interface AdminDao {
	public boolean validateAdmin(Admin admin);
	public void updateAdminPassword(String email, String password);
	public Admin searchAdminByEmail(String email);
}