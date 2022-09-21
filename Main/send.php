<?php

require_once "Config.php";

session_start();

if(isset($_GET['pr'])){

    $nom = $_GET['nom1'];
    $prenom = $_GET['prenom1'];
    $mail = json_encode($_GET['mail1']);
    $tel = $_GET['tel1'];
    $ville = $_GET['ville1'];
    $formation = $_GET['for1'];
    $adress = $_GET['adr1'];

    $stmt = $link->prepare("Insert into mails(type,title,nom,prenom,email,tel,ville,formation,adresse) values ('inscription', 'Inscription premiere annee', ?, ?, ?, ?, ?, ?, ?)");
    
        $stmt->bind_param("sssssss", $nom, $prenom, $mail, $tel, $ville, $formation, $adress);
        $stmt->execute();
        $stmt->close();
        $link->close();

        $to = "contact@esmamaroc.ma";
		$subject = "Inscription en premiere annee";
    	$headers = "From: <noreply@esmamaroc.ac.ma>";
						
		$message = "\nPERSONAL DETAILS"; 
		$message .= "\nNom: " . $nom;
    	$message .= "\nPrenom: " . $prenom;
		$message .= "\nE-mail: " . $mail;
		$message .= "\nTele: " . $tel;
		$message .= "\nVille: " . $ville;
		$message .= "\nFormation: " . $formation;
		$message .= "\Adresse: " . $adress;
		
		$sentOk = mail($to,$subject,$message,$headers);
						
		$user = "$mail";
		$usersubject = "Inscription";
		$userheaders = "From: contact@esmamaroc.ma\n";
		$usermessage = "Votre inscription a ete recue, nous allons vous contacter bientôt,"; 
		mail($user,$usersubject,$usermessage,$userheaders);


        header('location: inscription.php');

}
elseif ($_GET['eq']) {

    $nom = $_GET['nom2'];
    $prenom = $_GET['prenom2'];
    $mail = $_GET['mail2'];
    $tel = $_GET['tel2'];
    $ville = $_GET['ville2'];
    $formation = $_GET['for2'];
    $formation_ob = $_GET['ob2'];
    $adress = $_GET['adr2'];

    $stmt = $link->prepare("Insert into mails(type,title,nom,prenom,email,tel,ville, formation_ach,formation,adresse) values ('inscription', 'Inscription par equivalence', ?, ?, ?, ?, ?, ?, ?, ?");
    
        $stmt->bind_param("sssssss", $nom, $prenom, $mail, $tel, $ville, $formation_ob, $formation, $adress);
        $stmt->execute();
        $stmt->close();
        $link->close();

        $to = "contact@esmamaroc.ma";
		$subject = "Inscription par equivalence";
    	$headers = "From: <noreply@esmamaroc.ac.ma>";
						
		$message = "\nPERSONAL DETAILS"; 
		$message .= "\nNom: " . $nom;
    	$message .= "\nPrenom: " . $prenom;
		$message .= "\nE-mail: " . $mail;
		$message .= "\nTele: " . $tel;
		$message .= "\nVille: " . $ville;
		$message .= "\nFormation: " . $formation;
		$message .= "\nFormation obtenue: " .$formation_ob;
		$message .= "\Adresse: " . $adress;
		
		$sentOk = mail($to,$subject,$message,$headers);
						
		$user = "$mail";
		$usersubject = "Inscription";
		$userheaders = "From: contact@esmamaroc.ma\n";
		$usermessage = "Votre inscription a ete recue, nous allons vous contacter bientôt,"; 
		mail($user,$usersubject,$usermessage,$userheaders);


        header('location: inscription.php');

}
elseif ($_GET['et']) {

    $nom = $_GET['nom3'];
    $prenom = $_GET['prenom3'];
    $mail = $_GET['mail3'];
    $tel = $_GET['tel3'];
    $ville = $_GET['ville3'];
    $formation = $_GET['for3'];
    $formation_ob = $_GET['ob3'];
    $adress = $_GET['adr3'];

    $stmt = $link->prepare("Insert into mails(type,title,nom,prenom,email,tel,ville, formation_ach,formation,adresse) values ('inscription', 'Inscription pour etudiants etrangers', ?, ?, ?, ?, ?, ?, ?, ?");
    
        $stmt->bind_param("sssssss", $nom, $prenom, $mail, $tel, $ville, $formation_ob, $formation, $adress);
        $stmt->execute();
        $stmt->close();
        $link->close();

        $to = "contact@esmamaroc.ma";
		$subject = "Inscription pour etudiants etrangers";
    	$headers = "From: <noreply@esmamaroc.ac.ma>";
						
		$message = "\nPERSONAL DETAILS"; 
		$message .= "\nNom: " . $nom;
    	$message .= "\nPrenom: " . $prenom;
		$message .= "\nE-mail: " . $mail;
		$message .= "\nTele: " . $tel;
		$message .= "\nVille: " . $ville;
		$message .= "\nFormation: " . $formation;
		$message .= "\nFormation obtenue: " .$formation_ob;
		$message .= "\Adresse: " . $adress;
		
		$sentOk = mail($to,$subject,$message,$headers);
						
		$user = "$mail";
		$usersubject = "Inscription";
		$userheaders = "From: contact@esmamaroc.ma\n";
		$usermessage = "Votre inscription a ete recue, nous allons vous contacter bientôt,"; 
		mail($user,$usersubject,$usermessage,$userheaders);



        header('location: inscription.php');

}
elseif ($_GET['fo']) {

    $nom = $_GET['nom4'];
    $prenom = $_GET['prenom4'];
    $mail = $_GET['mail4'];
    $tel = $_GET['tel4'];
    $ville = $_GET['ville4'];
    $formation = $_GET['for4'];
    $formation_ob = $_GET['ob4'];
    $adress = $_GET['adr4'];

    $stmt = $link->prepare("Insert into mails(type,title,nom,prenom,email,tel,ville, formation_ach,formation,adresse) values ('inscription', 'Inscription en formation professionnelle', ?, ?, ?, ?, ?, ?, ?, ?");
    
        $stmt->bind_param("sssssss", $nom, $prenom, $mail, $tel, $ville, $formation_ob, $formation, $adress);
        $stmt->execute();
        $stmt->close();
        $link->close();

		$to = "contact@esmamaroc.ma";
		$subject = "Inscription en formation professionnelle";
    	$headers = "From: <noreply@esmamaroc.ac.ma>";
						
		$message = "\nPERSONAL DETAILS"; 
		$message .= "\nNom: " . $nom;
    	$message .= "\nPrenom: " . $prenom;
		$message .= "\nE-mail: " . $mail;
		$message .= "\nTele: " . $tel;
		$message .= "\nVille: " . $ville;
		$message .= "\nFormation: " . $formation;
		$message .= "\nFormation obtenue: " .$formation_ob;
		$message .= "\Adresse: " . $adress;
		
		$sentOk = mail($to,$subject,$message,$headers);
						
		$user = "$mail";
		$usersubject = "Inscription";
		$userheaders = "From: contact@esmamaroc.ma\n";
		$usermessage = "Votre inscription a ete recue, nous allons vous contacter bientôt,"; 
		mail($user,$usersubject,$usermessage,$userheaders);


        header('location: inscription.php');

}
else{
    echo 'Error';
}

?>