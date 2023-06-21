<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="../dynamic/css.jspf"%>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <%@include file="../dynamic/navigationMain.jsp"%>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>



                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>




                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Imię nazwisko</span>

                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Content Row -->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Imię</label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" value="Imię">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Nazwisko</label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" value="Nazwisko">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">URL Git</label>
                                            <div class="col-10">
                                                <input class="form-control" type="text" value="github">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Od czego się zaczęło:</label>
                                            <div class="col-10">
                                                <textarea class="form-control" rows="5">start</textarea>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-2 col-form-label">Czy kursant opanował
                                                jakieś technologie ?</label>
                                            <div class="col-1">
                                                <label class="radio-inline"><input type="radio" id="question" name="checkbox" value="1">TAK
                                                </label>
                                            </div>
                                            <div class="col-1">
                                                <label class="radio-inline"><input type="radio" id="question" name="checkbox" value="0" checked>NIE</label>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>



                            <!-- Content Row -->

                            <div class="col-xl-12 col-md-12 mb-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">

                                        <div class="row">
                                            <div class="col-2">
                                                <label class="col-form-label">Java</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                            <div class="col-2">
                                                <label class="col-form-label">Wzorce projektowe</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                            <div class="col-2">
                                                <label class="col-form-label">TDD</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                            <div class="col-2">
                                                <label class="col-form-label">Bazy danych SQL</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>



                                            <div class="col-2">
                                                <label class="col-form-label">Hibernate JPA</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                            <div class="col-2">
                                                <label class="col-form-label">HTML_CSS</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                            <div class="col-2">
                                                <label class="col-form-label">JSP</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>

                                            <div class="col-2">
                                                <label class="col-form-label">Thymeleaf</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>

                                            <div class="col-2">
                                                <label class="col-form-label">git</label>
                                                <input class="form-control" type="text" value="%">
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input class="btn btn-success pull-left" type="submit" value="Zapisz zmiany" id="searchButton"></input>


                    <!-- Button to Open the Modal -->
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">
                        Usuń
                    </button>

                    <!-- The Modal -->
                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">Czy na pewno chcesz usunąć osobę ?</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    Jeżeli usuniesz to już nie będzie odwrotu
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-dismiss="modal">Anuluj</button>
                                    <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                                </div>

                            </div>

                        </div>
                    </div>





                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SDACADEMY 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

        </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Uwaga</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Wybierz „Wyloguj” poniżej, jeśli chcesz zakończyć bieżącą sesję.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Anuluj</button>
                    <a class="btn btn-primary" href="#">Wyloguj</a>
                </div>
            </div>
        </div>
    </div>

        <%@include file="../dynamic/board.jspf"%>
        <%@include file="../dynamic/javaScript.jsp"%>

    </body>

</html>
