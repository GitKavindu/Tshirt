<?php
    // DB connection parameters
    $dbServer = "localhost";
    $dbUser = "root";
    $dbPass = "";
    $database = "shopping";

    // Connect
    $connection = mysqli_connect($dbServer, $dbUser, $dbPass, $database);

    if(!$connection){
        die("Connection Failed : ".mysqli_connect_error());
    }
  
?>