<?php
$conn = mysqli_connect('localhost', 'root', '', 'student_management');

if (!$conn) {
    die('Database connection failed!');
}
