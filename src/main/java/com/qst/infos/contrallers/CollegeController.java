package com.qst.infos.contrallers;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.service.CollegeService;

@RequestMapping(value="/CollegeController")
@Controller
public class CollegeController {
	@Resource
	private CollegeService colegeService;

	public CollegeService getColegeService() {
		return colegeService;
	}

	public void setColegeService(CollegeService colegeService) {
		this.colegeService = colegeService;
	}
	@RequestMapping(value="addOneCollege")
	public String addOneCollege(CollegeEntity college) {
		colegeService.addOneCollege(college);
		return "college/addOneCollege";
	}
	
	@RequestMapping(value="/queryAllCollege")
	public String queryAllCollege(HttpServletRequest request) {
		List<CollegeEntity> list = colegeService.queryAllCollege();
		request.setAttribute("listCollege", list);
		return "college/showAllCollege";
	}
	
	@RequestMapping(value="/queryOneUserById")
	public String queryOneUserById(CollegeEntity college, HttpServletRequest request) {
		CollegeEntity college2 = colegeService.queryOneCollegeById(college);
		request.setAttribute("coll",college2);
		return "college/updateOneCollege";
	}
	
	@RequestMapping(value="/updateOneCollege")
	public String updateOneCollege(CollegeEntity college,HttpServletRequest request) {
		colegeService.updateOneById(college);
		return queryAllCollege(request);
	}
	@RequestMapping(value="/deleteOneCoolegeById")
	public String deleteOneCoolegeById(CollegeEntity college,HttpServletRequest request) {
		colegeService.deleteOneCollege(college);
		return queryAllCollege(request);
	}

}
