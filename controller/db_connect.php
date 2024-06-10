<?php
$conn = mysqli_connect("localhost", "root", "Netmedia040700_", "gis_korlantas");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
