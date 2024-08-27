<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>직원 목록 전체 조회</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            text-align: center;
            padding: 10px;
        }
        th {
            background-color: #343a40;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        /* 사원번호와 직원명에 대한 강조 스타일 */
        .highlight {
            background-color: #ffcc00; /* 밝은 노란색 배경 */
            color: #00008b; /* 어두운 파란색 글자 */
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center my-4">직원 목록 전체 조회</h1>
    <table class="table table-striped table-bordered">
        <thead>
        <tr style="background-color: #343a40; color: #f8f9fa;">
            <th>사원번호</th>
            <th>직원명</th>
            <th>주민등록번호</th>
            <th>이메일</th>
            <th>전화번호</th>
            <th>부서코드</th>
            <th>직급코드</th>
            <th>급여등급</th>
            <th>급여</th>
            <th>보너스율</th>
            <th>관리자사번</th>
            <th>입사일</th>
            <th>퇴사일</th>
            <th>퇴직여부</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ requestScope.empList }" var="emp">
            <tr>
                <td class="highlight">${ emp.empId }</td>
                <td class="highlight">${ emp.empName }</td>
                <td>${ emp.empNo }</td>
                <td>${ emp.email }</td>
                <td>${ emp.phone }</td>
                <td>${ emp.deptCode }</td>
                <td>${ emp.jobCode }</td>
                <td>${ emp.salLevel }</td>
                <td>${ emp.salary }</td>
                <td>${ emp.bonus }</td>
                <td>${ emp.managerId }</td>
                <td>${ emp.hireDate }</td>
                <td>${ emp.entDate }</td>
                <td>${ emp.entYn }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS (optional, for Bootstrap functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>