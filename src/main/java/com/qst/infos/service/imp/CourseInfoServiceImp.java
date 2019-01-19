package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.CourseInfoDao;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.CourseInfoEntity;
import com.qst.infos.service.CourseInfoService;

@Service
public class CourseInfoServiceImp implements CourseInfoService{

	@Resource
	private CourseInfoDao courseInfoDao;
	
	
	public CourseInfoDao getCourseInfoDao() {
		return courseInfoDao;
	}
	public void setCourseInfoDao(CourseInfoDao courseInfoDao) {
		this.courseInfoDao = courseInfoDao;
	}

	public void addOneCourseInfo(CourseInfoEntity courseInfo) {
		courseInfoDao.addOneCourseInfo(courseInfo);
		
	}

	public void deleteOneCourse(CourseInfoEntity course) {
		courseInfoDao.deleteOneCourse(course);
		
	}

	public List<CourseInfoEntity> queryAllCourseInfo() {
		return courseInfoDao.queryAllCourseInfo();
	}

	public CourseInfoEntity queryOneCourseInfo(CourseInfoEntity course) {
		return courseInfoDao.queryOneCourseInfo(course);
	}

	public void updateOneCourseInfo(CourseInfoEntity course) {
		courseInfoDao.updateOneCourseInfo(course);
	}
	public List<CollegeEntity> queryCollegeInfo() {
		return courseInfoDao.queryCollegeInfo();
	}
	

}
