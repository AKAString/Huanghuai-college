package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.CourseDao;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.CourseEntity;
import com.qst.infos.entity.CourseInfoEntity;
import com.qst.infos.entity.PlanCourseEntity;
import com.qst.infos.service.CourseService;

@Service
public class CourseServiceImp implements CourseService {

	@Resource
	private CourseDao courseDao;
	
	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public void addOneCourse(CourseEntity course) {
		courseDao.addOneCourse(course);
	}

	public List<CourseEntity> queryAllCourse() {
		return courseDao.queryAllCourse();
	}

	public CourseEntity queryOneCourseById(CourseEntity course) {
		return courseDao.queryOneCourseById(course);
	}

	public void deleteOneCourseById(CourseEntity course) {
		courseDao.deleteOneCourseById(course);
	}

	public void updateOneCourseById(CourseEntity course) {
		courseDao.updateOneCourseById(course);
	}

	public List<CollegeEntity> queryAllCollege() {
		return courseDao.queryAllCollege();
	}

	public List<CourseInfoEntity> queryAllCourseInfo() {
		return courseDao.queryAllCourseInfo();
	}

	public List<CourseEntity> querySomeCourse(CourseEntity course) {
		return courseDao.querySomeCourse(course);
	}

	public void addOneCoursePlan(CourseEntity courses) {
		courseDao.addOneCoursePlan(courses);
		
	}

	public List<PlanCourseEntity> queryOneCoursePlan(CourseEntity ce) {
		return courseDao.queryOneCoursePlan(ce);
	}

	public List<PlanCourseEntity> queryAllCoursePlan() {
		return courseDao.queryAllCoursePlan();
	}

	public void deleteOneOpenCourse(PlanCourseEntity planCourse) {
		courseDao.deleteOneOpenCourse(planCourse);
		
	}

	public void updateOneCoursePlan(PlanCourseEntity planCourse) {
		courseDao.updateOneCoursePlan(planCourse);
		
	}

}
