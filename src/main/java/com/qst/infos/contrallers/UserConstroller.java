package com.qst.infos.contrallers;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.UserEntity;
import com.qst.infos.service.UserService;

@RequestMapping(value="/UserConstroller")
@Controller
public class UserConstroller {
	@Resource
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/addOneUser")
	public String addOneUser(UserEntity user){
		userService.addOneUser(user);
		return "user/addUser";
	}
	

}
