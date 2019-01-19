package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.CollegeDao;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.service.CollegeService;

@Service
public class CollegeServiceImp implements CollegeService {

	@Resource
	private CollegeDao collegeDao;
	
	
	public CollegeDao getCollegeDao() {
		return collegeDao;
	}

	public void setCollegeDao(CollegeDao collegeDao) {
		this.collegeDao = collegeDao;
	}

	public void addOneCollege(CollegeEntity college) {
		collegeDao.addOneCollege(college);
	}

	public void deleteOneCollege(CollegeEntity college) {
		collegeDao.deleteOneCollege(college);

	}

	public List<CollegeEntity> queryAllCollege() {
		return collegeDao.queryAllCollege();
	}

	public CollegeEntity queryOneCollegeById(CollegeEntity college) {
		return collegeDao.queryOneCollegeById(college);
	}

	public void updateOneById(CollegeEntity college) {
		collegeDao.updateOneById(college);
	}

}
