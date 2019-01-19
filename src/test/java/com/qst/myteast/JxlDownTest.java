package com.qst.myteast;

import java.io.File;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

public class JxlDownTest {

	public static void main(String[] args) 
			throws Exception{
		 //1:创建workbook
        Workbook workbook=Workbook.getWorkbook(new File("C://Users//hugh//Desktop//MM.xls"));
        //2:获取第一个工作表sheet
        Sheet sheet=workbook.getSheet(0);
        //3:获取数据
        System.out.println("行："+sheet.getRows());
        System.out.println("列："+sheet.getColumns());
        for(int i=0;i<sheet.getRows();i++){
            for(int j=0;j<sheet.getColumns();j++){
                Cell cell=sheet.getCell(j,i);
                System.out.print(cell.getContents()+" ");
            }
            System.out.println();
        }
        
        //最后一步：关闭资源
        workbook.close();
    }

	}


