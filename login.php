<?php
require "config/config.php";
ob_start();
session_start();
if (isset($_POST['login']) && !empty($_POST['username']) && !empty($_POST['password'])) {

    $ingevuldun = $_POST['username'];
    $ingevuldpw = $_POST['password'];

    $sql = "SELECT * FROM `admin` WHERE 'username' =  '$ingevuldun' and 'password' = '$ingevuldpw'  ";
    if ($ingevuldun == 'username' && $ingevuldpw == 'password') {
        header('Location: admin.php');
        echo 'You have entered valid use name and password';
    } else {
        $msg = 'Wrong username or password';
    }
}

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Login</title>
</head>

<body>
    <!-- <div class="sidenav">
        <div class="login-main-text">
            <h2>Webshop<br> Login Page</h2>
        </div>-->
    </div>
    <div class="main">
        <div class="col-md-6 col-sm-12">
            <div class="login-form">
                <form method="POST" action="login.php">
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>Wachtwoord</label>
                        <input type="password" class="form-control" name="username" placeholder="Password">
                    </div>
                    <button type="submit" name="login" class="btn btn-black">Login</button>
                    <a href="registratie.php" class="btn btn-secondary">Registreer</a>
                </form>
            </div>
        </div>
    </div>

</body>

</html>