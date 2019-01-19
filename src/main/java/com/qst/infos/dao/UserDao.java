package com.qst.infos.dao;

import java.util.List;

import com.qst.infos.entity.UserEntity;

public interface UserDao {

	public void addOneUser(UserEntity user);
	public List<UserEntity> queryAllUser();
	public UserEntity queryOneUserById(int userId);
	public void updataUserById(UserEntity user);
	public void deleteOneUserById(int UserId);
}
