package com.studentmanagement.exportExcel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.studentmanagement.api.Expense;

public class ExpenseExcelReportView extends AbstractXlsView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		
		response.setHeader("Content-Disposition", "attachment;filename=\"expense.xls\"");
		 List<Expense> expenseList = (List<Expense>) model.get("expenseList");
		 Sheet sheet = workbook.createSheet("Expense Data");
		 Row header = sheet.createRow(0);
		 header.createCell(0).setCellValue("Expense ID");
		 header.createCell(1).setCellValue("Expense Name");
		 header.createCell(2).setCellValue("Description");
		 header.createCell(3).setCellValue("Expense Date");
		 header.createCell(4).setCellValue("Amount");
		  
		 int rowNum = 1;
		 for(Expense expense:expenseList){
			 Row row = sheet.createRow(rowNum++);
			 row.createCell(0).setCellValue(expense.getExpense_id());
			 row.createCell(1).setCellValue(expense.getExpense_name());
			 row.createCell(2).setCellValue(expense.getDescription());
			 row.createCell(3).setCellValue(expense.getExpense_date());
			 row.createCell(4).setCellValue(expense.getAmount());
		 }
		 

	}

}
