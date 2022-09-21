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
                <li><a href="inscription.php">Inscription</a></li>
            </ul>
            <i id="menu-btn" class="fa-solid fa-bars"></i>
        </div>
    </nav>

    <?php

$req = 'select content from pages where title = "employabilite" and section = "titre"';
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


    <section class="pres-container">
        <div class="pres-img">
            <img src="images/emp.jpg" alt="">
        </div>
        <div class="pres-text">
            <h2>Formation au service de l'entreprise</h2>
            <p>Depuis 21 ans, l'Institut Supérieur ESMA n'a cessé d'innover pour proposer à ses étudiants, des Formations et des Diplômes Accrédités, dans des spécialités fortement demandées par les entreprises. <br><br>
                Pour 2018-2019, ESMA met en place divers Diplômes Bac +3 et Bac +5 uniques à Marrakech, suivants : (i) Bac +5 Accrédité Spécialité Comptabilité Finance Audit (Diplôme Similaire au Master CCA), (ii) Bac +5 Accrédité Spécialité Management Logistique et Marketing Distribution, (iii) Bac +3 Accrédité Spécialité Management Industriel.   <br><br>             
                De par la dimension des Systèmes d'Information, ESMA a mis en place depuis 2001, des Diplômes Accrédités Bac +5 et Bac +3 en Génie Informatique et Ingénierie des Réseaux et Télécoms. <br><br>
                ESMA, c'est aussi un Important Réseau de Partenaires Universitaires qui a permis la délocalisation depuis 1998, des  Masters et Licences d'Etat Français suivants : (i) Licence Métiers de la Comptabilité Contrôle de Gestion, (ii) Master MIAGE M1 et M2  Méthodes Informatiques Appliquées à la Gestion option SIIN, (iii) Licence d'Etat Réseaux et Télécoms.</p>
        </div>
    </section>


    <section class="title">
        <h2>Nos Recruteurs</h2>
    </section>
    
    <section class="pres-container">
        
        <div class="pres-img">
            <img src="images/rec1.png" alt="">
        </div>
        <div class="pres-img">
            <img src="images/rec2.png" alt="">
        </div>
    </section>
    
    <section class="pres-container">
        <div class="pres-img">
            <img src="images/rec3.png" alt="">
        </div>
        <div class="pres-img">
            <img src="images/rec4.png" alt="">
        </div>
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
          spaceBetween: 30,
          centeredSlides: true,
          autoplay: {
            delay: 2500,
            disableOnInteraction: false,
          },
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      </script>
</body>

</html>