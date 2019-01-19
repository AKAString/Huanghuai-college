package com.qst.infos.entity;

public class TeacherEntity {
	private int teacher_id;
	private long teacher_num;
	private String teacher_name;
	private String teacher_sex;
	private String teacher_birthdate;
	private String teacher_intime;
	private CollegeEntity college;
	private String teacher_state;
	private String teacher_education;
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public long getTeacher_num() {
		return teacher_num;
	}
	public void setTeacher_num(long teacher_num) {
		this.teacher_num = teacher_num;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getTeacher_sex() {
		return teacher_sex;
	}
	public void setTeacher_sex(String teacher_sex) {
		this.teacher_sex = teacher_sex;
	}
	public String getTeacher_birthdate() {
		return teacher_birthdate;
	}
	public void setTeacher_birthdate(String teacher_birthdate) {
		this.teacher_birthdate = teacher_birthdate;
	}
	public String getTeacher_intime() {
		return teacher_intime;
	}
	public void setTeacher_intime(String teacher_intime) {
		this.teacher_intime = teacher_intime;
	}
	public CollegeEntity getCollege() {
		return college;
	}
	public void setCollege(CollegeEntity college) {
		this.college = college;
	}
	public String getTeacher_state() {
		return teacher_state;
	}
	public void setTeacher_state(String teacher_state) {
		this.teacher_state = teacher_state;
	}
	public String getTeacher_education() {
		return teacher_education;
	}
	public void setTeacher_education(String teacher_education) {
		this.teacher_education = teacher_education;
	}
	
	


}
