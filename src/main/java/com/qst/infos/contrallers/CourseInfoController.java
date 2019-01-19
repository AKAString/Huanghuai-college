package com.qst.infos.contrallers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qst.infos.entity.CourseInfoEntity;
import com.qst.infos.entity.UploadEntity;
import com.qst.infos.service.CourseInfoService;

@RequestMapping(value="/CourseInfoController")
@Controller
public class CourseInfoController {
	@Resource
	private CourseInfoService courseInfoService;

	public CourseInfoService getCourseInfoService() {
		return courseInfoService;
	}

	public void setCourseInfoService(CourseInfoService courseInfoService) {
		this.courseInfoService = courseInfoService;
	}
	
	@RequestMapping(value="/addOneCourseInfo")
	public String addOneCourseInfo(CourseInfoEntity courseInfo,HttpServletRequest request) {
		courseInfoService.addOneCourseInfo(courseInfo);
		return "course/addCourseInfo";
	}
	@RequestMapping(value="/queryCourseInfo")
	public String queryCourseInfo(HttpServletRequest request) {
		List<CourseInfoEntity> list = courseInfoService.queryAllCourseInfo();
		request.setAttribute("listCourseInfo", list);
		return "course/showAllCourseInfo";
	}
	@RequestMapping(value="/queryOneCourseInfoById")
	public String queryOneCourseInfoById(CourseInfoEntity courseInfo,HttpServletRequest request) {
		CourseInfoEntity cie = courseInfoService.queryOneCourseInfo(courseInfo);
		request.setAttribute("courseInfo1", cie);
		return "course/updateCourseInfo";
	}
	@RequestMapping(value="/updateOneCourseInfo")
	public String updateOneCourseInfo(CourseInfoEntity courseInfo,HttpServletRequest request) {
		courseInfoService.updateOneCourseInfo(courseInfo);
		return queryCourseInfo(request);
	}
	
	@RequestMapping(value="/deleteOneCourseInfoById")
	public String deleteOneCourseInfoById(CourseInfoEntity courseInfo,HttpServletRequest request) {
		courseInfoService.deleteOneCourse(courseInfo);
		return queryCourseInfo(request);
	}
	@RequestMapping(value="/uploadFile")
	public ModelAndView uploadFile(UploadEntity upload,HttpServletRequest request){
		MultipartFile file = upload.getUploadFile();
		System.out.println("***********************************");
		BufferedReader isr = null;
		InputStream in = null;
		try {
		    in = file.getInputStream();
			isr = new BufferedReader(new InputStreamReader(in));
			String data = null;
			while((data = isr.readLine())!=null)
			{
				String str [] = data.split(" ");
				try {
					int courseinfo_num = Integer.parseInt(str[0]);
					String courseinfo_name = str[1];
					CourseInfoEntity conf = new CourseInfoEntity();
					conf.setCourseinfo_num(courseinfo_num);
					conf.setCourseinfo_name(courseinfo_name);
					courseInfoService.addOneCourseInfo(conf);
					
				}catch (Exception e) {
					try {
						int courseinfo_num = Integer.parseInt(str[1]);
						String courseinfo_name = str[0];
						CourseInfoEntity conf = new CourseInfoEntity();
						conf.setCourseinfo_num(courseinfo_num);
						conf.setCourseinfo_name(courseinfo_name);
						courseInfoService.addOneCourseInfo(conf);
					}catch (Exception e1) {
						e1.printStackTrace();
					}
				}
			
			}
			/*String path = request.getServletContext().getRealPath("uploaddir");
			String ext = file.getOriginalFilename().split("\\.")[1];
			String UUID = java.util.UUID.randomUUID().toString().replace("-", "")+"."+ext;
			String storePath = path + File.separator + getDataString();
			File fileExist = new File(storePath);
			if(!fileExist.exists()){
				fileExist.mkdirs();
			}
			String path_filename = storePath + File.separator + UUID;
			FileOutputStream output = new FileOutputStream(path_filename);
			IOUtils.copy(in, output);
			
			//提交数据库，文件名，文件路径
			upload.setFilePath(path_filename);
			upfilesService.addOneFileInfo(upload);
			
			in.close();
			output.close();*/
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				in.close();
				isr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return new ModelAndView("course/upcoursefile");
	}

}
