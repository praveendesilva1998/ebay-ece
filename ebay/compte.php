<?php include("header.php"); ?>	
<?php include("menu.php");  ?>

<?php

    $email = $_SESSION['email'];
    $user_details_query = mysqli_query($con, "SELECT * FROM acheteur WHERE email = '$email'");
    $user_array = mysqli_fetch_array($user_details_query);
    $first_name = $user_array['first_name'];
    $last_name = $user_array['last_name'];
    $address1 = $user_array['Adresse1'];
    $address2 = $user_array['Adresse2'];
    $city = $user_array['Ville'];
    $zip = $user_array['CodePostal'];
    $country = $user_array['Pays'];
    $tel = $user_array['Telephone'];

    ?>
    
<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">

    <div class="container-fluid">
      <div class="row">
          <nav class="col-sm-3 col-4" id="myScrollspy">
          <ul class="nav nav-pills flex-column">
              <li class="nav-item">
              <a class="nav-link active" href="#section1">Coordonnées Personnelles</a>
              </li>
              <li class="nav-item">
              <a class="nav-link active" href="#section2">Coordonnées Bancaires</a>
              </li>
              <li class="nav-item">
              <a class="nav-link active" href="#section3">Mon Panier</a>
              </li>
              <li class="nav-item">
              <a class="nav-link active" href="#section4">Mes Achats</a>
              </li>
          </ul>
          </nav>
          <div class="col-sm-9 col-8">
            <div id="section1">
                <h4>Coordonnées Personnelles</h4><h6><a href="modifierInfoPerso.php">Modifier ></a></h6><br>
                <h6> <?php echo 
                    "Nom : $first_name <br><br>
                    Prénom : $last_name <br><br>
                    Adresse : $address1, $address2 $zip $city, $country <br><br>
                    Numéro de téléphone : $tel"; ?><br></h6>
            </div>
            <div id="section2">
                <h4>Coordonnées Banciares</h4><h6><a href="Z.php">Modifier ></a></h6><br>
                <h6> <?php echo 
                "Type de carte : <br><br>
                Numéro de la carte : <br><br>
                Nom de la carte :  <br><br>
                Date d'expiration : <br><br>
                Clé de Sécurité : "; ?><br></h6>

            </div>
            <div id="section3">
                <h4>Mon Panier</h4>

            </div> 

            <div id="section4">
                <h4>Mes Achats</h4>

            </div>
          
          </div>
      </div> 

</body>

<?php include("footer/footer.php");   ?>

