package dao;

import java.util.List;

import model.User;

public interface UserDao {
	public User findByNameAndPswd(String name, String pswd);
}
