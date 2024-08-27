<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>직원 관리 시스템</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<jsp:include page="../common/nav.jsp"/>

<div class="container content" style="padding: 20px;">
    사원번호 : ${ requestScope.selectedEmp.empId }<br>
    사원명 : ${ requestScope.selectedEmp.empName }<br>
    부서코드 : ${ requestScope.selectedEmp.deptCode }<br>
    직급코드 : ${ requestScope.selectedEmp.jobCode }<br>
    급여 : ${ requestScope.selectedEmp.salary }<br>
</div>

<jsp:include page="../common/footer.jsp"/>

<!-- Bootstrap JS (optional, for Bootstrap functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>