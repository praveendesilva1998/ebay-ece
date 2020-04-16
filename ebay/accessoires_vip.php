<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item WHERE Categorie = 'accessoires vip'";

display_item($con, $sql);

include("footer/footer.php"); ?>