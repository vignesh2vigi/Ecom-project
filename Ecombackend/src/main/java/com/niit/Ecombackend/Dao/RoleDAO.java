package com.niit.Ecombackend.Dao;

import java.util.List;

import com.niit.Ecombackend.Model.Role;

public interface RoleDAO {
	
	public List<Role> list();	
	
	public Role getByUserName(String username);
	
	public Role getByEmailId(String emailid);
	
	public Role getByContactNumber(int contactnumber);
	
	public void saveOrUpdate(Role role);
		
    public void delete(String username);

	
}
