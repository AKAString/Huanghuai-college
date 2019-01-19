package com.qst.infos.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qst.infos.dao.MajorDao;
import com.qst.infos.entity.MajorEntity;
import com.qst.infos.service.MajorService;
@Service
public class MajorServiceImp implements MajorService{
	@Resource
	private MajorDao majordao;
	
	public MajorDao getMajordao() {
		return majordao;
	}

	public void setMajordao(MajorDao majordao) {
		this.majordao = majordao;
	}

	public void addMajor(MajorEntity major) {
		// TODO Auto-generated method stub
		majordao.addMajor(major);
	}

	public MajorEntity findMajorById(int major_Id) {
		// TODO Auto-generated method stub
		return majordao.findMajorById(major_Id);
	}

	public List<MajorEntity> findMajorAllList() {
		// TODO Auto-generated method stub
		return majordao.findMajorAllList();
	}

	public void deleteMajorById(int major_Id) {
		// TODO Auto-generated method stub
		majordao.deleteMajorById(major_Id);
	}

	public void updateMajorById(MajorEntity major) {
		// TODO Auto-generated method stub
		majordao.updateMajorById(major);
	}

}
