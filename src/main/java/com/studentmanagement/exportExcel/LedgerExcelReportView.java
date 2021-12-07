package com.studentmanagement.exportExcel;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.studentmanagement.api.Expense;

public class LedgerExcelReportView extends AbstractXlsView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		 response.setHeader("Content-Disposition", "attachment;filename=\"ledger.xls\"");
		 Map<String, Object> data = (HashMap<String, Object>) model.get("data");
		 //List<String> total = data.values().stream().flatMap(Collection<>::stream).collect(Collectors.toList());
		 List<Expense> expenseList = (List<Expense>) model.get("expenseList");
		 Sheet sheet = workbook.createSheet("Ledger Report");
		 Row header = sheet.createRow(0);
		 header.createCell(0).setCellValue("Purpose Type");
		 header.createCell(1).setCellValue("ID");
		 header.createCell(2).setCellValue("Date");
		 header.createCell(3).setCellValue("Debit Amount");
		 header.createCell(4).setCellValue("Credit Amount");
		  
		 int rowNum = 1;
		 for(Map.Entry<String,Object> entry : data.entrySet()) {
			 Row row = sheet.createRow(rowNum++);
				/*
				 * row.createCell(0).setCellValue(entry.);
				 */		 }
		 
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
