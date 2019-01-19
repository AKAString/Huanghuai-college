package com.qst.infos.entity;

import java.io.Serializable;

public class ClassInfoEntity implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int class_id;
	private int grade;
	private MajorEntity major;
	private String class_name;
	private int pop_num;

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public MajorEntity getMajor() {
		return major;
	}

	public void setMajor(MajorEntity major) {
		this.major = major;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public int getPop_num() {
		return pop_num;
	}

	public void setPop_num(int pop_num) {
		this.pop_num = pop_num;
	}

}
