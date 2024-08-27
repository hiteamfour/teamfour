<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>직원 관리 시스템</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .content {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            margin-top: 20px;
        }
        .table th, .table td {
            vertical-align: middle;
            text-align: left;
        }
        .table th {
            background-color: #343a40;
            color: white;
            border: none;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #f2f2f2;
        }
        .table-hover tbody tr:hover {
            background-color: #e9ecef;
        }
        /* 사원번호와 사원명 칸 폭 조절 */
        .emp-id-col {
            width: 100px; /* 원하는 폭으로 조정 - 사원번호 */
        }
        .emp-name-col {
            width: 150px; /* 원하는 폭으로 조정 - 사원명 */
        }
        /* 스타일링된 링크 */
        .header-title {
            color: white;
            text-decoration: none;
        }
        .header-title:hover {
            color: #ffc107; /* 호버 시 색상 변경 */
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="container content">
    <h2 class="mb-4 text-center">사원 정보</h2>
    <table class="table table-striped table-hover">
        <tbody>
        <tr>
            <th scope="row" class="emp-id-col">사원번호</th>
            <td class="emp-id-col">${ requestScope.selectedEmp.empId }</td>
        </tr>
        <tr>
            <th scope="row" class="emp-name-col">사원명</th>
            <td class="emp-name-col">${ requestScope.selectedEmp.empName }</td>
        </tr>
        <tr>
            <th scope="row">부서코드</th>
            <td>${ requestScope.selectedEmp.deptCode }</td>
        </tr>
        <tr>
            <th scope="row">직급코드</th>
            <td>${ requestScope.selectedEmp.jobCode }</td>
        </tr>
        <tr>
            <th scope="row">급여</th>
            <td>${ requestScope.selectedEmp.salary }</td>
        </tr>
        </tbody>
    </table>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<!-- Bootstrap JS (optional, for Bootstrap functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>