package com.qst.infos.entity;

import java.io.Serializable;

public class MajorEntity implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int major_id;
	private String major_name;
	private CollegeEntity college;

	public int getMajor_id() {
		return major_id;
	}

	public void setMajor_id(int major_id) {
		this.major_id = major_id;
	}

	public String getMajor_name() {
		return major_name;
	}

	public void setMajor_name(String major_name) {
		this.major_name = major_name;
	}

	public CollegeEntity getCollege() {
		return college;
	}

	public void setCollege(CollegeEntity college) {
		this.college = college;
	}

	@Override
	public String toString() {
		return "MajorEntity [major_id=" + major_id + ", major_name=" + major_name + ", college=" + college + "]";
	}

}
