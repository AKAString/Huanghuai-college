package com.qst.infos.contrallers;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qst.infos.entity.CollegeEntity;
import com.qst.infos.entity.TeacherEntity;
import com.qst.infos.service.CollegeService;
import com.qst.infos.service.TeacherService;

@RequestMapping(value="/TeacherController")
@Controller
public class TeacherController {
	@Resource(name="teacherServiceImp")
	private TeacherService teacherService;

	@Resource(name="collegeServiceImp")
	private CollegeService collegeService;
	
	
	
	public CollegeService getCollegeService() {
		return collegeService;
	}

	public void setCollegeService(CollegeService collegeService) {
		this.collegeService = collegeService;
	}

	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}
	
	@RequestMapping(value="/queryAllCollege")
	public String queryAllCollege(HttpServletRequest request) {
		List<CollegeEntity> list = collegeService.queryAllCollege();
		request.setAttribute("listCollege", list);
		return "teacher/addOneTeacher";
	}
	
	@RequestMapping(value="/addOneTeacher")
	public String addOneTeacher(TeacherEntity teacher,HttpServletRequest request) {
		TeacherEntity tt=formatTeacherNumPre(teacher);
		TeacherEntity teacher2 = queryTeacherMaxNumOfOneCollege(tt);
		if(teacher2 == null ||teacher.getTeacher_num() == 0) {
			teacher.setTeacher_num(tt.getTeacher_num()*10000 + 1);
		}else {
			teacher.setTeacher_num(teacher2.getTeacher_num()+1);
		}
		teacherService.addOneTeacher(teacher);
		return queryAllCollege(request);
	}
	
	@RequestMapping(value="/queryAllTeacher")
	public String queryAllTeacher(HttpServletRequest request) {
		List<TeacherEntity> list = teacherService.queryAllTeacher();
		request.setAttribute("listTeacher", list);
		return "teacher/showAllTeacher";
	}
	@RequestMapping(value="/queryOneUserById")
	public String queryOneUserById(TeacherEntity teacher,HttpServletRequest request){
		TeacherEntity teacher2 = teacherService.queryOneTeacherById(teacher);
		request.setAttribute("teach", teacher2);
		queryAllCollege(request);
		return "teacher/updateOneTeacher";
	}
	@RequestMapping(value="/deleteOneCoolegeById")
	public String deleteOneCoolegeById(TeacherEntity teacher,HttpServletRequest request){
		teacherService.deleteOneTeacherById(teacher);
		return queryAllTeacher(request);
	}
	@RequestMapping(value="/updateOneTeacher")
	public String updateOneTeacher(TeacherEntity teacher,HttpServletRequest request) {
		teacherService.updateOneTeacherById(teacher);
		return queryAllTeacher(request);
	}
	
	@RequestMapping(value="/queryTeacherMaxNumOfOneCollege")
	public TeacherEntity queryTeacherMaxNumOfOneCollege(TeacherEntity teacher) {
		TeacherEntity num = teacherService.queryTeacherMaxNumOfOneCollege(teacher);
		return num;
	}
	
	public TeacherEntity formatTeacherNumPre(TeacherEntity teacher) {
		int num = teacher.getCollege().getCollege_id();
		SimpleDateFormat  sdf = new SimpleDateFormat ("yyyy");
		String num2 = sdf.format(new Date()).toString();
		DecimalFormat df = new DecimalFormat ("100");
		String str = df.format(num);
		String numFormat = num2+str;
		int numFormat2 = Integer.parseInt(numFormat);
		teacher.setTeacher_num(numFormat2);
		return teacher;
	}
	
	
	
	

}
