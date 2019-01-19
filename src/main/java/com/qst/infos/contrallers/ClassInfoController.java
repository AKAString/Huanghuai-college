package com.qst.infos.contrallers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.ClassInfoEntity;
import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.MajorEntity;
import com.qst.infos.service.ClassInfoService;
import com.qst.infos.service.MajorService;

@RequestMapping(value="/ClassInfoController")
@Controller
public class ClassInfoController {
	@Resource(name="classInfoServiceImp")
	private ClassInfoService classinfoservice;
	@Resource
	private MajorService majorservice;

	
	public MajorService getMajorservice() {
		return majorservice;
	}

	public void setMajorservice(MajorService majorservice) {
		this.majorservice = majorservice;
	}

	public ClassInfoService getClassinfoservice() {
		return classinfoservice;
	}

	public void setClassinfoservice(ClassInfoService classinfoservice) {
		this.classinfoservice = classinfoservice;
	}
	
	@RequestMapping(value="/queryAllCollege")
	public String queryAllCollege(HttpServletRequest request) {
		
		List<CollegeEntity> list = classinfoservice.queryAllCollege();
		request.setAttribute("listCollege", list);
		return "success";
	}
	
	@RequestMapping(value="/showAddOneClassInfo")
	public String showAddOneUser(HttpServletRequest request){
		List<MajorEntity> list=majorservice.findMajorAllList();
		request.setAttribute("majorList", list);
		return "classinfo/showAddClassInfo";
	}
	
	@RequestMapping(value="/addOneClassInfo")
	public String addOneUser(ClassInfoEntity classinfo,HttpServletRequest request){
		classinfoservice.addClassInfo(classinfo);		
		List<MajorEntity> list=majorservice.findMajorAllList();
		request.setAttribute("majorList", list);
		return "classinfo/showAddClassInfo";
	}
	@RequestMapping(value="/findAllClassList")
	public String findAllClassList(HttpServletRequest request) {
		List<ClassInfoEntity> list =classinfoservice.findAllClassInfo();
		request.setAttribute("classlist", list);
		return "classinfo/showAllClass";
	}
	@RequestMapping(value="/deleteOneClassById")
	public String deleteOneCollegeById(int class_id,HttpServletRequest request) {
		classinfoservice.deleteOneClassInfoById(class_id);
		return findAllClassList(request);
	}
	
	@RequestMapping(value="/findOneClassById")
	public String findOneClassById(int class_id, HttpServletRequest request) {
		List<MajorEntity> list=majorservice.findMajorAllList();
		request.setAttribute("majorList", list);
		ClassInfoEntity classinfo= classinfoservice.findOneClassInfoById(class_id);
		request.setAttribute("classinfo",classinfo);
		return "classinfo/updateoneclass";
	}
	@RequestMapping(value="/updateOneClassById")
	public String updateOneClassById(ClassInfoEntity classinfo,HttpServletRequest request) {
		classinfoservice.updataClassInfoById(classinfo);
		return findAllClassList(request);
	}
	
}
