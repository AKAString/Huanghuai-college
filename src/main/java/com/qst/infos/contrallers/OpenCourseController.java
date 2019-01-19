package com.qst.infos.contrallers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.qst.infos.entity.ClassInfoEntity;
import com.qst.infos.entity.CourseEntity;
import com.qst.infos.entity.MajorEntity;
import com.qst.infos.entity.PlanCourseEntity;
import com.qst.infos.entity.TeacherEntity;
import com.qst.infos.service.ClassInfoService;
import com.qst.infos.service.CourseService;
import com.qst.infos.service.MajorService;
import com.qst.infos.service.TeacherService;

@RequestMapping(value="/OpenCourseController")
@Controller
public class OpenCourseController {
	
	@Resource
	private MajorService majorservice;

	@Resource
	private ClassInfoService infoclassService;

	@Resource
	private CourseService courseService;
	
	@Resource
	private ClassInfoService classInfoService;
	
	@Resource
	private  TeacherService teacherService;
	
	
	
	public TeacherService getTeacherService() {
		return teacherService;
	}

	public void setTeacherService(TeacherService teacherService) {
		this.teacherService = teacherService;
	}

	public ClassInfoService getClassInfoService() {
		return classInfoService;
	}

	public void setClassInfoService(ClassInfoService classInfoService) {
		this.classInfoService = classInfoService;
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	public ClassInfoService getInfoclassService() {
		return infoclassService;
	}

	public void setInfoclassService(ClassInfoService infoclassService) {
		this.infoclassService = infoclassService;
	}

	public MajorService getMajorservice() {
		return majorservice;
	}

	public void setMajorservice(MajorService majorservice) {
		this.majorservice = majorservice;
	}
	@RequestMapping(value="/queryAllMajor")
	public String queryAllMajor(HttpServletRequest request) {
		List<MajorEntity> list = majorservice.findMajorAllList();
		request.setAttribute("listMajor", list);
		SimpleDateFormat  sdf = new SimpleDateFormat ("yyyy");
		int num2 = Integer.parseInt(sdf.format(new Date()));
		List<Integer> listGrade = new ArrayList<Integer>();
		listGrade.add(num2-3);
		listGrade.add(num2-2);
		listGrade.add(num2-1);
		listGrade.add(num2);
		request.setAttribute("listGrade", listGrade);
		return "openCourse/addOneCoursePlan";
	}
	
	@RequestMapping(value="/queryInfoOfClass")
	public void queryInfoOfClass(ClassInfoEntity infoOdClass,HttpServletRequest request,HttpServletResponse response){
		List<ClassInfoEntity> list = infoclassService.queryInfoOfClass(infoOdClass);
		Gson gson = new GsonBuilder().create();
		String listUserJson = gson.toJson(list);
		try {
			response.setContentType("application/json;charset=UTF-8");
			response.getWriter().write(listUserJson);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="querySomeCourse")
	public void querySomeCourse(CourseEntity course,HttpServletRequest request,HttpServletResponse response){
		List<CourseEntity> listCourse = courseService.querySomeCourse(course);
		Gson gson = new GsonBuilder().create();
		String listUserJson = gson.toJson(listCourse);
		try {
			response.setContentType("application/json;charset=UTF-8");
			response.getWriter().write(listUserJson);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/addOneCoursePlan")
	public String addOneCoursePlan( HttpServletRequest request){
		String[] items=request.getParameterValues("item[]");
		String [] item2 = request.getParameterValues("item2[]");
		
		
		List<ClassInfoEntity> listClassInfos = new ArrayList<ClassInfoEntity>();
		
		if(items.length != 0){
			for (String s : items) {
				ClassInfoEntity cif = new ClassInfoEntity();
				cif.setClass_id(Integer.parseInt(s));
				listClassInfos.add(cif);
			}
		}
		if(item2.length != 0){
			for (String s : item2) {
				CourseEntity ce = new CourseEntity();
				ce.setCoures_id(Integer.parseInt(s));
				ce.setListOfClass(listClassInfos);
				courseService.addOneCoursePlan(ce);
			}
		}
		
		
		/*if(item2.length != 0){
			for (CourseEntity courses : listCourse) {
				courseService.addOneCoursePlan(courses);
			}
		}*/
	
		
		return "openCourse/addCourseForCoursePlan";
	}
	@RequestMapping(value="/queryAllCoursePlan")
	public String queryAllCoursePlan(HttpServletRequest request){
		List<PlanCourseEntity> list = courseService.queryAllCoursePlan();
		List<PlanCourseEntity> list2 = new ArrayList<PlanCourseEntity>();
		for (PlanCourseEntity p : list) {
			if(!"no".equals(p.getIsplaned())){
				continue;
			}
			ClassInfoEntity cie = classInfoService.findOneClassInfoById(p.getClassId());
			p.setClassInfo(cie);
			CourseEntity cc = new CourseEntity();
			cc.setCoures_id(p.getCourseId());
			CourseEntity ce = courseService.queryOneCourseById(cc);
			p.setCourse(ce);
			list2.add(p);
		}
		request.setAttribute("listPlanCourse", list2);
		return "openCourse/showAllOpenCourse";
		
	}
	
	@RequestMapping(value="/queryOnePlanCourseById")
	public String queryOnePlanCourseById(PlanCourseEntity planCourse,HttpServletRequest request){
		if("no".equals(planCourse.getIsplaned())){
			request.setAttribute("isOpening", "yes");
		}
		ClassInfoEntity cie = classInfoService.findOneClassInfoById(planCourse.getClassId());
		planCourse.setClassInfo(cie);
		CourseEntity cc = new CourseEntity();
		cc.setCoures_id(planCourse.getCourseId());
		CourseEntity ce = courseService.queryOneCourseById(cc);
		planCourse.setCourse(ce);
		request.setAttribute("planCourse", planCourse);
		
		int teacherCollegeId = planCourse.getCourse().getCollege().getCollege_id();
		List<TeacherEntity> listTeacher = teacherService.querySomeTeacher(teacherCollegeId);
		request.setAttribute("listTeacher", listTeacher);
		int week = planCourse.getCourse().getCourse_weektime();
		int total = planCourse.getCourse().getCourse_alltime();
		int num = total / week;
		List<Integer> startWeek = new ArrayList<Integer>();
		for(int i = 1;i <= 20 - num; i++)
		{
			startWeek.add(i);
		}
		if(startWeek.isEmpty()){
			startWeek.add(1);
		}
		request.setAttribute("startWeek", startWeek);
		return "openCourse/showOneOpenCourse";
	}
	
	@RequestMapping(value="/deleteOnePlanCourseById")
	public String deleteOnePlanCourseById(PlanCourseEntity planCourse,HttpServletRequest request){
		courseService.deleteOneOpenCourse(planCourse);
		if("no".equals(planCourse.getIsplaned())){
			return queryAllCoursePlan(request);
		}else{
			return queryAllFinishedCoursePlan(request);
		}
	}
	
	@RequestMapping(value="/examinationOneCoursePlan")
	public String examinationOneCoursePlan(PlanCourseEntity planCourse,HttpServletRequest request){
		courseService.updateOneCoursePlan(planCourse);
			return queryAllCoursePlan(request);
	}
	
	@RequestMapping(value="/queryAllFinishedCoursePlan")
	public String queryAllFinishedCoursePlan(HttpServletRequest request){
		List<PlanCourseEntity> list = courseService.queryAllCoursePlan();
		List<PlanCourseEntity> list2 = new ArrayList<PlanCourseEntity>();
		for (PlanCourseEntity p : list) {
			if(!"yes".equals(p.getIsplaned())){
				continue;
			}
			ClassInfoEntity cie = classInfoService.findOneClassInfoById(p.getClassId());
			p.setClassInfo(cie);
			CourseEntity cc = new CourseEntity();
			cc.setCoures_id(p.getCourseId());
			CourseEntity ce = courseService.queryOneCourseById(cc);
			p.setCourse(ce);
			TeacherEntity tt = new TeacherEntity();
			tt.setTeacher_id(p.getTeacherId());
			TeacherEntity te = teacherService.queryOneTeacherById(tt);
			p.setTeacher(te);
			
			list2.add(p);
		}
		request.setAttribute("listFinishCourse", list2);
		return "openCourse/showFinishedOpenCourse";
	}
	@RequestMapping(value="/queryOneFinishedCoursePlan")
	public String queryOneFinishedCoursePlan(PlanCourseEntity planCourse,HttpServletRequest request){
		
		ClassInfoEntity cie = classInfoService.findOneClassInfoById(planCourse.getClassId());
		planCourse.setClassInfo(cie);
		
		CourseEntity cc = new CourseEntity();
		cc.setCoures_id(planCourse.getCourseId());
		
		CourseEntity ce = courseService.queryOneCourseById(cc);
		planCourse.setCourse(ce);

		TeacherEntity tt = new TeacherEntity();
		tt.setTeacher_id(planCourse.getTeacherId());
		TeacherEntity tea = teacherService.queryOneTeacherById(tt);
		planCourse.setTeacher(tea);
		
		
		request.setAttribute("planCourse", planCourse);
		
		
		return "openCourse/openCoursePlan";
	}
	
	
	@RequestMapping(value="/downLoadFinishedCourse")
	public String downLoadFinishedCourse(HttpServletRequest request)
			throws Exception{
		queryAllFinishedCoursePlan(request);
		@SuppressWarnings("unchecked")
		List<PlanCourseEntity> listFinishCourse = (List<PlanCourseEntity>)request.getAttribute("listFinishCourse");
		if(!listFinishCourse.isEmpty()){
			//1创建exe文件
			File file = new File("C://Users//hugh//Desktop//MM.xls");
				//如果文件不存在,创建新的文件
				if(!file.exists())
				file.createNewFile();
			//2创建工作簿
			WritableWorkbook  workbook= Workbook.createWorkbook(file);
			
			//3:创建sheet,设置第二三四..个sheet，依次类推即可
			WritableSheet sheet=workbook.createSheet("用户管理", 0);
			
			//4：设置titles
			 String[] titles={"编号","账号","密码"};
			 
			//5:单元格
			 Label label=null;
			 
			//6:给第一行设置列名
			 for(int i=0;i<titles.length;i++){
				   //x,y,第一行的列名
				   label=new Label(i,0,titles[i]);
				   //7：添加单元格
				   sheet.addCell(label);
			 }
			//8：模拟数据库导入数据
			  for(int i=1;i<10;i++){
			              //添加编号，第二行第一列
			              label=new Label(0,i,i+"");
			              sheet.addCell(label);
			             
			             //添加账号
			             label=new Label(1,i,"10010"+i);
			             sheet.addCell(label);
			              
			              //添加密码
			             label=new Label(2,i,"123456");
			            sheet.addCell(label);
			         }
			  //写入数据，一定记得写入数据，不然excel里面啥都没有
			  workbook.write();
			//最后一步，关闭工作簿
			  workbook.close();
		}
		
		return null;
	}
	
	
	
	
	
}
