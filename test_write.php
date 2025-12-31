<?php
$testFile = __DIR__ . '/uploads/test.txt';
if (is_writable(__DIR__ . '/uploads')) {
    file_put_contents($testFile, "Write test successful!");
    echo "Uploads folder is writable, test file created.";
} else {
    echo "Uploads folder is NOT writable.";
}
?>
