package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.TeacherEntity;

public interface TeacherService {

	public void addOneTeacher(TeacherEntity teacher);
	public void deleteOneTeacherById(TeacherEntity teacher);
	public TeacherEntity queryOneTeacherById(TeacherEntity teacher);
	public List<TeacherEntity> queryAllTeacher();
	public void updateOneTeacherById(TeacherEntity teacher);
	public List<CollegeEntity> queryAllCollege();
	public TeacherEntity queryTeacherMaxNumOfOneCollege(TeacherEntity teacher);
	public List<TeacherEntity> querySomeTeacher(int teacherCollegeId);
}
