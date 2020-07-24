<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Page Title - SB Admin</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/admin/styles.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css'/>"  crossorigin="anonymous" />

<script type="text/javascript"
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js'/>" crossorigin="anonymous"></script>
</head>

<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">관리자 계정 등록</h3>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <!--수정1-->
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputAdminID">아이디</label>
                                            <input class="form-control py-4" id="inputAdminID" type="text"
                                                aria-describedby="IdlHelp" placeholder="ID" />
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputAdminPassword">비밀번호</label>
                                                    <input class="form-control py-4" id="inputAdminPassword" type="Password"
                                                        placeholder="password" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inpuConfirmPassword">비밀번호 확인</label>
                                                    <input class="form-control py-4" id="inputConfirmPassword"
                                                        type="password" placeholder="Confirm password" />
                                                </div>
                                            </div>
                                        </div>
                                         <!--수정2-->
                                        <div class="form-group">
                                            <label class="small mb-1" for="AdminCode">코드</label>
                                            <input class="form-control py-4" id="inputAdminCode" type="text"
                                                aria-describedby="codeHelp" placeholder="Code" />
                                        </div>
                                        <div class="form-group mt-4 mb-0"><a class="btn btn-primary btn-block"
                                                href="login.admdo">계정 만들기</a></div>
                                    </form>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small"><a href="login.admdo">로그인 페이지로 돌아가기</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2020</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>