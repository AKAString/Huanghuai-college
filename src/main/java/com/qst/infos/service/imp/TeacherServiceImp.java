package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.TeacherDao;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.TeacherEntity;
import com.qst.infos.service.TeacherService;

@Service
public class TeacherServiceImp implements TeacherService {

	@Resource
	private TeacherDao teacherDao;
	
	public TeacherDao getTeacherDao() {
		return teacherDao;
	}

	public void setTeacherDao(TeacherDao teacherDao) {
		this.teacherDao = teacherDao;
	}

	public void addOneTeacher(TeacherEntity teacher) {
		teacherDao.addOneTeacher(teacher);

	}

	public void deleteOneTeacherById(TeacherEntity teacher) {
		teacherDao.deleteOneTeacherById(teacher);

	}

	public TeacherEntity queryOneTeacherById(TeacherEntity teacher) {
		return teacherDao.queryOneTeacherById(teacher);
	}

	public List<TeacherEntity> queryAllTeacher() {
		return teacherDao.queryAllTeacher();
	}

	public void updateOneTeacherById(TeacherEntity teacher) {
		teacherDao.updateOneTeacherById(teacher);
	}

	public List<CollegeEntity> queryAllCollege() {
		return teacherDao.queryAllCollege();
	}

	public TeacherEntity queryTeacherMaxNumOfOneCollege(TeacherEntity teacher) {
		return teacherDao.queryTeacherMaxNumOfOneCollege(teacher);
	}

	public List<TeacherEntity> querySomeTeacher(int teacherCollegeId) {
		return teacherDao.querySomeTeacher(teacherCollegeId);
	}

}
