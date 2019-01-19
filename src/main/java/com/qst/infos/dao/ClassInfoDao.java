package com.qst.infos.dao;

import java.util.List;
import com.qst.infos.entity.ClassInfoEntity;
import com.qst.infos.entity.CollegeEntity;

public interface ClassInfoDao {
	public void addClassInfo(ClassInfoEntity classInfoEntity);
	public List<ClassInfoEntity> findAllClassInfo();
	public ClassInfoEntity findOneClassInfoById(int class_id);
	public void updataClassInfoById(ClassInfoEntity classInfoEntity);
	public void deleteOneClassInfoById(int class_id);
	public List<CollegeEntity> queryAllCollege();
	public List<ClassInfoEntity> queryInfoOfClass(ClassInfoEntity infoOdClass);
}
