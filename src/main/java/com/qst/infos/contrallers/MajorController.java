package com.qst.infos.contrallers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.MajorEntity;
import com.qst.infos.service.CollegeService;
import com.qst.infos.service.MajorService;


@RequestMapping(value="/MajorController")
@Controller
public class MajorController {
	@Resource
	private MajorService majorservice;
	@Resource
    private CollegeService collegeservice;
	
	public CollegeService getCollegeservice() {
		return collegeservice;
	}

	public void setCollegeservice(CollegeService collegeservice) {
		this.collegeservice = collegeservice;
	}

	public MajorService getMajorservice() {
		return majorservice;
	}

	public void setMajorservice(MajorService majorservice) {
		this.majorservice = majorservice;
	}
	
	
	@RequestMapping(value="/AddMajorInfo")
	public String AddMajorInfo(HttpServletRequest request){
		List<CollegeEntity> list=collegeservice.queryAllCollege() ;
		request.setAttribute("CollegeList", list);
		return "college/AddMajorInfo";
	}
	
	
	@RequestMapping(value="/addOneMajor")
	public String addOneMajor(MajorEntity major,HttpServletRequest request){
		majorservice.addMajor(major);
		return findAllMajorList(request);
	}
	@RequestMapping(value="/findAllMajorList")
	public String findAllMajorList(HttpServletRequest request) {
		List<MajorEntity> list =majorservice.findMajorAllList();
		request.setAttribute("majorlist", list);
		return "college/showMajorAllList";
	}
	
	@RequestMapping(value="/deleteOneMajorById")
	public String deleteOneMajorById(int major_id,HttpServletRequest request) {
		majorservice.deleteMajorById(major_id);
		return findAllMajorList(request);
	}
	
	@RequestMapping(value="/findOneMajorById")
	public String queryOneUserById(int major_id, HttpServletRequest request) {
		//添加学院信息
		AddMajorInfo(request);
		//查询一个专业信息
		MajorEntity major= majorservice.findMajorById(major_id);
		request.setAttribute("major",major);
		
		return "college/updateOneMajor";
	}
	
	@RequestMapping(value="/updateOneMajor")
	public String updateOneCollege(MajorEntity major,HttpServletRequest request) {
		System.out.println(major+""+major.getCollege().getCollege_id());
		majorservice.updateMajorById(major);
		return findAllMajorList(request);
	}
	
}
