<?php
include("connection.php");

// Create sample_tracking table
$create_sample_tracking = "
CREATE TABLE IF NOT EXISTS sample_tracking (
    tracking_id INT PRIMARY KEY AUTO_INCREMENT,
    request_id INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL,
    notes TEXT,
    handled_by INT,
    tracking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (request_id) REFERENCES lab_request(request_id),
    FOREIGN KEY (handled_by) REFERENCES lab_technician(tech_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
";

// Add location column to lab_request if not exists
$add_location_column = "
ALTER TABLE lab_request ADD COLUMN IF NOT EXISTS location VARCHAR(100) DEFAULT NULL;
";

try {
    // Execute the queries
    $database->query($create_sample_tracking);
    $database->query($add_location_column);
    
    echo "Sample tracking tables created successfully!";
} catch (Exception $e) {
    echo "Error creating tables: " . $e->getMessage();
}
?> 