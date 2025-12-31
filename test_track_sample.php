<?php
include("connection.php");

// Check if lab_request table exists and has data
$check_table = "SHOW TABLES LIKE 'lab_request'";
$table_result = $database->query($check_table);

if ($table_result->num_rows > 0) {
    echo "lab_request table exists<br>";
    
    // Check how many records are in lab_request
    $count_query = "SELECT COUNT(*) as total FROM lab_request";
    $count_result = $database->query($count_query);
    $count = $count_result->fetch_assoc()['total'];
    echo "Total lab requests: " . $count . "<br>";
    
    // Show a few sample records
    $sample_query = "SELECT * FROM lab_request LIMIT 3";
    $sample_result = $database->query($sample_query);
    
    echo "<h3>Sample Records:</h3>";
    while ($row = $sample_result->fetch_assoc()) {
        echo "Request ID: " . $row['request_id'] . " - Patient: " . $row['pname'] . " - Status: " . $row['status'] . "<br>";
    }
} else {
    echo "lab_request table does not exist<br>";
}

// Check if sample_tracking table exists
$check_tracking = "SHOW TABLES LIKE 'sample_tracking'";
$tracking_result = $database->query($check_tracking);

if ($tracking_result->num_rows > 0) {
    echo "sample_tracking table exists<br>";
} else {
    echo "sample_tracking table does not exist<br>";
}
?> 