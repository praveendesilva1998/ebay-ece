<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item WHERE Categorie = 'accessoires vip' GROUP BY ID DESC";

display_item($con, $sql);

include("footer/footer.php"); ?>