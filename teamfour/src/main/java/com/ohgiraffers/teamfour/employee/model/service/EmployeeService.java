package com.ohgiraffers.teamfour.employee.model.service;

import com.ohgiraffers.teamfour.employee.model.dao.EmployeeDAO;
import com.ohgiraffers.teamfour.employee.model.dto.EmployeeDTO;

import java.sql.Connection;

import static com.ohgiraffers.teamfour.employee.common.jdbc.JDBCTemplate.*;

public class EmployeeService {

    private final EmployeeDAO empDAO;

    public EmployeeService() { empDAO = new EmployeeDAO(); }

    /* 사원번호로 직원정보 조회 */
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

    public String selectNewEmpId() {

        /* Connection 생성 */
        Connection con = getConnection();

        /* 비지니스 로직 */
        /* 1. dao 호출하여 조회 */
        String newEmpId = empDAO.selectNewEmpId(con);

        /* Connection 닫기 */
        close(con);

        /* 수행 결과 반환 */
        return newEmpId;
    }

    public int insertEmp(EmployeeDTO emp) {

        Connection con = getConnection();

        int result = empDAO.insertEmp(con, emp);

        if (result > 0) {
            commit(con);
        } else {
            rollback(con);
        }

        close(con);

        return result;
    }



}
