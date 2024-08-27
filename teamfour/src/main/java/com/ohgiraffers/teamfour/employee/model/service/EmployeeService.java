package com.ohgiraffers.teamfour.employee.model.service;

import com.ohgiraffers.teamfour.employee.model.dao.EmployeeDAO;
import com.ohgiraffers.teamfour.employee.model.dto.EmployeeDTO;

import java.sql.Connection;

import static com.ohgiraffers.teamfour.employee.common.jdbc.JDBCTemplate.close;
import static com.ohgiraffers.teamfour.employee.common.jdbc.JDBCTemplate.getConnection;

public class EmployeeService {

    private final EmployeeDAO empDAO;

    public EmployeeService() { empDAO = new EmployeeDAO(); }

    public EmployeeDTO selectOneEmpById(String empId) {

        /* Connection 생성 */
        Connection con = getConnection();

        /* Connection과 함께 정보를 전달하여 조회한다. */
        EmployeeDTO selectedEmp = empDAO.selectEmpById(con, empId);

        /* Connection 닫기 */
        close(con);

        /* 조회 결과를 반환한다. */
        return selectedEmp;
    }

}
