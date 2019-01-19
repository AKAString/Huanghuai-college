package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.CourseEntity;
import com.qst.infos.entity.CourseInfoEntity;
import com.qst.infos.entity.PlanCourseEntity;

public interface CourseService {

	public void addOneCourse(CourseEntity course);
	public List<CourseEntity> queryAllCourse();
	public CourseEntity queryOneCourseById(CourseEntity course);
	public void deleteOneCourseById(CourseEntity course);
	public void updateOneCourseById(CourseEntity course);
	public List<CollegeEntity> queryAllCollege();
	public List<CourseInfoEntity> queryAllCourseInfo();
	public List<CourseEntity> querySomeCourse(CourseEntity course);
	public void addOneCoursePlan(CourseEntity courses);
	public List<PlanCourseEntity> queryOneCoursePlan(CourseEntity ce);
	public List<PlanCourseEntity> queryAllCoursePlan();
	public void deleteOneOpenCourse(PlanCourseEntity planCourse);
	public void updateOneCoursePlan(PlanCourseEntity planCourse);
}
