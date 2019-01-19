package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.UserEntity;

public interface UserService {

	public void addOneUser(UserEntity user);
	public List<UserEntity> queryAllUser();
	public UserEntity queryOneUserById(int userId);
	public void updataUserById(UserEntity user);
	public void deleteOneUserById(int UserId);
}
