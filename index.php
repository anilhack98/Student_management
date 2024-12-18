<?php
require 'connection.php';
session_start();

if (!isset($_SESSION['email'])) {
    header('location: login.php');
    exit();
}
?>

<link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.bundle.min.js"></script>
<style>
    .dropdown-item:hover{background-color: skyblue; transform:scale(1, 1.4);}
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle fw-bolder btn btn-primary text-white" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Menu
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="add-student.php">Add Student</a></li>
                        <li><a class="dropdown-item" href="add-course.php">Add Course</a></li>
                        <li><a class="dropdown-item" href="enrollment.php">Enroll Student</a></li>
                        <li><a class="dropdown-item" href="view-enrollment.php">View Enrollment</a></li>
                        <li><a class="dropdown-item" href="view-student.php">View Student</a></li>
                        <li><a class="dropdown-item" href="view-courses.php">View Courses</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
