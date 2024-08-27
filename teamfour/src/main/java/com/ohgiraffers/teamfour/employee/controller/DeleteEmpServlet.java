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

    }

}
