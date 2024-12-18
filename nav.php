<?php

require 'connection.php';

session_start();

if (!isset($_SESSION['email'])) {
    echo header('location: login.php');
}
?>

<link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.bundle.min.js"></script>
<style>
    a{
        max-width: 1200px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;padding: 4px;
            
    }
</style>
<div class="nav">
<a href="add-student.php" class="fw-bolder btn btn-primary">Add student</a>
<a href="add-course.php" class="fw-bolder btn btn-success">Add course</a>
<a href="enrollment.php" class="fw-bolder btn btn-warning">Enroll student</a>
<a href="view-enrollment.php" class="fw-bolder btn btn-secondary">View enrollment</a>
<a href="view-student.php" class="fw-bolder btn btn-light">View student</a>
<a href="view-courses.php" class="fw-bolder btn btn-info">View course</a>
</div>
