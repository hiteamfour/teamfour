<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .header, .navbar {
            background-color: #343a40;
            color: white;
        }
        .header {
            padding: 20px;
            text-align: center;
        }
        .navbar {
            margin-bottom: 20px;
        }
        .navbar-nav .nav-link {
            color: white;
        }
        .content {
            padding: 20px;
        }
        .section-title {
            margin: 20px 0;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-control {
            max-width: 400px;
        }
        .btn {
            margin-top: 10px;
        }
        hr {
            margin: 40px 0;
        }
    </style>
</head>
<body>

<!-- 헤더 영역 -->
<header class="header">
    <h1>직원 관리 시스템</h1>
</header>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#section1">직원 전체 정보 조회</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#section2">사원 정보 조회</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#section3">신규 직원 정보 추가</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#section4">직원 정보 수정</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#section5">직원 정보 삭제</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 컨텐츠 영역 -->
<div class="container content">
    <!-- 직원 전체 정보 조회 -->
    <section id="section1">
        <h3 class="section-title">1. 직원 전체 정보 조회</h3>
        <p>${pageContext.servletContext.contextPath}</p>
        <p>(퇴사하지 않은 직원만 조회할 것) : GET /employee/list</p>
        <button class="btn btn-primary" onclick="location.href='${pageContext.servletContext.contextPath}/employee/list'">전체 직원정보 조회하기</button>
    </section>

    <hr>

    <!-- 사원 정보 조회 -->
    <section id="section2">
        <h3 class="section-title">2. 사원 정보 조회</h3>
        <form action="employee/select">
            <div class="form-group">
                <label for="empId">조회할 사번:</label>
                <input type="text" name="empId" id="empId" class="form-control" placeholder="사번 입력">
            </div>
            <button type="submit" class="btn btn-info">조회하기</button>
        </form>
    </section>

    <hr>

    <!-- 신규 직원 정보 추가 -->
    <section id="section3">
        <h3 class="section-title">3. 신규 직원 정보 추가</h3>
        <p>(필요한 정보를 입력받을 수 있는 form을 만들어서 추가할 것) : POST /employee/insert</p>
        <form action="${pageContext.servletContext.contextPath}/employee/insert" method="post">
            <div class="form-group">
                <label for="empName">직원명:</label>
                <input type="text" name="empName" class="form-control" placeholder="직원명 입력">
            </div>
            <div class="form-group">
                <label for="empNo">주민등록번호:</label>
                <input type="text" name="empNo" class="form-control" placeholder="주민등록번호 입력">
            </div>
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="email" name="email" class="form-control" placeholder="이메일 입력">
            </div>
            <div class="form-group">
                <label for="phone">전화번호:</label>
                <input type="tel" name="phone" class="form-control" placeholder="전화번호 입력">
            </div>
            <div class="form-group">
                <label for="deptCode">부서코드:</label>
                <select name="deptCode" class="form-select">
                    <option value="D1">인사관리부</option>
                    <option value="D2">회계관리부</option>
                    <option value="D3">마케팅부</option>
                    <option value="D4">국내영업부</option>
                    <option value="D5">해외영업1부</option>
                    <option value="D6">해외영업2부</option>
                    <option value="D7">해외영업3부</option>
                    <option value="D8">기술지원부</option>
                    <option value="D9">총무부</option>
                </select>
            </div>
            <div class="form-group">
                <label for="jobCode">직급코드:</label>
                <select name="jobCode" class="form-select">
                    <option value="J1">대표</option>
                    <option value="J2">부사장</option>
                    <option value="J3">부장</option>
                    <option value="J4">차장</option>
                    <option value="J5">과장</option>
                    <option value="J6">대리</option>
                    <option value="J7">사원</option>
                </select>
            </div>
            <div class="form-group">
                <label for="salLevel">급여등급:</label>
                <select name="salLevel" class="form-select">
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="S3">S3</option>
                    <option value="S4">S4</option>
                    <option value="S5">S5</option>
                    <option value="S6">S6</option>
                </select>
            </div>
            <div class="form-group">
                <label for="salary">급여:</label>
                <input type="number" name="salary" class="form-control" placeholder="급여 입력">
            </div>
            <div class="form-group">
                <label for="bonus">보너스율:</label>
                <input type="text" name="bonus" class="form-control" placeholder="보너스율 입력">
            </div>
            <div class="form-group">
                <label for="managerId">관리자사번:</label>
                <input type="text" name="managerId" class="form-control" placeholder="관리자사번 입력">
            </div>
            <div class="form-group">
                <label for="hireDate">입사일:</label>
                <input type="date" name="hireDate" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">등록하기</button>
        </form>
    </section>

    <hr>

    <!-- 직원 정보 수정 -->
    <section id="section4">
        <h3 class="section-title">4. 직원 정보 수정</h3>
        <p>(사번과 변경할 정보를 입력 받아 사번과 일치하는 사원의 정보 변경 - 원하는 데이터 변경) : POST /employee/update</p>
        <form action="${pageContext.servletContext.contextPath}/employee/update" method="post">
            <div class="form-group">
                <label for="empId">사번:</label>
                <input type="text" name="empId" class="form-control" placeholder="사번 입력">
            </div>
            <div class="form-group">
                <label for="entDate">퇴사일:</label>
                <label for="entDate">퇴사일:</label>
                <input type="date" name="entDate" class="form-control">
            </div>
            <button type="submit" class="btn btn-warning">직원퇴사</button>
        </form>
    </section>

    <hr>

    <!-- 직원 정보 삭제 -->
    <section id="section5">
        <h3 class="section-title">5. 직원 정보 삭제</h3>
        <p>(사번 입력 받아 사번과 일치하는 행 삭제) : POST /employee/delete</p>
        <form action="${pageContext.servletContext.contextPath}/employee/delete" method="post">
            <div class="form-group">
                <label for="empId">사번:</label>
                <input type="text" name="empId" class="form-control" placeholder="사번 입력">
            </div>
            <button type="submit" class="btn btn-danger">직원 정보 삭제</button>
        </form>
    </section>

</div>

<!-- Bootstrap JS (optional, for Bootstrap functionality) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>