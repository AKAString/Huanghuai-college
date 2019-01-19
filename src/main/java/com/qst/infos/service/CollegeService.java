package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;

public interface CollegeService {

	public void addOneCollege(CollegeEntity college);
	public void deleteOneCollege(CollegeEntity college);
	public List<CollegeEntity> queryAllCollege();
	public CollegeEntity queryOneCollegeById(CollegeEntity college);
	public void updateOneById(CollegeEntity college);
}
