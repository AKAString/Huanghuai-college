package com.qst.infos.contrallers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.CourseEntity;
import com.qst.infos.entity.CourseInfoEntity;
import com.qst.infos.service.CourseService;

@RequestMapping(value="/CourseController")
@Controller
public class CourseController {
	@Resource
	private CourseService coursrService;
	
	public CourseService getCoursrService() {
		return coursrService;
	}

	public void setCoursrService(CourseService coursrService) {
		this.coursrService = coursrService;
	}

	/**
	 * 为课程添加   查询全部信息  , (课程信息 Ajax查询 不需要在此查询  页面查询即可) 
	 * 开课院系信息  查询所有院系
	 * @param courseInfo
	 * @return
	 */
	@RequestMapping(value="/addOneCourseWithAllIndo")
	public String addOneCourseWithAllIndo(HttpServletRequest request) {
		List<CourseInfoEntity> list1 = coursrService.queryAllCourseInfo();
		List<CollegeEntity> list = coursrService.queryAllCollege();
		request.setAttribute("listCourseInfo", list1);
		request.setAttribute("listCollege", list);
		return "course/addOneCourse";
	}
	@RequestMapping(value="/addOneCourse")
	public String addOneCourse(CourseEntity course, HttpServletRequest request) {
		coursrService.addOneCourse(course);
		return addOneCourseWithAllIndo(request);
	}
	@RequestMapping(value="/queryAllCourse")
	public String queryAllCourse( HttpServletRequest request) {
		List<CourseEntity> list = coursrService.queryAllCourse();
		request.setAttribute("listCourse", list);
		return "course/showAllCourse";
	}
	@RequestMapping(value="/queryOneCourseById")
	public String queryOneCourseById(CourseEntity course, HttpServletRequest request) {
		
		CourseEntity ce = coursrService.queryOneCourseById(course);
		request.setAttribute("course2", ce);
		
		addOneCourseWithAllIndo(request);
		return "course/updateOneCourseById";
	}
	@RequestMapping(value="/updateOneCourseById")
	public String updateOneCourseById(CourseEntity course, HttpServletRequest request) {
		System.out.println(course);
		coursrService.updateOneCourseById(course);
		return queryAllCourse(request);
	}
	@RequestMapping(value="/deleteOneCourseById")
	public String deleteOneCourseById(CourseEntity course, HttpServletRequest request) {
		coursrService.deleteOneCourseById(course);
		return queryAllCourse(request);
	}
	
	

}
