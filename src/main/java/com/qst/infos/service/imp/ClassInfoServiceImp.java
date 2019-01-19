package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.ClassInfoDao;
import com.qst.infos.entity.ClassInfoEntity;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.service.ClassInfoService;
@Service
public class ClassInfoServiceImp implements ClassInfoService {
	@Resource(name="classInfoDao")
	private ClassInfoDao classinfodao;
	public ClassInfoDao getClassinfodao() {
		return classinfodao;
	}

	public void setClassinfodao(ClassInfoDao classinfodao) {
		this.classinfodao = classinfodao;
	}

	public void addClassInfo(ClassInfoEntity classinfo) {
		classinfodao.addClassInfo(classinfo);
	}

	public List<ClassInfoEntity> findAllClassInfo() {
		return classinfodao.findAllClassInfo();
	}

	public ClassInfoEntity findOneClassInfoById(int class_id) {
		return classinfodao.findOneClassInfoById(class_id);
	}

	public void updataClassInfoById(ClassInfoEntity classinfo) {
		classinfodao.updataClassInfoById(classinfo);
	}

	public void deleteOneClassInfoById(int class_id) {
		classinfodao.deleteOneClassInfoById(class_id);
	}

	public List<CollegeEntity> queryAllCollege() {
		return classinfodao.queryAllCollege();
	}

	public List<ClassInfoEntity> queryInfoOfClass(ClassInfoEntity infoOdClass) {
		return classinfodao.queryInfoOfClass(infoOdClass);
	}

}
