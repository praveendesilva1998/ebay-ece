<?php include("header.php");
include("menu.php");

$sql = "SELECT * FROM item WHERE typeVente = 'acheter maintenant' GROUP BY ID DESC";

display_item($con, $sql);

include("footer/footer.php"); ?>