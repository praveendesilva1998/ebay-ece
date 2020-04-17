<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item GROUP BY nombreVente DESC LIMIT 20";

display_item($con, $sql);

include("footer/footer.php"); ?>