package com.ohgiraffers.teamfour.employee.controller;

import com.ohgiraffers.teamfour.employee.model.service.EmployeeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/employee/delete")
public class DeleteEmpServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String empId = req.getParameter("empId");

        int result = new EmployeeService().deleteEmp(empId);

        String path = "";
        if (result > 0) {
            path = "/WEB-INF/views/common/successPage.jsp";
        } else {
            path = "/WEB-INF/views/common/errorPage.jsp";
            request.setAttribute("message", "직원 삭제 실패!");
        }

        request.getRequestDispatcher(path).forward(request, response);
    }
}
