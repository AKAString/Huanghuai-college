package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.UserDao;
import com.qst.infos.entity.UserEntity;
import com.qst.infos.service.UserService;

@Service
public class UserServiceImp implements UserService{
	
	@Resource
	private UserDao userdao;

	public UserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}

	public void addOneUser(UserEntity user) {
		userdao.addOneUser(user);
	}

	public List<UserEntity> queryAllUser() {
		return userdao.queryAllUser();
	}

	public UserEntity queryOneUserById(UserEntity user) {
		return userdao.queryOneUserById(user.getUserId());
	}

	public void updataUserById(UserEntity user) {
		userdao.updataUserById(user);
	}

	public void deleteOneUserById(int UserId) {
		userdao.deleteOneUserById(UserId);
		
	}
	public UserEntity queryOneUserById(int userId) {
		return userdao.queryOneUserById(userId);
	}

}
