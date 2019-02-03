package org.oracle.guptav.service;

import java.util.HashMap;

import org.oracle.guptav.dto.User;

public class LoginService {
	
	HashMap<String, String> userMap = new HashMap<String, String>();
	
	public LoginService(){
		userMap.put("guptav","abc123");
		userMap.put("guptav427","ghk189");
		userMap.put("vivgugup","oracle123");
	}
	
	public boolean getAuthentication(String userId, String password){
		
		if(password == null || password.length()<=0){
			return false;
		}
		else{
			return true;
		}
	}
	
	public User getUserDetails(String userId){
		User user = new User();
		user.setUserId(userId);
		user.setUserName(userMap.get(userId));
		return user;
	}

}
