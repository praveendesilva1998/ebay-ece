<?php

    
function create_item($con, $id)
{
    $email = $_SESSION['email'];
    $data_query = mysqli_query($con, "SELECT * FROM item WHERE id = $id");

    if(mysqli_num_rows($data_query) > 0)
    {
        while($row = mysqli_fetch_array($data_query))
        {
            $id = $row['ID'];
            $titre = $row['Nom'];
            $image1 = $row['Image1'];
            $image2 = $row['Image2'];
            $image3 = $row['Image3'];
            $prix = $row['Prix'];
            $categorie = $row['Categorie'];
            $description = $row['Description'];
            $type = $row['typeVente1'];
            
            
            $str = "
            

            <div class='row'>

                <div class='col-8'>
                    <div class='text_item'>
                        <center><h4 class='titre_item'>$titre</h4><br><br></center>
                        
                    </div>
                </div>
                <div class='col-4'>
                    <div class='prix_item'>
                        $prix,00 €
                    </div>
                    <form action='article.php?id=$id' method='post'>
                        <button name='ajouter_panier' class='btn btn-primary'>Ajouter au Panier<i class='fa fa-shopping-cart' style='font-size:30px'></i></button>
                    </form>
                </div>
            </div>

            <center><div id='demo' class='carousel slide' data-ride='carousel'>
            <ul class='carousel-indicators'>
              <li data-target='#demo' data-slide-to='0' class='active'></li>
              <li data-target='#demo' data-slide-to='1'></li>
              <li data-target='#demo' data-slide-to='2'></li>
            </ul>
            <div class='carousel-inner'>
              <div class='carousel-item active'>
                <img src='$image1' alt='Los Angeles' style='height:500px;width:auto;margin-left:auto; margin-right:auto;'>
                <div class='carousel-caption'>
                  <h3>Los Angeles</h3>
                  <p>We had such a great time in LA!</p>
                </div>   
              </div>
              <div class='carousel-item'>
                <img src='$image2' alt='Chicago' width='1100' height='500'>
                <div class='carousel-caption'>
                  <h3>Chicago</h3>
                  <p>Thank you, Chicago!</p>
                </div>   
              </div>
              <div class='carousel-item'>
                <img src='$image3' alt='New York' width='1100' height='500'>
                <div class='carousel-caption'>
                  <h3>New York</h3>
                  <p>We love the Big Apple!</p>
                </div>   
              </div>
            </div>
            <a class='carousel-control-prev' href='#demo' data-slide='prev'>
              <span class='carousel-control-prev-icon'></span>
            </a>
            <a class='carousel-control-next' href='#demo' data-slide='next'>
              <span class='carousel-control-next-icon'></span>
            </a>
          </div>
                
                <br><br><h5><div class='description'>Description</h5>
                <br><h6>$description<br></h6>
                </div></center><br><br><br>
            </div>   
            

        ";
                
            }
    }

    echo $str;

    if(isset($_POST['ajouter_panier']))
    {
        $sql =  mysqli_query($con, "INSERT INTO panier (user, titre, prix, photo, type) VALUES ('$email', '$titre', '$prix', '$image1', '$type')");
    }
        
}


function display_item($con, $sql)
{

    $str = "";

    $data_query = mysqli_query($con, $sql);

    if(mysqli_num_rows($data_query) > 0)
    {

        while($row = mysqli_fetch_array($data_query))
        {
            $id = $row['ID'];
            $titre = $row['Nom'];
            $image1 = $row['Image1'];
            $image2 = $row['Image2'];
            $image3 = $row['Image3'];
            $prix = $row['Prix'];
            $categorie = $row['Categorie'];
            $description = $row['Description'];
                    

                $str .= "<center>
                <div class='box'>
                    <div class='row'>
                        <div class='col-3'>
                            <a href='article.php?id=$id'><img src='$image1' class='img1'></a>
                        </div>
                        <div class='col-9'>
                            <div class='text_item'>
                                <a href='article.php?id=$id'><h4 class='titre'>$titre</h4></a>
                                $prix,00 € 
                            </div>
                        </div>
                    </div>
                    
                </div>    
                <hr>    
                    
                </center>    ";

            
            }
    }

    echo $str;
}

function panier_item($con, $sql)
{
    $email = $_SESSION['email'];
    $str = "";

    $data_query = mysqli_query($con, $sql);

    if(mysqli_num_rows($data_query) > 0)
    {

        while($row = mysqli_fetch_array($data_query))
        {
            $id = $row['id'];
            $titre = $row['titre'];
            $image1 = $row['photo'];
            $prix = $row['prix'];
            $user = $row['user'];        

            $str .= "<center>
            <div class='box'>
                <div class='row'>
                    <div class='col-3'>
                        <a href='article.php?id=$id'><img src='$image1' class='img1'></a>
                    </div>
                    <div class='col-9'>
                        <div class='text_item'>
                            <a href='article.php?id=$id'><h4 class='titre'>$titre</h4></a>
                            $prix,00 € 
                        </div>
                        <form class='settings_form' action='panier.php' method='POST'>
                            <button class='btn btn-danger' name='supprimer_panier'>Supprimer</button>
                        </form>
                    </div>
                </div>
                    
            </div>  
            <hr>    
                    
            </center>    ";

            
            if(isset($_POST['supprimer_panier']))
            {
                $sql = mysqli_query($con, "DELETE FROM panier WHERE id = '$id'");
                            
            } 
        }
    }

    echo $str;

    

    
}



?>