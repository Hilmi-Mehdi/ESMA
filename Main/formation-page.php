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

</section>

    <section id="course-inner">
    <?php

$req = 'select * from formations where id = "'.$_GET['id'].'"';
$res = mysqli_query($link, $req);

if (mysqli_num_rows($res) == 0) {
    echo 'OOPS';
} else {
    while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        
        

        echo'<div class="overview">
        <img class="course-img" src="'.$row['image'].'" alt="">
    <div class="course-head">
        <div class="c-name">
            <h2>'.$row['title'].'</h2>
        <p>'.json_decode($row['description']).'</p>
    </div>
        <span><a href="inscription.php">s\'inscrire</a></span> 
    </div>
    <h3>Instructor</h3>
    <div class="tutor">
        <img src="'.$row['image'].'" alt="">
        <div class="tutor-det">
            <h5>'.$row['instructor'].'</h5>
            <p>Professeur a l\'ESMA</p>
        </div>
    </div>
    <hr>';

    // $content = json_decode($row['objectifs'], true);
    // echo'
    // <h3>'.$content['titre'].'</h3>
    // <p>'.$content['text'].'</p>
    // <hr>
    // <h3>Debouches et Emplois</h3>';

    echo json_decode($row['objectifs']);

    // $content = json_decode($row['emplois'], true);
    // for ($i=0; $i < count($content); $i++) { 
    //     echo'
    // <div class="learn">
    //     <p><i class="far fa-check-circle"></i> '.$content[$i].'</p>
    // </div>';
    // }

    echo json_decode($row['emplois']);
    
    echo'</div><div class="enroll">';
    //  <h3>Themes Majeurs</h3>';

    // $content = json_decode($row['emplois'], true);
    // for ($i=0; $i < count($content); $i++) { 
    //     echo'<p><i class="far fa-check-circle"></i>'.$content[$i].'</p>';
    // }

    echo json_decode($row['themes']);


    echo'    <div class="enroll-btn">
    <a target="_blank" href="'.$row['broch'].'" class="blue">Telecharger</a>
</div>
</div>';
    
    }
}
  
?>
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