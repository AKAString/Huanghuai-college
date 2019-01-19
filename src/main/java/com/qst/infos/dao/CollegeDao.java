package com.qst.infos.dao;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;

public interface CollegeDao {

	public void addOneCollege(CollegeEntity college);
	public void deleteOneCollege(CollegeEntity college);
	public List<CollegeEntity> queryAllCollege();
	public CollegeEntity queryOneCollegeById(CollegeEntity college);
	public void updateOneById(CollegeEntity college);
}
