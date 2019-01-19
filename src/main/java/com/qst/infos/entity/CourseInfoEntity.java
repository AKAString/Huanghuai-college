package com.qst.infos.entity;

public class CourseInfoEntity {
	private int courseinfo_id;
	private int courseinfo_num;
	private String courseinfo_name;
	public int getCourseinfo_id() {
		return courseinfo_id;
	}
	public void setCourseinfo_id(int courseinfo_id) {
		this.courseinfo_id = courseinfo_id;
	}
	public String getCourseinfo_name() {
		return courseinfo_name;
	}
	public void setCourseinfo_name(String courseinfo_name) {
		this.courseinfo_name = courseinfo_name;
	}
	public int getCourseinfo_num() {
		return courseinfo_num;
	}
	public void setCourseinfo_num(int courseinfo_num) {
		this.courseinfo_num = courseinfo_num;
	}
	@Override
	public String toString() {
		return "CourseInfoEntity [courseinfo_id=" + courseinfo_id + ", courseinfo_num=" + courseinfo_num
				+ ", courseinfo_name=" + courseinfo_name + "]";
	}
	

}
