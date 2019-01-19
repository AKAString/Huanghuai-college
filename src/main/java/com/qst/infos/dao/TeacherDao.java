package com.qst.infos.dao;

import java.util.List;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.TeacherEntity;

public interface TeacherDao {
	public void addOneTeacher(TeacherEntity teacher);
	public void deleteOneTeacherById(TeacherEntity teacher);
	public TeacherEntity queryOneTeacherById(TeacherEntity teacher);
	public List<TeacherEntity> queryAllTeacher();
	public void updateOneTeacherById(TeacherEntity teacher);
	public List<CollegeEntity> queryAllCollege();
	public TeacherEntity queryTeacherMaxNumOfOneCollege(TeacherEntity teacher);
	public List<TeacherEntity> querySomeTeacher(int teacherCollegeId);
}
