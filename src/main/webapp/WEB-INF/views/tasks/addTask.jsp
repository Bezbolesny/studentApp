<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="pl">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>JAVARZ</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Java<sup>SDA</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="#">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Home</span></a>
    </li>

    <!-- Nav Item - Kursanci -->
    <li class="nav-item">
        <a class="nav-link" href='#'>
            <i class="fas fa-users"></i>
            <span>Kursanci</span></a>
    </li>

    <!-- Nav Item - Kurs -->
    <li class="nav-item">
        <a class="nav-link" href='#'>
            <i class="fas fa-laptop"></i>
            <span>Kurs</span></a>
    </li>


    <!-- Nav Item - Tasks -->
    <li class="nav-item">
        <a class="nav-link" href='#'>
            <i class="fas fa-clipboard-list"></i>
            <span>Taski</span></a>
    </li>


    <!-- Nav Item - Technologie -->
    <li class="nav-item">
        <a class="nav-link" href='#'>
            <i class="fas fa-cogs"></i>
            <span>Technologie</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Inne
    </div>


    <!-- Nav Item - Blank -->
    <li class="nav-item">
        <a class="nav-link" href="#">
            <i class="fas fa-angle-double-left"></i>
            <span>Ocena</span></a>

    </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
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
    <label for="firstName" class="col-2 col-form-label">Wybierz kursanta</label>
    <div class="col-10">
  <select class="form-control" id="sel1">
    <option hidden>wybierz</option>
    <option>kursant1</option>
    <option>kursant2</option>
    <option>kursant3</option>
  </select>
    </div>
</div>                     
                                   
                                   
                                   
                                    <div class="form-group row">
                                        <label class="col-2 col-form-label">Deadline</label>
                                        <div class="col-10">
                                            <input class="form-control" type="date" placeholder="">
                                        </div>
                            </div>
                          

                            <div class="form-group row">
                                <label class="col-2 col-form-label">Tresć zadania:</label>
                                <div class="col-10">
                                <textarea class="form-control" rows="5" placeholder="tutaj opisz zadanie..."></textarea>
                                </div>
                            </div>


                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
       
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <div class="form-group row">

                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                    <div class="row">
                                    <div class="col-sm-2">
                                    <label class="radio-inline"><input type="radio" value="success" checked>
                                    <i class="btn btn-success btn-circle btn-sm"></i> poziom junior</label>
                                    </div>
                                    <div class="col-sm-2">
                                    <label class="radio-inline"><input type="radio" value="info" checked>
                                    <i class="btn btn-info btn-circle btn-sm"></i> poziom junior+</label>
                                    </div>
                                    <div class="col-sm-2">
                                    <label class="radio-inline"><input type="radio" value="secondary" checked>
                                    <i class="btn btn-secondary btn-circle btn-sm"></i> poziom mid</label>
                                    </div>
                                    <div class="col-sm-2">
                                    <label class="radio-inline"><input type="radio" value="primary" checked>
                                    <i class="btn btn-primary btn-circle btn-sm"></i> poziom mid+</label>
                                    </div>
                                    <div class="col-sm-2">
                                        <label class="radio-inline"><input type="radio" value="danger" checked>
                                            <i class="btn btn-danger btn-circle btn-sm"></i> poziom senior</label>
                                    </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>             
                    
                    
                    
                    
 <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>
         

    

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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
