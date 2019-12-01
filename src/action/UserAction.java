package action;

import com.opensymphony.xwork2.ActionSupport;

import model.User;
import service.UserService;
import service.serviceImpl.UserServiceImpl;

public class UserAction extends ActionSupport {
	private User user;
	
	
	public String login() {
		String name = user.getUserName();
		String pswd = user.getPassword();
		
		UserService userService = new UserServiceImpl();
		User u = userService.findByNameAndPswd(name, pswd);
		
		if (u == null) {
			addFieldError("errMsg", "用户名或密码不正确");
			return INPUT;
		}
		
		return SUCCESS;
	}
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
