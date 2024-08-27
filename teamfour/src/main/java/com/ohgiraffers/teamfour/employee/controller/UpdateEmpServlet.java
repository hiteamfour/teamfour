package com.ohgiraffers.teamfour.employee.controller;

import com.ohgiraffers.teamfour.employee.model.dto.EmployeeDTO;
import com.ohgiraffers.teamfour.employee.model.service.EmployeeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/employee/update")
public class UpdateEmpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String empId = req.getParameter("empId");
        Date entDate = Date.valueOf(req.getParameter("entDate"));

        EmployeeDTO emp = new EmployeeDTO();
        emp.setEmpId(empId);
        emp.setEntDate(entDate);

        int result = new EmployeeService().updateEmp(emp);

        String path = "";
        if(result > 0) {
            path = "/WEB-INF/views/common/successPage.jsp";
            req.setAttribute("successCode", "updateEmp");
        } else {
            path = "/WEB-INF/views/common/errorPage.jsp";
            req.setAttribute("message", "회원 정보 수정에 실패 했습니다!");
        }

        req.getRequestDispatcher(path).forward(req, resp);

    }
}
