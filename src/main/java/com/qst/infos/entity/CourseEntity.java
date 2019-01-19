package com.qst.infos.entity;

import java.util.Arrays;
import java.util.List;

public class CourseEntity {
	private int coures_id;
	/*
	private int course_num;*/
	private CourseInfoEntity courseInfo;
	private float course_credit;
	private int course_alltime;
	private int course_theoreticaltime;
	private int course_experimentaltime;
	private int course_othertime;
	private int course_weektime;
	private int course_opensemester;
	private String course_class;
	private CollegeEntity college;
	private String course_exam;
	
	private int [] infoOfClassId;
	private List<ClassInfoEntity> listOfClass;
	
	
	
	/*public int getCollege_id() {
		return college_id;
	}
	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}
	public int getCourse_num() {
		return course_num;
	}
	public void setCourse_num(int course_num) {
		this.course_num = course_num;
	}*/
	
	
	
	public List<ClassInfoEntity> getListOfClass() {
		return listOfClass;
	}
	public void setListOfClass(List<ClassInfoEntity> listOfClass) {
		this.listOfClass = listOfClass;
	}
	public int[] getInfoOfClassId() {
		return infoOfClassId;
	}
	public void setInfoOfClassId(int[] infoOfClassId) {
		this.infoOfClassId = infoOfClassId;
	}
	public float getCourse_credit() {
		return course_credit;
	}
	public CourseInfoEntity getCourseInfo() {
		return courseInfo;
	}
	public void setCourseInfo(CourseInfoEntity courseInfo) {
		this.courseInfo = courseInfo;
	}
	
	
	public int getCoures_id() {
		return coures_id;
	}
	public void setCoures_id(int coures_id) {
		this.coures_id = coures_id;
	}
	public void setCourse_credit(float course_credit) {
		this.course_credit = course_credit;
	}
	public int getCourse_alltime() {
		return course_alltime;
	}
	public void setCourse_alltime(int course_alltime) {
		this.course_alltime = course_alltime;
	}
	public int getCourse_theoreticaltime() {
		return course_theoreticaltime;
	}
	public void setCourse_theoreticaltime(int course_theoreticaltime) {
		this.course_theoreticaltime = course_theoreticaltime;
	}
	public int getCourse_experimentaltime() {
		return course_experimentaltime;
	}
	public void setCourse_experimentaltime(int course_experimentaltime) {
		this.course_experimentaltime = course_experimentaltime;
	}
	public int getCourse_othertime() {
		return course_othertime;
	}
	public void setCourse_othertime(int course_othertime) {
		this.course_othertime = course_othertime;
	}
	public int getCourse_weektime() {
		return course_weektime;
	}
	public void setCourse_weektime(int course_weektime) {
		this.course_weektime = course_weektime;
	}
	public int getCourse_opensemester() {
		return course_opensemester;
	}
	public void setCourse_opensemester(int course_opensemester) {
		this.course_opensemester = course_opensemester;
	}
	
	public String getCourse_class() {
		return course_class;
	}
	public void setCourse_class(String course_class) {
		this.course_class = course_class;
	}
	public CollegeEntity getCollege() {
		return college;
	}
	public void setCollege(CollegeEntity college) {
		this.college = college;
	}
	public String getCourse_exam() {
		return course_exam;
	}
	public void setCourse_exam(String course_exam) {
		this.course_exam = course_exam;
	}
	@Override
	public String toString() {
		return "CourseEntity [coures_id=" + coures_id + ", courseInfo=" + courseInfo + ", course_credit="
				+ course_credit + ", course_alltime=" + course_alltime + ", course_theoreticaltime="
				+ course_theoreticaltime + ", course_experimentaltime=" + course_experimentaltime
				+ ", course_othertime=" + course_othertime + ", course_weektime=" + course_weektime
				+ ", course_opensemester=" + course_opensemester + ", course_class=" + course_class + ", college="
				+ college + ", course_exam=" + course_exam + ", infoOfClassId=" + Arrays.toString(infoOfClassId)
				+ ", listOfClass=" + listOfClass + "]";
	}
	
	
	
	

}
