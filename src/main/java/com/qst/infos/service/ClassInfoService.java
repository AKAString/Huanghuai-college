package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.ClassInfoEntity;
import com.qst.infos.entity.CollegeEntity;

public interface ClassInfoService {
	public void addClassInfo(ClassInfoEntity classinfo);
	public List<ClassInfoEntity> findAllClassInfo();
	public ClassInfoEntity findOneClassInfoById(int class_id);
	public void updataClassInfoById(ClassInfoEntity classinfo);
	public void deleteOneClassInfoById(int class_id);
	public List<CollegeEntity> queryAllCollege();
	public List<ClassInfoEntity> queryInfoOfClass(ClassInfoEntity infoOdClass);
}
