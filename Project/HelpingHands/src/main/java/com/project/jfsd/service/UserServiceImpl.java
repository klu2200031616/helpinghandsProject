package com.project.jfsd.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.project.jfsd.dao.UserDAO;
import com.project.jfsd.model.User;



@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public HttpStatus addUser(User user) {
		user.setAdmin(false);
		return userDAO.addUser(user);
	}

	@Override
	@Transactional
	public HttpStatus addAdmin(User admin) {
		return userDAO.addAdmin(admin);
	}

	@Override
	public List<User> getAllUsers() {
		return userDAO.getAllUsers();
	}

	@Override
	public boolean authenticate(String username, String password) {
		User user = userDAO.findByUsername(username);
		if (user != null && user.getPassword().equals(password)) {
			return true; // Authentication successful
		}
		return false;
	}

	@Override
	public User getUserByUsername(String username) {
		return userDAO.findByUsername(username);
	}


}
