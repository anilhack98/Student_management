<?php
require 'connection.php';

session_start();

$isValid = true;

$email = $password = "";

if (isset($_POST["submit"])) {
    if (isset($_POST["email"])) {
        $email = $_POST["email"];
    }
    if (isset($_POST["password"])) {
        $password = $_POST["password"];
    }

    if ($isValid) {

        $selectSql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
        $selectResult = mysqli_query($conn, $selectSql);

        $row = mysqli_num_rows($selectResult);

        if ($row == 1) {
            $_SESSION['email'] = $email;
            echo header("location: index.php");
        }
    }
}
?>

<link rel="stylesheet" href="bootstrap.min.css">
<script src="bootstrap.bundle.min.js"></script>

<form action="#" method="post" class="container mt-2">
    <h2 class="text-center">Login</h2>
    <div class="form-group">
        <label for="" class="form-label">Email</label>
        <input type="text" name="email" class="form-control form-control-sm">
    </div>
    <div class="form-group">
        <label for="" class="form-label">Password</label>
        <input type="password" name="password" class="form-control form-control-sm"> <br>
    </div>
    <input type="submit" name="submit" value="Login" class="btn btn-outline-primary">
    <a href="register.php" class="m-3 ">Not registered yet? Register...</a>
</form>