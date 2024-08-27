package com.ohgiraffers.teamfour.employee.model.service;

import com.ohgiraffers.teamfour.employee.model.dao.EmployeeDAO;
import com.ohgiraffers.teamfour.employee.model.dto.EmployeeDTO;

import java.sql.Connection;
import java.util.List;

import static com.ohgiraffers.teamfour.employee.common.jdbc.JDBCTemplate.close;
import static com.ohgiraffers.teamfour.employee.common.jdbc.JDBCTemplate.getConnection;

public class EmployeeService {

    private final EmployeeDAO empDAO;

    public EmployeeService() {
        empDAO = new EmployeeDAO();
    }


    /* 직원 정보 전체 조회용 메소드 */
    public List<EmployeeDTO> selectAllEmp() {

        Connection con = getConnection();
        List<EmployeeDTO> empList = empDAO.selectAllEmpList(con);

        close(con);

        return empList;
    }

    public int deleteEmp(String empId) {
    }
}
