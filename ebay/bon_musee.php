<?php include("header.php");
include("menu.php"); 



$sql = "SELECT * FROM item WHERE Categorie = 'bon pour le musee' GROUP BY ID DESC";

display_item($con, $sql); ?>




<?php include("footer/footer.php"); ?>