package com.project.jfsd.service;



import java.util.List;

import org.springframework.http.HttpStatus;

import com.project.jfsd.model.User;



public interface UserService {

	public HttpStatus addUser(User user);

	public HttpStatus addAdmin(User admin);

	public boolean authenticate(String username, String password);
	
	public User getUserByUsername(String uname);

	public List<User> getAllUsers();

}

