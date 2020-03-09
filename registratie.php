<?php
require 'config/config.php';


if (isset($_POST['submit'])) {
    $ingevuldun = $_POST['field_username'];
    $ingevuldem = $_POST['field_email'];
    $ingevuldpw = $_POST['field_password'];

    $ingevuldpw = md5($ingevuldpw);

    $sql = "SELECT * FROM `admin` WHERE 'username' =  '$ingevuldun' OR 'email' = '$ingevuldem'  OR 'password' = '$ingevuldpw'  ";

    $result = $conn->query($sql);


    if ($result->fetch_assoc()) {
        echo "bestaat";
    } else {
        $sql = "INSERT INTO `admin`(username, email, password) VALUES ('$ingevuldun', '$ingevuldem', '$ingevuldpw')";
        if ($conn->query($sql) === TRUE) {
            echo "Nieuwe data succesvol toegevoegd aan tabel 'admin'.";
        } else {
            // Uitvoeren query mislukt
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    header('Location: login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Registratie</title>
</head>

<body>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-6">
                <form method="post" action="registratie.php">
                    <div class="form-group">
                        <label for="fname">Username</label>
                        <input type="text" name="field_username" id="fname" class="form-control" placeholder="Username" required />
                    </div>
                    <div class="form-group">
                        <label for="email">E-mailadres</label>
                        <input type="email" name="field_email" class="form-control" id="email" placeholder="E-mailadres" required />
                    </div>
                    <div class="form-group">
                        <label for="passwd">Wachtwoord</label>
                        <input type="password" name="field_password" class="form-control" id="passwd" placeholder="Wachtwoord" required />
                    </div>
                    <input type="submit" name="submit" class="btn btn-info" value="Registreren" />
                    <a href="login.php" class="btn btn-secondary">login</a>
                </form>
            </div>
        </div>
    </div>
</body>

</html>