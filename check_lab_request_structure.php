<?php
// Script to check the structure of lab_request table
include("connection.php");

try {
    $sql = "DESCRIBE lab_request";
    $result = $database->query($sql);
    
    if ($result) {
        echo "<h3>Structure of lab_request table:</h3>";
        echo "<table border='1' style='border-collapse: collapse;'>";
        echo "<tr><th>Field</th><th>Type</th><th>Null</th><th>Key</th><th>Default</th><th>Extra</th></tr>";
        
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['Field'] . "</td>";
            echo "<td>" . $row['Type'] . "</td>";
            echo "<td>" . $row['Null'] . "</td>";
            echo "<td>" . $row['Key'] . "</td>";
            echo "<td>" . $row['Default'] . "</td>";
            echo "<td>" . $row['Extra'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "Error: " . $database->error;
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?> 