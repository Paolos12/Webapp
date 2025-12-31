<?php
// Script to check what tables exist in the database
include("connection.php");

try {
    $sql = "SHOW TABLES";
    $result = $database->query($sql);
    
    if ($result) {
        echo "<h3>Tables in elms_db database:</h3>";
        echo "<ul>";
        while ($row = $result->fetch_array()) {
            echo "<li>" . $row[0] . "</li>";
        }
        echo "</ul>";
    } else {
        echo "Error: " . $database->error;
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?> 