package com.qst.infos.contrallers;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.qst.infos.entity.UploadEntity;


@RequestMapping(value="/UpfileController")
@Controller
public class UpfileController {
	

	public String getDataString(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(new Date());
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
			System.out.println(data);
			}
			System.out.println("********************");
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
