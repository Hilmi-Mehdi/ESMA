<?php
require_once 'Config.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/f7c539cf1a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/main.css">
    <script
  src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
  integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI="
  crossorigin="anonymous"></script>
  <link
  rel="stylesheet"
  href="https://unpkg.com/swiper@8/swiper-bundle.min.css"
/>
    <title>ESMA Maroc</title>
</head>

<body>


    <nav>
        <img src="Images/logoESMA.webp" alt="">
        <div class="navigation">
            <ul>
                <i id="menu-close" class="fas fa-times"></i>
                <li><a href="index.php" >Acceuil</a></li>
                <li><a href="Presentation.php">Presentation</a></li>
                <li><a href="formations.php">Diplomes Accrédités</a></li>
                <li><a href="formations-france.php">Diplomes d'etat Francais</a></li>
                <li><a href="parascolaire.php">Parascolaires</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="inscription.php" class="active">Inscription</a></li>
            </ul>
            <i id="menu-btn" class="fa-solid fa-bars"></i>
        </div>
    </nav>

    <?php

$req = 'select content from pages where title = "inscription" and section = "title"';
$res = mysqli_query($link, $req);

if (mysqli_num_rows($res) == 0) {
    echo 'OOPS';
} else {
    while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        $content =  json_decode($row['content'], true);
    }
}

    echo '<section id="pres-home" style="background-image: linear-gradient(rgba(9, 5, 54, .3), rgba(5, 4, 46, .7)), url(../Main/'.$content['image'].')">';
    
    echo'<h2>'.$content['titre'].'</h2>';

?>
</section>


    <section id="inscription">
        <script src="js/script.js"></script>
        <div class="btns">
            <button id="b1" onclick="show('b1')" class="ins-btn active">Inscription premiere annee</button>
            <button id="b2" onclick="show('b2')" class="ins-btn">Inscription par equivalence</button>
            <button id="b3" onclick="show('b3')" class="ins-btn">Inscription pour etudiants etrangers</button>
            <button id="b4" onclick="show('b4')" class="ins-btn">Inscription en formation professionnelle</button>
        </div>
       
        <form class="form" id="f1" action="send.php">
            <p>REMPLISSEZ LE FORMULAIRE DE PRÉ-INSCRIPTION</p>
            <div class="form-row">
                <input type="text" placeholder="Nom" required name="nom1">
                <input type="text" placeholder="Prenom" required name="prenom1">
            </div>
            <div class="form-row">
                <input type="email" placeholder="E-mail" required name="mail1">
                <input type="tel" placeholder="Tel" required name="tel1">
            </div>
            <div class="form-row">
                <input type="text" placeholder="Ville" required name="ville1">
                <select name="for1" id="">
                    <option value="Selectionnez une formation" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
            </div>
            <div class="form-col">
                <textarea name=" adr1" id="" placeholder="Adresse" required></textarea>
            </div>
            <div class="form-col">
                <center><button type="submit" name="pr">Envoyer</button></center>
            </div>
        </form>


        <form class="form" id="f2" action="send.php">
            <p>REMPLISSEZ LE FORMULAIRE DE PRÉ-INSCRIPTION</p>
            <div class="form-row">
                <input type="text" placeholder="Nom" name="nom2">
                <input type="text" placeholder="Prenom" name="prenom2">
            </div>
            <div class="form-row">
                <input type="email" placeholder="E-mail" name="mail2">
                <input type="tel" placeholder="Tel" name="tel2">
            </div>
            <div class="form-3-row">
                <input type="text" placeholder="Ville" name="ville2">
                <select name="ob2" id="">
                    <option value="Diplome obtenue" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
                <select name="for2" id="">
                    <option value="Selectionnez une formation" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
            </div>
            <div class="form-col">
                <textarea name="adr2" id="" cols="30" rows="8" placeholder="Adresse"></textarea>
            </div>
            <div class="form-col">
            <center><button type="submit" name="eq">Envoyer</button></center>
            </div>
        </form>

        <form class="form" id="f3" action="send.php">
            <p>REMPLISSEZ LE FORMULAIRE DE PRÉ-INSCRIPTION</p>
            <div class="form-row">
                <input type="text" placeholder="Nom">
                <input type="email" placeholder="Prenom">
            </div>
            <div class="form-row">
                <input type="text" placeholder="E-mail">
                <input type="email" placeholder="Tel">
            </div>
            <div class="form-3-row">
                <input type="text" placeholder="Ville">
                <select name="" id="">
                    <option value="Diplome obtenue" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
                <select name="" id="">
                    <option value="Selectionnez une formation" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
            </div>
            <div class="form-col">
                <textarea name="" id="" cols="30" rows="8" placeholder="Adresse"></textarea>
            </div>
            <div class="form-col">
            <center><button type="submit" name="et">Envoyer</button></center>
            </div>
        </form>

        <form class="form" id="f4" action="send.php">
            <p>REMPLISSEZ LE FORMULAIRE DE PRÉ-INSCRIPTION</p>
            <div class="form-row">
                <input type="text" placeholder="Nom" name='nom4'>
                <input type="text" placeholder="Prenom" name='prenom4'>
            </div>
            <div class="form-row">
                <input type="email" placeholder="E-mail" name='mail4'>
                <input type="tel" placeholder="Tel" name='tel4'>
            </div>
            <div class="form-3-row">
                <input type="text" placeholder="Ville" name='ville4'>
                <select name='ob4' id="">
                    <option value="Diplome obtenue" selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
                <select name='for4' id="">
                    <option value="Selectionnez une formation"  selected>Selectionnez une formation</option>
                    <option value="GI">GI</option>
                    <option value="GAE">GAE</option>
                </select>
            </div>
            <div class="form-col">
                <textarea name="adr4" id="" cols="30" rows="8" placeholder="Adresse"></textarea>
            </div>
            <div class="form-col">
            <center><button type="submit" name="fo">Envoyer</button></center>
            </div>
        </form>
    </section>

    <footer>    
        <div class="footer-col">
            <img src="images/logoESMA.webp" alt="">
            <li>La grande ecole de Marrakech</li>
            <div class="pro-links">
                <a href="https://www.facebook.com/esma.marrakech" target="_blank"><i class="fa-brands fa-facebook fa-xl"></i></a>
                <a href="https://www.instagram.com/esma.marrakech/" target="_blank"><i class="fa-brands fa-instagram fa-xl"></i></a>
                <a href="https://www.linkedin.com/company/esma-marrakech/" target="_blank"><i class="fa-brands fa-linkedin fa-xl"></i></a>
            </div>
        </div>
        <div class="footer-col">
            <h3>Contact</h3>
            <li><i class="fa-solid fa-location-dot"></i><a href="https://www.google.com/maps/dir//ESMA,+1,+AV+My+Abdellah+(ex+Safi)+Rouidate+1+Imm.+BERRADA+Gu%C3%A9liz%D8%8C+Marrakesh+40000%E2%80%AD/@31.6439856,-8.0046407,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0xdafee873bf156df:0x86dc138c4b697368!2m2!1d-8.0046407!2d31.6439856!3e0" target="_blank"> AV My Abdellah Rouidate 1 Imm.<br>BERRADA Guéliz  Marrakech</a></li>
            <li><i class="fa-solid fa-at"></i><a href="mailto:contact@esmamaroc.ma">contact@esmamaroc.ma</a></li>
            <li><i class="fa-solid fa-phone"></i><a href="tel:+212524331125"> +212 5 24 33 11 25</a></li>
            <li><i class="fa-solid fa-phone"></i><a href="tel:+212661572970"> +212 6 61 57 29 70</a></li>
        </div>
        <div class="footer-col">
            <h3>Formations</h3>
            <li>Bac+5 GAE</li>
            <li>Bac+5 GI</li>
            <li>Bachelor GAE</li>
            <li>Bachelor GI</li>
            <li>Licence Vente Marketing</li>
            <li>Licence Controle de Gestion</li>
            <li>Licence Resaux-Telecoms</li>
            <li>Master MIAGE</li>
        </div>
        <div class="footer-col">
            <h3>Liens Utiles</h3>
            <li>Inscription</li>
            <li>Telechargements</li>
            <li>Employabilite</li>
        </div>

        <div class="copyright">
            <p>Copyright ©2022 ESMA. Tous droits réservés.</p>
            
            
        </div>
    </footer>


    <script>

        $('#menu-btn').click(function () {
            $('nav .navigation ul').addClass('active')
        });

        $('#menu-close').click(function () {
            $('nav .navigation ul').removeClass('active')
        });

    </script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
          cssMode: true,
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
          pagination: {
            el: ".swiper-pagination",
          },
          mousewheel: true,
          keyboard: true,
        });
      </script>
</body>

</html>