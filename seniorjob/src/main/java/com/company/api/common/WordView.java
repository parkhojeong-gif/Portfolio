package com.company.api.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component("wordView")
public class WordView{
	private static final Logger LOGGER = LoggerFactory.getLogger(WordView.class);
	
	
	public static void main(String[] args, Model model) throws IOException {
		
		
		
		//Blank Document
	      XWPFDocument document = new XWPFDocument();
	      
	    //Write the Document in file system
	      FileOutputStream out = new FileOutputStream(new File("createparagraph.docx"));
	        
	      //create table
	      XWPFTable table = document.createTable();
	      
	      String bp = (String)model.getAttribute("bp");
	      
	    //create first row
	      XWPFTableRow tableRowOne = table.getRow(0);
	      tableRowOne.getCell(0).setText("col one, row one");
	      tableRowOne.addNewTableCell().setText(bp);
	      
	      
	      //create second row
	      XWPFTableRow tableRowTwo = table.createRow();
	      tableRowTwo.getCell(0).setText("col one, row two");
	      tableRowTwo.getCell(1).setText("col two, row two");
			
	      //create third row
	      XWPFTableRow tableRowThree = table.createRow();
	      tableRowThree.getCell(0).setText("col one, row three");
	      tableRowThree.getCell(1).setText("col two, row three");
	      
	      document.write(out);
	      out.close();
	      System.out.println("create_table.docx written successully");
	      
	      LOGGER.debug("### buildExcelDocument Map : {} end!!");
	}

}
