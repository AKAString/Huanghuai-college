package com.qst.infos.service;

import java.util.List;

import com.qst.infos.entity.MajorEntity;

public interface MajorService {
	public void addMajor(MajorEntity major);

	public MajorEntity findMajorById(int major_Id);

	public List<MajorEntity> findMajorAllList();

	public void deleteMajorById(int major_Id);

	public void updateMajorById(MajorEntity major);
}
