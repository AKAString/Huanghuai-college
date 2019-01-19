package com.qst.infos.dao;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.CourseInfoEntity;

public interface CourseInfoDao {
	public void addOneCourseInfo(CourseInfoEntity courseInfo);
	public void deleteOneCourse(CourseInfoEntity course);
	public List<CourseInfoEntity> queryAllCourseInfo();
	public CourseInfoEntity queryOneCourseInfo(CourseInfoEntity course);
	public void updateOneCourseInfo(CourseInfoEntity course);
	public List<CollegeEntity> queryCollegeInfo();
}
