package com.qst.infos.dao;

import java.util.List;

import com.qst.infos.entity.MajorEntity;

public interface MajorDao {
	public void addMajor(MajorEntity major);

	public MajorEntity findMajorById(int major_Id);

	public List<MajorEntity> findMajorAllList();

	public void deleteMajorById(int major_Id);

	public void updateMajorById(MajorEntity major);
}
