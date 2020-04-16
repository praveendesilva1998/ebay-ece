<header>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.php"><div class="logo">Ebay ECE</div></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="categories.php" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                CATEGORIES
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="ferrailles_tresor.php">FERRAILLES OU TRESOR</a>
                    <a class="dropdown-item" href="bon_musee.php">BON POUR LE MUSEE</a>
                    <a class="dropdown-item" href="accessoires_vip.php">ACCESSOIRE VIP</a>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="achat.php" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ACHAT
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="encheres.php">ENCHERES</a>
                    <a class="dropdown-item" href="acheter_maintenant.php">ACHETER</a>
                    <a class="dropdown-item" href="meilleures_ventes.php">MEILLEURES VENTES</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="vendre.php">VENDRE</a>
            </li>

            <li class="nav-item">
                <?php if(logged_in()):  ?>
                    <a class="nav-link" href="compte.php">VOTRE COMPTE</a>
				<?php endif;  ?>
				<?php if(!logged_in()):  ?>
					<a class="nav-link" href="login.php">VOTRE COMPTE</a>
				<?php endif;  ?>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="admin.php">ADMIN</a>
            </li>


            <li class="nav-item">
                <?php if(logged_in()):  ?>
                    <a class="nav-link" href="panier.php"><i class="fa fa-shopping-cart" style="font-size:30px"></i></a>
                <?php endif;  ?>
            </li>

            <li class="nav-item">
                <?php if(logged_in()):  ?>
                    <a class="nav-link" href="logout.php"><i class="fa fa-sign-out" style="font-size:30px;color:red"></i></a>
                <?php endif;  ?>
            </li>

            

        </ul>

    </div>
</nav>

</header>
<body>

