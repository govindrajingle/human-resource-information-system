<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
		     
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Employee Admin - Add Department</title>

  <!-- Custom fonts for this template -->
  <link href="../static/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../static/admin/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../static/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Employee Admin</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="/admin/employee-dashboard">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Employees
      </div>


      <!-- Nav Item -Employees List -->
      <li class="nav-item">
        <a class="nav-link" href="/admin/employee-datatable">
          <i class="fas fa-list"></i>
          <span>Employee List</span></a>
      </li>

      <!-- Nav Item -Add Employees -->
      <li class="nav-item">
        <a class="nav-link" href="/admin/employee-addEmp">
          <i class="fas fa fa-plus"></i>
          <span>Add Employee</span></a>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

                  <!-- Heading -->
                  <div class="sidebar-heading">
                    Departments
                  </div>
            
            
                  <!-- Nav Item -Department List -->
                  <li class="nav-item">
                    <a class="nav-link" href="/admin/employee-department-table">
                      <i class="fas fa-list"></i>
                      <span>Departments List</span></a>
                  </li>
            
                  <!-- Nav Item -Add Department -->
                  <li class="nav-item active">
                    <a class="nav-link" href="/admin/employee-department-add">
                      <i class="fas fa fa-plus"></i>
                      <span>Add Department</span></a>
                  </li>
            
            
                  <!-- Divider -->
                  <hr class="sidebar-divider d-none d-md-block">

                  <!-- Heading -->
                  <div class="sidebar-heading">
                    Branches
                  </div>
            
            
                  <!-- Nav Item -Branches List -->
                  <li class="nav-item">
                    <a class="nav-link" href="/admin/employee-branch-table">
                      <i class="fas fa-list"></i>
                      <span>Branches List</span></a>
                  </li>
            
                  <!-- Nav Item -Add Branch -->
                  <li class="nav-item">
                    <a class="nav-link" href="/admin/employee-branch-add">
                      <i class="fas fa fa-plus"></i>
                      <span>Add Branch</span></a>
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
          <form class="form-inline">
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>
          </form>

          <!-- Topbar Search -->


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

            <!-- Nav Item - Alerts -->
            

            <!-- Nav Item - Messages -->
            
            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                    <security:authorize access="isAuthenticated()">
					    <security:authentication property="name" />
					</security:authorize>                
                </span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <form action="logout" method="post">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/logout">                
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
                </form>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Add Department</h1>
          <br>

          <form class="was-validated" action="department" method="POST">
            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="validationTooltip01">Department Name</label>
                <select class="custom-select" id="department_add_name" name="departmentName" required>
                  <option value="">Choose...</option>
                  <option value ="Marketing">Marketing</option>
                  <option value="Accounting and Finance">Accounting and Finance</option>
                  <option value="Human Resource Management">Human Resource Management</option>
                  <option value="Research and Development">Research and Development</option>
                  <option value="Technical Staff">Research and Development</option>

                </select>
                <div class="invalid-tooltip">
                  Please Enter Correct Department Name.
                </div>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>

              
              <div class="col-md-6 mb-3">
                <label for="validationTooltip02">Department Phone No</label>
                <input type="text" class="form-control" id="department_add_phoneNo" name="dphoneNo" placeholder="Department Phone Number" required>
                <div class="invalid-tooltip">
                  Please Enter Department Phone No.
                </div>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
     
            </div>
            <div class="form-row">

              <div class="col-md-6 mb-3 mt-4">
                <label for="validationTooltipUsername">Department Email</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                  </div>
                  <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" id="department_add_email" name="departmentEmail" placeholder="Department Email" aria-describedby="validationTooltipUsernamePrepend" required>
                  <div class="invalid-tooltip">
                    Please Enter Department Email.
                  </div>
                  <div class="valid-tooltip">
                    Looks good!
                  </div>
                </div>
              </div>

              <div class="col-md-6 mb-3 mt-4">
                <label for="validationTooltipDPBranch">Branch</label>
                  <select class="custom-select" id="department_add_branch" name="department_branch" required>
                    <option value="">Choose...</option>
                    <option value ="Delhi">Delhi</option>
                    <option value="pune">pune</option>
                    <option value="Meerut">Meerut</option>
                    <option value="Indore"></option>
                  </select>
                    <div class="invalid-tooltip">
                      Please Select Correct Branch.
                    </div>
                    <div class="valid-tooltip">
                      Looks good!
                    </div>
                </div>

            </div>

            <div class="form-row">
              <div class="col-md-12 mb-3 mt-4">
                <label for="validationTooltip03">Address</label>
                <input type="text" class="form-control" id="department_add_address" name="department_address" placeholder="Department Address" required>
                <div class="invalid-tooltip">
                  Please Provide a Valid Department Address.
                </div>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-12 mb-3 mt-4 mb-4">
                <label for="validationTooltip03">Department Entention No</label>
                <input type="text" class="form-control" id="department_add_ententionNo" name="department_ententionNo" placeholder="Department Entention No" required>
                <div class="invalid-tooltip">
                  Please Provide a Valid Department Entention No.
                </div>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
            </div>

            <button class="btn btn-primary mt-4 mb-4" type="submit">Add Department</button>
            <button class="btn btn-secondary mt-4 mb-4" type="submit">Cancel</button>
          </form>
                

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span></span>
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
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../static/admin/vendor/jquery/jquery.min.js"></script>
  <script src="../static/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../static/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../static/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="../static/admin/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="../static/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="../static/admin/js/demo/datatables-demo.js"></script>

</body>
</html>