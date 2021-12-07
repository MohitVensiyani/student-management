package com.studentmanagement.exportExcel;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.studentmanagement.api.Employee;


public class EmployeeExcelReportView extends AbstractXlsView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.setHeader("Content-Disposition", "attachment;filename=\"employee.xls\"");
		 List<Employee> employeeList = (List<Employee>) model.get("employeeList");
		 Sheet sheet = workbook.createSheet("Employee Data");
		 Row header = sheet.createRow(0);
		 header.createCell(0).setCellValue("Employee ID");
		 header.createCell(1).setCellValue("Employee Name");
		 header.createCell(2).setCellValue("Role");
		 header.createCell(3).setCellValue("Salary");
		 header.createCell(4).setCellValue("Bank");
		 header.createCell(5).setCellValue("Account No");
		 header.createCell(6).setCellValue("IFSC");
		 header.createCell(7).setCellValue("Branch");
		  
		 int rowNum = 1;
		 for(Employee employee:employeeList){
			 Row row = sheet.createRow(rowNum++);
			 row.createCell(0).setCellValue(employee.getEmpId());
			 row.createCell(1).setCellValue(employee.getEmpName());
			 row.createCell(2).setCellValue(employee.getRole());
			 row.createCell(3).setCellValue(employee.getSalary());
			 row.createCell(4).setCellValue(employee.getBank());
			 row.createCell(5).setCellValue(employee.getAcc_no());
			 row.createCell(6).setCellValue(employee.getIfsc());
			 row.createCell(7).setCellValue(employee.getBranch());
		
		 }
		
	}

	
}
