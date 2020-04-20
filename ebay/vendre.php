<?php include("header.php");
include("menu.php");

if(!logged_in_vendeur())
{
    redirect("vendeurLogin.php");
}
if(logged_in())
{
    redirect("logout.php");
    redirect("vendeurLogin.php");
}

?>

<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">

    <div class="container-fluid">
        <div class="row">
            <nav class="col-sm-3 col-4" id="myScrollspy">
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                <a class="nav-link active" href="#section1">Mon Profil</a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" href="#section2">Items</a>
                </li>
            </ul>
            </nav>
            <div class="col-sm-9 col-8">
            <div id="section1">
                <h4>Mon profil</h4><br>

                <h5><a href="modifier_infoVendeur.php" class="lien">Modifier mes informations</a></h5>
                
            </div>
            <div id="section2">
                <h4>Items</h4><h6><br>

                <h5><a href="ajouteritem.php" class="lien">Ajouter un Item à Acheter Maintenant</a></h5>
                <h5><a href="ajouterItemEnchere.php" class="lien">Ajouter un Item à Enchère</a></h5>
                <h5><a href="ajouterItemMeilleure.php" class="lien">Ajouter un Item de Meilleur Offre</a></h5>
                <h5><a href="midifierItemVendeur.php" class="lien">Modifier mes Item</a></h5>

            </div>
        
        </div>
    </div> 

</body>


<?php include("footer/footer.php"); ?>