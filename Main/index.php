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
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <title>ESMA Maroc</title>
</head>

<body>


    <nav>
        <img src="Images/logoESMA.webp" alt="">
        <div class="navigation">
            <ul>
                <i id="menu-close" class="fas fa-times"></i>
                <li><a href="index.php" class="active">Acceuil</a></li>
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

    <div class="swiper mySwiper1">
        <div class="swiper-wrapper">
<?php

    $req = 'select content from pages where title = "acceuil" and section = "slider"';
    $res = mysqli_query($link, $req);

    if (mysqli_num_rows($res) == 0) {
        echo 'OOPS';
    } else {
        while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
            $content =  json_decode($row['content'], true);
        }
    }


    for ($i=0; $i < count($content); $i++) { 
        echo '<div class="swiper-slide">
        <section class="home h'. $i+1 .'" style="background-image: linear-gradient(rgba(9, 5, 54, .3), rgba(5, 4, 46, .7)), url(../Main/Images/back'. $i+1 .'.jpg)">
            <h2>'.$content[$i]['titre'].'</h2>
            <p>'.$content[$i]['text'].'</p>
            <div class="btn">
                <a class="'.$content[$i]["buttons"][0][0]["color"].'" href="'.$content[$i]["buttons"][0][0]["dest"].'">'.$content[$i]["buttons"][0][0]["text"].'</a>
                <a class="'.$content[$i]["buttons"][1][0]["color"].'" href="'.$content[$i]["buttons"][1][0]["dest"].'">'.$content[$i]["buttons"][1][0]["text"].'</a>
            </div>
        </section>
    </div>';
    }

?>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>



    <section id="features">
        <?php

    $req = 'select content from pages where title = "acceuil" and section = "values"';
    $res = mysqli_query($link, $req);

    if (mysqli_num_rows($res) == 0) {
        echo 'OOPS';
    } else {
        while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
            $content =  json_decode($row['content'], true);
        }
    }

        echo '<h1>'.$content['titre'].'</h1>
        <p>'.$content['text'].'</p>
        <div class="fea-base">
            <div class="fea-box">
                <i class="fa-solid fa-industry"></i>
                <h3>'.$content['values'][0]['titre'].'</h3>
                <p>'.$content['values'][0]['text'].'</p>
            </div>
            <div class="fea-box">
                <i class="fa-solid fa-universal-access"></i>
                <h3>'.$content['values'][1]['titre'].'</h3>
                <p>'.$content['values'][1]['text'].'</p>
            </div>
            <div class="fea-box">
                <i class="fa-solid fa-award"></i>
                <h3>'.$content['values'][2]['titre'].'</h3>
                <p>'.$content['values'][2]['text'].'</p>
            </div>
        </div>';

?>
    </section>

    <section id="course">
    <?php

$req = 'select content from pages where title = "acceuil" and section = "filiers"';
$res = mysqli_query($link, $req);

if (mysqli_num_rows($res) == 0) {
    echo 'OOPS';
} else {
    while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        $content =  json_decode($row['content'], true);
    }
}

    echo '<h1>'.$content['titre'].'</h1>
    <p>'.$content['text'].'</p>';

?>
        <div class="course-box">
            <div class="courses">
                <img src="Images/logist.jpg" alt="">
                <div class="details">
                    <span>Mis a jour 2022</span>
                    <h6>Management</h6>
                </div>
            </div>
            <div class="courses">
                <img src="Images/genie-info.jpg" alt="">
                <div class="details">
                    <span>Mis a jour 2022</span>
                    <h6>Genie Informatique</h6>
                </div>
            </div>
            <div class="courses">
                <img src="Images/manag.jpg" alt="">
                <div class="details">
                    <span>Mis a jour 2022</span>
                    <h6>Gestion & Administration</h6>
                </div>
            </div>
        </div>
    </section>

    <section id="registration">
        <div class="reminder">
        <?php

$req = 'select content from pages where title = "acceuil" and section = "inscription"';
$res = mysqli_query($link, $req);

if (mysqli_num_rows($res) == 0) {
    echo 'OOPS';
} else {
    while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        $content =  json_decode($row['content'], true);
    }
}

    echo '<p>'.$content['sous-titre'].'</p>
    <h1>'.$content['titre'].'</h1>';

?>
            <div class="time">
                <div class="date">
                    <span id="j"></span> <br> Jours
                </div>
                <div class="date">
                    <span id="h"></span> <br> Heures
                </div>
                <div class="date">
                    <span id="m"></span> <br> Mins
                </div>
                <div class="date">
                    <span id="s"></span> <br> Secs
                </div>
            </div>
        </div>

        <script>
            var countDownDate = new Date("Nov 30, 2022 00:00:00").getTime();

            var x = setInterval(function () {

                var now = new Date().getTime();

                var distance = countDownDate - now;

                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                document.getElementById("j").innerHTML = days;
                document.getElementById("h").innerHTML = hours;
                document.getElementById("m").innerHTML = minutes;
                document.getElementById("s").innerHTML = seconds;

                if (distance < 0) {
                    clearInterval(x);
                    document.getElementById("demo").innerHTML = "EXPIRED";
                }
            }, 1000);

        </script>

        <div class="form">
            <h3>NOUS VOUS RAPPELLERONS</h3>
            <input type="text" placeholder="Nom et Prenom" name="" id="">
            <input type="text" placeholder="Adresse e-mail" name="" id="">
            <input type="text" placeholder="Numéro de téléphone" name="" id="">
            <div class="btn">
                <a href="#" class="orange">Envoyer</a>
            </div>
        </div>
    </section>

    <section id="partners">
    <?php

$req = 'select content from pages where title = "acceuil" and section = "partners"';
$res = mysqli_query($link, $req);

if (mysqli_num_rows($res) == 0) {
    echo 'OOPS';
} else {
    while ($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        $content =  json_decode($row['content'], true);
    }
}

    echo '<h1>'.$content['titre'].'</h1>
    <p>'.$content['text'].'</p>
    <div class="partner-box">
        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="https://www.cnam.fr/" target="_blank"><img src="'.$content['partners'][0].'" alt=""></a>
                </div>
                <div class="swiper-slide">
                    <a href="https://www.univ-littoral.fr/" target="_blank"><img src="'.$content['partners'][1].'"
                            alt=""></a>
                </div>
                <div class="swiper-slide">
                    <a href="https://www.univ-paris13.fr/" target="_blank"><img src="'.$content['partners'][2].'"
                            alt=""></a>
                </div>
                <div class="swiper-slide"><a href="https://www.u-picardie.fr/" target="_blank"><img
                            src="'.$content['partners'][3].'" alt=""></a></div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
        </div>

    </div>'

?>

        
    </section>

    <div id="fb-root"></div>
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
        var chatbox = document.getElementById('fb-customer-chat');
        chatbox.setAttribute("page_id", "100335082744285");
        chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                xfbml: true,
                version: 'v14.0'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/fr_FR/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>


    <footer>
        <div class="footer-col">
            <img src="images/logoESMA.webp" alt="">
            <li>La grande ecole de Marrakech</li>
            <div class="pro-links">
                <a href="https://www.facebook.com/esma.marrakech" target="_blank"><i
                        class="fa-brands fa-facebook fa-xl"></i></a>
                <a href="https://www.instagram.com/esma.marrakech/" target="_blank"><i
                        class="fa-brands fa-instagram fa-xl"></i></a>
                <a href="https://www.linkedin.com/company/esma-marrakech/" target="_blank"><i
                        class="fa-brands fa-linkedin fa-xl"></i></a>
            </div>
        </div>
        <div class="footer-col">
            <h3>Contact</h3>
            <li><i class="fa-solid fa-location-dot"></i><a
                    href="https://www.google.com/maps/dir//ESMA,+1,+AV+My+Abdellah+(ex+Safi)+Rouidate+1+Imm.+BERRADA+Gu%C3%A9liz%D8%8C+Marrakesh+40000%E2%80%AD/@31.6439856,-8.0046407,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0xdafee873bf156df:0x86dc138c4b697368!2m2!1d-8.0046407!2d31.6439856!3e0"
                    target="_blank"> AV My Abdellah Rouidate 1 Imm.<br>BERRADA Guéliz Marrakech</a></li>
            <li><i class="fa-solid fa-at"></i><a href="mailto:contact@esmamaroc.ma">contact@esmamaroc.ma</a></li>
            <li><i class="fa-solid fa-phone"></i><a href="tel:+212524331125"> +212 5 24 33 11 25</a></li>
            <li><i class="fa-solid fa-phone"></i><a href="tel:+212661572970"> +212 6 61 57 29 70</a></li>
        </div>
        <div class="footer-col">
            <h3>Formations</h3>
            <li><a href="formation-page.html">Bac+5 GAE</a></li>
            <li><a href="formation-page.html">Bac+5 GI</a></li>
            <li><a href="formation-page.html">Bachelor GI </a></li>
            <li><a href="formation-page.html">Bachelor GAE</a></li>
            <li><a href="formation-page.html">Licence Reseaux et Telecoms </a></li>
            <li><a href="formation-page.html">Licence Commerce</a></li>
            <li><a href="formation-page.html">Master MIAGE</a></li>
        </div>
        <div class="footer-col">
            <h3>Liens Utiles</h3>
            <li><a href="inscription.html">Inscription</a></li>
            <li><a href="Telechargements.html">Telechargements</a></li>
            <li><a href="Employabilite.html">Employabilite</a></li>
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
        var swiper = new Swiper(".mySwiper1", {
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
          autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            }
        });
      </script>

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