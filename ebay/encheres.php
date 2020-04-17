<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item WHERE typeVente = 'encheres'";

display_item($con, $sql);

include("footer/footer.php"); ?>