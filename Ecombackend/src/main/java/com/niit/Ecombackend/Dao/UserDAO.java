package com.niit.Ecombackend.Dao;
import java.util.List;

import com.niit.Ecombackend.Model.User;

public interface UserDAO {
	
		public List<User> list();
		
		public User getByUserId(int userid);
		
		public User getByUserName(String userame);		
		
			
		
		public User getByEmailId(String emailid);
		
		public boolean isAllReadyRegister(String email, boolean b);
		
		public void saveOrUpdate(User user);
			
		public void delete(int UserId);

		}
