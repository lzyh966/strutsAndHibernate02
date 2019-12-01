package service.serviceImpl;

import dao.UserDao;
import dao.daoImpl.UserDaoImpl;
import model.User;
import service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public User findByNameAndPswd(String userName, String password) {
		UserDao userDao = new UserDaoImpl();
		
		return userDao.findByNameAndPswd(userName, password);
	}

}
