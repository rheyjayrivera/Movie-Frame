<?php
// Database connection. Defaults match a fresh XAMPP install.
function db(): mysqli {
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT); // throw exceptions
    $conn = new mysqli('localhost', 'root', '', 'frame');
    $conn->set_charset('utf8mb4');
    return $conn;
}
