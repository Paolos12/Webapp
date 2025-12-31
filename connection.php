<?php

    // Host, user, password
    $db_host = "localhost";
    $db_user = "root";
    $db_pass = ""; // change if your root has a password
    $db_name = "elms_db"; // project database name

    $database = new mysqli($db_host, $db_user, $db_pass, $db_name);
    if ($database->connect_error){
        die("Connection failed:  ".$database->connect_error);
    }

?>