package com.qst.infos.entity;

public class PlanCourseEntity {
	private TeacherEntity teacher;
	private ClassInfoEntity classInfo;
	private CourseEntity course;
	private int weekOfOpenCourse;
	private int courseId;
	private int classId;
	private int teacherId;
	private String isplaned;
	
	
	
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	
	
	public String getIsplaned() {
		return isplaned;
	}
	public void setIsplaned(String isplaned) {
		this.isplaned = isplaned;
	}
	public int getWeekOfOpenCourse() {
		return weekOfOpenCourse;
	}
	public void setWeekOfOpenCourse(int weekOfOpenCourse) {
		this.weekOfOpenCourse = weekOfOpenCourse;
	}
	public TeacherEntity getTeacher() {
		return teacher;
	}
	public void setTeacher(TeacherEntity teacher) {
		this.teacher = teacher;
	}
	public ClassInfoEntity getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(ClassInfoEntity classInfo) {
		this.classInfo = classInfo;
	}
	public CourseEntity getCourse() {
		return course;
	}
	public void setCourse(CourseEntity course) {
		this.course = course;
	}
	
	

}
