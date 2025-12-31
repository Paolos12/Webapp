<?php
// Script to add pdf_file column to test_results table
include("connection.php");

try {
    $sql = "ALTER TABLE test_result ADD COLUMN pdf_file VARCHAR(255) DEFAULT NULL";
    if ($database->query($sql)) {
        echo "Successfully added pdf_file column to test_result table!";
    } else {
        echo "Error adding column: " . $database->error;
    }
} catch (Exception $e) {
    echo "Column might already exist or error occurred: " . $e->getMessage();
}
?> 