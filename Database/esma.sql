-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221002.e5875764bf
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 05:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esma`
--

-- --------------------------------------------------------

--
-- Table structure for table `formations`
--

CREATE TABLE `formations` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `objectifs` text DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `emplois` text DEFAULT NULL,
  `themes` text DEFAULT NULL,
  `broch` text NOT NULL,
  `type` varchar(5) NOT NULL,
  `inti` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `formations`
--

INSERT INTO `formations` (`id`, `title`, `image`, `description`, `objectifs`, `instructor`, `emplois`, `themes`, `broch`, `type`, `inti`) VALUES
(29, 'B+3 GÉNIE INFORMATIQUE', 'images/genie-info.jpg', '\"<p>B+3 GÉNIE INFORMATIQUE</p>\"', '\"<h3>OBJECTIFS DU CYCLE</h3><p class=\\\"ql-align-justify\\\">Ce Diplôme vise à former des cadres rompus aux Nouvelles Technologies de l’Information et aux Techniques de Développement. L’étudiant maîtrise les deux orientations suivantes :</p><ul><li><strong>Orientation 1.</strong>&nbsp;Architectures Informatiques en Réseaux et Sécurité Informatique sous les plateformes Windows Server et Linux</li><li><strong>Orientation 2.</strong>&nbsp;Conception des S.I. et Développement des Applications Mobiles et Orientées web</li></ul><p class=\\\"ql-align-justify\\\">En plus des aspects technologiques, l’étudiant est initié aux systèmes d’information de gestion, aux outils de décision et aux techniques de communication.</p><p class=\\\"ql-align-justify\\\">Conformément à la réforme de l’enseignement Supérieur, le Bachelor comprend des modules dédiés aux Soft Skills à savoir le développement Personnel, le Développement Social et le Développement Professionnel.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>DÉBOUCHES ET EMPLOIS</h3><p class=\\\"ql-align-justify\\\">Le Lauréat de ce Bachelor peut occuper le poste de Responsable de Développement des applications orientées Web, de Responsable Informatique d’une PME, de Responsable Parc Matériel Informatique ou le poste d’Administrateur Système et Sécurité Informatique.</p><p><br></p>\"', '\"<h3>THÈMES MAJEURS</h3><ul><li>Architecture Informatique</li><li>Réseaux Informatiques (CCNA 1 à 4)</li><li>Administration sous Windows Server</li><li>Administration sous Linux</li><li>Sécurité Informatique</li><li>Algorithmique et Algorithmique Avancée</li><li>Programmation sous C et C++, Programmation en JAVA</li><li>Programmation sous Dot Net</li><li>Normes HTML et JavaScript et CSS</li><li>Programmation web en ASP, Programmation Web sous PHP</li><li>SGBDR sous SQL Server et Oracle</li><li>Modélisation des Systèmes d’information</li><li>Fondamentaux de Gestion</li><li>Outils de Décision</li><li>Communication en Anglais et en Français</li></ul><p><br></p>\"', 'pdfs/plaquette_esma_gi.pdf', 'acc', 'info'),
(36, 'B+3 GESTION & ADMINISTRATION', 'images/manag.jpg', '\"<p>B+3 GESTION &amp', '\"<h3>OBJECTIFS DU CYCLE</h3><p class=\\\"ql-align-justify\\\">Ce Diplôme vise à former des cadres ayant de réelles compétences en Gestion et Administration des entreprises. Le lauréat de ce Bachelor dispose à la fois d’une vision systémique globale sur le fonctionnement des entreprises, et une vision orientée métier, à travers les deux options de spécialisation suivantes&nbsp;:</p><p class=\\\"ql-align-justify\\\"><br></p><ul><li><strong>Option 1.</strong>&nbsp;Marketing Vente et Distribution</li><li><strong>Option 2.</strong>&nbsp;Comptabilité Finance Audit</li></ul><p><br></p><p class=\\\"ql-align-justify\\\">La formation permet à l’étudiant de s’intéresser aux interactions entre la Gestion et l’Économie, et lui permet de s’initier aux Systèmes d’Information, aux Outils de Décision et aux Techniques de Communication.</p><p class=\\\"ql-align-justify\\\">Conformément à la réforme de l’enseignement Supérieur, le Bachelor comprend des modules dédiés aux Soft Skills à savoir le développement Personnel, le Développement Social et le Développement Professionnel.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3 class=\\\"ql-align-justify\\\">DÉBOUCHES ET EMPLOIS</h3><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Le Lauréat du Bachelor GAE occupe le poste de Responsable en l’une des fonctions suivantes&nbsp;: Comptabilité Finance, Audit et Contrôle de Gestion, Marketing et Vente, Achat et Logistique, etc. Ceci dans les divers secteurs d’activités.</p><p><br></p>\"', '\"<h3 class=\\\"ql-align-justify\\\">THÈMES MAJEURS</h3><ul><li>Comptabilité Générale et des Sociétés</li><li>Comptabilité Analytique et Contrôle de Gestion</li><li>Analyse et Gestion Financières</li><li>Audit et Contrôle Interne</li><li>Marketing Opérationnel et Stratégique</li><li>Marketing Vente et Digital</li><li>Relation Client et Etudes de Marchés</li><li>Stratégie et Diagnostic Stratégique</li><li>Management des Organisation et Structures</li><li>Gestion des Ressources Humaines</li><li>Management Logistique</li><li>ERP et Systèmes d’information</li><li>Outils de Décision</li><li>Anglais et en Français</li><li>Soft Skills</li></ul><p><br></p>\"', 'pdfs/000Plaquette-Cycle-Bac3-GAE-Fin-30-Janvier-2018.pdf', 'acc', 'man'),
(42, 'B+3 MANAGEMENT INDUS. & LOGISTIQUE', 'images/manag.jpg', '\"<p>B+3 MANAGEMENT INDUS. &amp', '\"<h3>OBJECTIF DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Le Diplôme Accrédité Bac+3 Management Industriel est une formation unique et innovante qui vise à former des jeunes cadres Experts de l’Organisation Opérationnelle&nbsp;et Logistique de&nbsp;l’entreprise. Les Lauréats de la formation s’intéressent à la Gestion des Achats, la Gestion de la Production et des Chantiers, la Gestion des Stocks en lien avec la Distribution. Ils maîtrisent les outils informatiques ERP et les Systèmes d’information.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>LES MÉTIERS VISES</h3><p class=\\\"ql-align-justify\\\">Les lauréats de cette formation occupent des postes à responsabilité au sein des grandes entreprises et groupes comme les postes suivants :</p><ul><li>Responsable Logistique</li><li>Responsable Stock et Achat</li><li>Responsable Activités de Production</li><li>Coordinateur des Chantiers et de leurs déroulement au sein des entreprises industrielles,</li><li>Responsable Qualité,</li><li>Responsable de Vente ou&nbsp;au sein de la Grande Distribution</li></ul><p><br></p>\"', '\"<h3>&nbsp;LES MODULES&nbsp;CLÉS DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Les principaux modules de la formation sont&nbsp;:</p><ul><li>Management des Organisations,</li><li>Organisation&nbsp;Comptable et Financière des Entreprises</li><li>Marketing Mix et Vente</li><li>Organisation des Chaînes Logistique</li><li>Organisation des Flux de Production et Gestion de Production (Etudes de cas)</li><li>Management des Achats</li><li>Management Qualité et Certification</li><li>Systèmes d’Information, SGBDR et Informatique</li><li>Gestion Informatisée et ERP</li><li>Modélisation et Simulation des Flux Logistiques</li><li>Communication</li><li>Outils d’aide à la Décision</li></ul><p><br></p>\"', 'pdfs/Plaq-B3-MIL.pdf', 'acc', 'man'),
(37, 'B+5 COMPTABILITÉ FINANCE AUDIT', 'images/manag.jpg', '\"<p>B+5 COMPTABILITÉ FINANCE AUDIT</p>\"', '\"<h3>OBJECTIFS DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Le Diplôme Bac+5 Accrédité Comptabilité Finance et Audit est&nbsp;similaire au célèbre&nbsp;<em>Master CCA</em>. Il vise à former des Experts en Organisation Comptable et Fiscale, Financière et en Audit. Les lauréats de ce Diplôme sont capables de : mettre en place : (i) Une Organisation Comptable, Juridique et Fiscale fiables, en s’appuyant sur les ERP, (ii) Une Structure Budgétaire avec une maîtrise des coûts de revient, (iii) Une Planification optimale des flux financiers.</p><p class=\\\"ql-align-justify\\\">Ils sont également capables de mener des Audits pour s’assurer du bon fonctionnement des procédures.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISES</h3><p class=\\\"ql-align-justify\\\">Les postes visés pour les lauréats de cette formation sont les suivants :</p><ul><li>Chargés de Dossiers Comptables au sein de Cabinets d’Expertise Comptable</li><li>Responsable Administratif et Financier d’une PME</li><li>Consultant en Organisation Financière, Fiscale et Juridique</li><li>Haut cadre au sein du secteur Bancaire</li></ul><p><br></p>\"', '\"<h3>MODULES DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">La Formation traite des thèmes majeurs suivants :</p><ul><li>Organisation Comptable et ERP de comptabilité</li><li>Droit des Sociétés, Droit Fiscal et Télé-Déclarations</li><li>Analyse Financière</li><li>Gestion Financière</li><li>Système d’Information Financier,</li><li>Audit Comptable et Financier, Audit Interne</li><li>Contrôle de Gestion Avancé et Gestion Budgétaire</li><li>Pilotage et Tableaux de Bord</li><li>Organisation et Gouvernance des Systèmes d’Info.</li><li>Stratégie et Performance</li><li>Outils de Décision</li><li>Communication</li><li>Projet de fin d’études</li></ul><p><br></p>\"', 'pdfs/001Plaquette-Bac5-CFA.pdf', 'acc', 'man'),
(38, 'B+5 MANAGEMENT DES RESSOURCES HUM', 'images/manag.jpg', '\"<p>B+5 MANAGEMENT DES RESSOURCES HUM</p>\"', '\"<h3>OBJECTIFS DE LA FORMATION</h3><p><br></p><p class=\\\"ql-align-justify\\\">Le Diplôme Bac+5 Accrédité Management des Ressources Humaines vise à former des jeunes experts capables d’assurer la pérennité et l’évolution des Compétences des Ressources Humaines de l’entreprise, dans un cadre d’optimisation des Postes et Emplois et de la Masse Salariale induite par la fonction. Loin de gérer le simple aspect administratif de la fonction, le lauréat de cette formation&nbsp;est capable de&nbsp;définir une Stratégie fondée sur le Développement Humain et Social de l’entreprise, en respect avec le cadre légal et juridique.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISÉS</h3><p class=\\\"ql-align-justify\\\">Comme l’a montré l’expérience des anciens lauréats de l’ESMA,&nbsp;Les postes que peuvent occuper les lauréats de cette formation sont divers et concernent tous les secteurs d’activités clés, dont les postes suivants :</p><ul><li>Responsable au sein du Département R.H.&nbsp;au sein d’un grand groupe</li><li>Responsable R.H. d’une PME</li><li>Responsable Qualité et RSE</li><li>Consultant en Organisation et R.H. au sein de Grands Cabinets</li></ul><p><br></p>\"', '\"<h3>MODULES DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">La Formation traite des thèmes majeurs suivants :</p><ul><li>Emplois et Fonctions de la GRH 1</li><li>Emplois et Fonctions de la GRH 2</li><li>Management Avancé et Complexité</li><li>Organisation et Systèmes d’Information RH</li><li>Droit de Travail et Social</li><li>Contrôle de Gestion Social et Audit Social</li><li>Gestion Prévisionnelle des Emplois et Compétences</li><li>ERP de la Paie et Tableau de bord Social</li><li>Communication</li><li>Projet de fin d’études</li></ul><p><br></p>\"', 'pdfs/001Plaquette-Bac5-MRH.pdf', 'acc', 'man'),
(39, 'B+5 MARKETING DISTRIBUTION &LOGISTIQUE', 'images/manag.jpg', '\"<p>B+5 MARKETING DISTRIBUTION &amp', '\"<h3>OBJECTIFS</h3><p class=\\\"ql-align-justify\\\">Le Diplôme Bac+5&nbsp;Accrédité Marketing Distribution et Logistique&nbsp;<em>MDL</em>&nbsp;est un Diplôme Unique qui vise à former des Experts en&nbsp;Management des Chaînes Logistiques en Lien avec le Marketing Distribution. Les Lauréats de cette formation sont capables de gérer les divers processus complexes de la logistique, à savoir les Achats, la Production, le la Logistique Internationale, les Relations Inter-Entreprises et la stratégie de la Distribution.</p><p class=\\\"ql-align-justify\\\">La Formation innove et intègre les concepts de Modélisation,&nbsp;de Simulation des processus logistiques et les Systèmes d’Information et ERP à travers l’étude des fonctions clés d’Odoo 9.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISÉS</h3><p class=\\\"ql-align-justify\\\">Les lauréats de cette formation occupent les postes suivants</p><ul><li>Responsable Distribution au sein d’une grande Surface</li><li>Coordinateur Logistique au sein d’un Groupe Industriel ou de Distribution</li><li>Responsable Achat</li><li>Responsable de Production</li><li>Responsable Assurance Qualité</li><li>Consultant en Management Logistique</li></ul><p><br></p>\"', '\"<h3>MODULES DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">La Formation traite des modules majeurs suivants :</p><ul><li>Management de la chaîne logistique</li><li>Modélisation et Simulation logistique</li><li>Marketing Stratégique et Marketing Distribution</li><li>Management des Achats</li><li>Management Qualité</li><li>Management de Production</li><li>Management avancé des Stocks</li><li>Prévisions de Ventes</li><li>Systèmes d’Information Logistique et SGBDR</li><li>ERP Logistique sous Odoo 9</li><li>Communication</li><li>Projet de fin d’études</li></ul><p><br></p>\"', 'pdfs/001Plaquette-Bac5-MDL.pdf', 'acc', 'man'),
(33, 'B+5 RÉSEAUX ET SÉCURITÉ', 'images/genie-info.jpg', '\"<p>B+5 RÉSEAUX ET SÉCURITÉ</p>\"', '\"<h3>OBJECTIF DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Le Diplôme Accrédité&nbsp;Bac+5 G.I. Spécialité Ingénierie des Réseaux et Sécurité vise à former des jeunes ingénieurs experts de l’Administration des Architectures Informatiques en Réseau et de la Sécurité des S.I. Les Lauréats disposent de compétences pou les deux plateformes majeurs Linux et Windows Server.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">La formation permet à l’étudiant de préparer les certificats CISCO CCNA1 à CCNA4.</p><p class=\\\"ql-align-justify\\\">Un point fort de la formation est de permettre à l’étudiant de préparer en double-diplôme, le Master&nbsp;M1/M2 d’Etat Français&nbsp;MIAGE spécialité&nbsp;&nbsp;Systèmes d’Information et Informatique Nomades&nbsp;<strong>SIIN</strong>&nbsp;.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Les étudiants sont amenés à réaliser différents projets techniques et de passer un Stage en entreprise.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISÉS</h3><p class=\\\"ql-align-justify\\\">Les lauréats de la formation&nbsp;peuvent occuper les postes suivants :</p><ul><li>Responsable R&amp;T&nbsp;au sein du service Informatique d’un grand groupe</li><li>Responsable Réseaux et Sécurité au sein d’une PME</li><li>Administrateur Système et Web Service</li><li>Cadre au sein des Groupes de Télécommunication (Maroc Télécom, Inwi, RP+, Meditel,…etc)</li><li>Consultant en Réseaux Télécoms et Mobile</li><li>Ingénieur d’affaire</li></ul><p class=\\\"ql-align-justify\\\">Les anciens lauréats de cette formation occupent des postes à Responsabilité dans d’importants groupes tels que Maroc Télécom, Maroc Yakhting, Inwi, Kenza Télécom, R.P Plus, 118 218, EDF GDF France, Logica, Groupe Sefiani.</p><p><br></p>\"', '\"<h3 class=\\\"ql-align-justify\\\">MODULES DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Les modules clés de la formation sont les suivants :</p><ul><li>Administration avancée sous Linux</li><li>Administration avancée sous Windows Server</li><li>Sécurité informatique</li><li>Réseaux Nomades et Haut Débit</li><li>Technologies Récentes des Réseaux</li><li>Gestion Distante</li><li>Réseaux et Télécoms</li><li>Préparation des Certificats CISCO CCNA 1 à CCNA 4</li><li>Techniques de Communication</li><li>Gestion d’entreprise</li></ul><p><br></p>\"', 'pdfs/plaquette_esma_gi_2.pdf', 'acc', 'info'),
(34, 'BAC+5 G.I. – DEVELOPPEMENT ET NET', 'images/genie-info.jpg', '\"<p>BAC+5 G.I. – DEVELOPPEMENT ET NET</p>\"', '\"<h3>OBJECTIF DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Le Diplôme Accrédité Bac+5 Ingénierie de Développement et Web Services vise à former des Ingénieurs (ou équivalent) dans le domaine de Développement d’Applications Mobiles et/ou Réparties sur diverses plateformes informatiques (PHP/MYSQL, PYTHON, JEE,…etc). Loin d’être un simple technicien, le lauréat de cette formation dispose de réelles compétences de Management des Projets d’informatisation, intégrant Relevé des Besoins, Gestion des équipes de Développement, Assurance Qualité,…etc. Le lauréat est également initié aux concepts clés de la gestion des entreprises.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Les lauréats de cette formation peuvent préparer en Double Diplôme, le Master d’Etat Français&nbsp;MIAGE (M1 et M2).</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Les étudiants sont amenés à réaliser différentes activités de Développement et mènent plusieurs projets techniques.&nbsp;L’étudiant passe également un Stage de développement en entreprise, qui lui permet de mettre en place un ERP ou de développer une application spécifique pour le compte de l’entreprise où il passe le Stage.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISES</h3><p class=\\\"ql-align-justify\\\">Les Lauréats de cette formation occupent Les postes suivants :</p><p class=\\\"ql-align-justify\\\"><br></p><ul><li>Responsable Informatique au sein d’une PME</li><li>Responsable de Développement d’applications au sein dune SS2I</li><li>Consultant en S.I. au sein d’importants Cabinets de Conseil à dimension nationale</li><li>Enseignant au sein des Universités Privées</li><li>Cadre au sein des groupes de Télécoms</li><li>Fondateur d’entreprise</li></ul><p class=\\\"ql-align-justify\\\">Nos anciens lauréats&nbsp;occupent des postes à responsabilité dans d’importants groupes tels que Maroc Télécom, Maroc Yakhting, Inwi, Kenza Télécom,.RP Plus, 118 218, EDF GDF France, Logica, Groupe Sefiani.</p><p><br></p>\"', '\"<h3>MODULES DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Les modules clés de la formation sont les suivants :</p><ul><li>Développement Réparti sous la plateforme JEE</li><li>Développement Mobile</li><li>Développement des applications orientées Web Service sous ASP et PHP5, Python</li><li>Systèmes Experts</li><li>Modélisation Orientée Objet et Agent des S.I</li><li>Cloud Computing</li><li>Virtualisation</li><li>Maîtrise des SGBDR Oracle, SQL Server et MySQL</li><li>Management des Projets et Gouvernance des SI</li><li>Techniques de Communication</li><li>Gestion d’entreprise</li></ul><p><br></p>\"', 'pdfs/plaquette_esma_gi_2.pdf', 'acc', 'info'),
(45, 'EXECUTIVE MBA FINANCE', 'images/manag.jpg', '\"<p>EXECUTIVE MBA FINANCE</p>\"', '\"<h2><strong>OBJECTIFS DU MBA</strong></h2><p>L’Executive&nbsp;<strong>MBA (Master in Business Administration)</strong>&nbsp;<strong>Finance&nbsp;</strong>est un Diplôme Bac+5 de&nbsp;<strong>l’ESC Clermont</strong>, délivré à Marrakech en partenariat avec&nbsp;<strong>ESMA.&nbsp;</strong></p><p>Le MBA Finance à pour objectif de spécialiser des hauts cadres d’entreprises, visant des Postes de Directeurs dans les domaines de l’Audit, de la Finance et du Contrôle de Gestion, au sein des Grands Groupes à dimension internationale. La formation est programmée en Cours de Soir et Week-end et est animée par une équipe d’enseignants Franco-Marocaine.</p>\"', 'Jihad Noufisse', '\"<h2><strong>PUBLIC CONCERNE</strong></h2><p class=\\\"ql-align-justify\\\">– Cadres d’entreprises titulaires d’un Bac +4 en Economie ou en Gestion.</p><p class=\\\"ql-align-justify\\\">– Cadres ayant une Licence, une Licence Professionnelle ou un Bac+3 en Economie ou Gestion qui peuvent justifier d’une expérience professionnelle suffisante dans les métiers de la Comptabilité-Fiscalité, du Contrôle de Gestion et de la Finance.</p><p><br></p>\"', '\"<h2><strong>MODULES MAJEURS</strong></h2><p class=\\\"ql-align-justify\\\"><strong>Communication et Recherche académique</strong></p><p class=\\\"ql-align-justify\\\"><strong>Outils de Décision et management des projets</strong></p><p class=\\\"ql-align-justify\\\"><strong>Droit Fiscal Approfondi, Droit Financier</strong></p><p class=\\\"ql-align-justify\\\"><strong>Stratégie, Systèmes d’Information, ERP Finance</strong></p><p class=\\\"ql-align-justify\\\"><strong>Information Comptable, Audit et Consolidation</strong></p><ul><li>Comptes Consolidés, Norme IFRS</li><li>Système d’Information Comptable et Financier</li><li>Audit Comptable et Financier, Comptabilité Approfondie</li></ul><p class=\\\"ql-align-justify\\\"><strong>Finance d’Entreprise 1</strong></p><ul><li>Investissement et Financement, Finance de Marché</li><li>Evaluation, Risque et Rentabilité de l’entreprise</li></ul><p class=\\\"ql-align-justify\\\"><strong>Finance d’Entreprise 2</strong></p><ul><li>Gestion de Trésorerie, Diagnostic Financier Avancé</li><li>Gestion Budgétaire, Ingénierie Financière</li></ul><p class=\\\"ql-align-justify\\\"><strong>Grand Oral et Stage&nbsp;</strong>(Mission de 3 mois)</p><p><br></p>\"', 'pdfs/0Plquette-MBA-ESC-27-Avril-2018.compressed.pdf', 'fr', 'man'),
(44, 'LICENCE D’ETAT CONTRÔLE DE GESTION', 'images/manag.jpg', '\"<p>LICENCE D’ETAT CONTRÔLE DE GESTION</p>\"', '\"<h3><strong>OBJECTIF DE LA FORMATION&nbsp;</strong></h3><p class=\\\"ql-align-justify\\\">La Licence&nbsp;<strong>Métiers&nbsp;de la comptabilité</strong>&nbsp;<strong>option Contrôle de Gestion</strong>, est un&nbsp;<strong>Diplôme d’Etat Bac+3</strong>&nbsp;délivré par l’Université Française&nbsp;<strong>Sorbonne Paris Cité</strong>. La Licence forme des jeunes cadres, aux métiers liés au Système d’Information Comptable et Financier et au Contrôle de Gestion.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Le point fort de cette Licence est de permettre aux lauréats de bénéficier de la dispense des Cinq Unités de valeur des épreuves du Diplôme de Comptabilité Générale&nbsp;<strong>DCG</strong>&nbsp;suivantes :</p><ul><li>Unité de Valeur 11- Contrôle de Gestion</li><li>Unité de Valeur 8 – Systèmes d’Information</li><li>Unité de Valeur 9-Comptabilité Générale</li><li>Unité de Valeur 12-Anglais</li><li>Unité de Valeur 13-Relations professionnelles.</li></ul><p><br></p><p class=\\\"ql-align-justify\\\">La Formation intègre un projet tuteuré de 150 heures centré sur la réalisation d’une mission à caractère professionnalisant. Elle intègre également un&nbsp;stage d’une durée de 12 semaines qui fait l’objet d’un mémoire de stage, et d’une soutenance.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>COMPÉTENCES&nbsp;VISÉES</h3><p class=\\\"ql-align-justify\\\">Les compétences visées par la formation sont :</p><ul><li>Maîtrise de l’Information Comptable et Financière et utilisation d’un progiciel de comptabilité,</li><li>Gestion des dossiers clients et des télé-déclarations au sein des cabinets/fiduciaires de comptabilité,</li><li>Utilisation de différentes méthodes de calcul des coûts pour différents types de décisions,</li><li>Adaptation de l’organisation pour répondre à un nouveau problème de gestion,</li><li>Réalisation d’un budget, de travaux de consolidation budgétaire et de travaux de contrôle budgétaire,</li><li>Exploitation des résultats de la procédure budgétaire et élaboration d’un tableau de bord,</li><li>…etc</li></ul><p><br></p>\"', '\"<h3><strong>MODULES DE LA FORMATION</strong></h3><p class=\\\"ql-align-justify\\\">Le Diplôme comprend&nbsp;<em>6 Unités d’Enseignement</em>&nbsp;«&nbsp;U.E&nbsp;» et est organisé en deux semestres. La formation intègre également un enseignement d’anglais appliqué aux affaires. Pour les jeunes cadres d’entreprises, la formation se déroule le Vendredi soir, Samedi et Dimanche matin. La Formation se structure&nbsp;comme suit :</p><p class=\\\"ql-align-justify\\\"><strong>Semestre 1</strong></p><ul><li>UE 3 Comptabilité Générale (12 ECTS)</li><li>UE 2 Système d’information de gestion – Partie 1 (12 ECTS)</li><li>UE 1 Contrôle de gestion Partie 1 (12 ECTS)</li><li>UE 6 projet tuteuré (15 ECTS)</li></ul><p class=\\\"ql-align-justify\\\"><strong>Semestre 2</strong></p><ul><li>UE 1 Contrôle de gestion Partie 2 (12 ECTS)</li><li>UE 2 Système d’information de gestion – Partie 2 (12 ECTS)</li><li>UE 4 Anglais appliqué aux affaires (5 ECTS)</li><li>UE 6 stage de 12 semaines (10 ECTS)</li></ul><p><br></p>\"', 'pdfs/000Plaquette-Licence-CDG-Mini-Finale-30-Janv-2018.pdf', 'fr', 'man'),
(40, 'LICENCE D’ETAT RT', 'images/genie-info.jpg', '\"<p>LICENCE D’ETAT RT</p>\"', '\"<h3><strong>OBJECTIF DE LA FORMATION&nbsp;</strong></h3><p class=\\\"ql-align-justify\\\">La Licence Réseaux et Télécoms est un Diplôme d’Etat Français qui vise à former de jeunes experts pour&nbsp;répondre à un besoin croissant dans les entreprises en termes de qualifications nouvelles dans les deux&nbsp;domaines :&nbsp;<strong>(i)</strong>&nbsp;Administration et Sécurité des Architectures Informatiques en Réseau,&nbsp;<strong>(ii)</strong>&nbsp;Développement d’applications orientées Web.&nbsp;&nbsp;La Licence Réseaux et Télécoms s’adresse aux titulaires d’un diplôme Bac+2 scientifique qui souhaitent s’orienter vers les métiers de l’informatique.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">L’atout majeur de cette Licence est de permettre aux lauréats de préparer les fameux Certificats CISCO (CCNA1 à CCNA4) devenant ainsi Expert Certifié en Administration des Réseaux.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Les lauréats de la licence Réseaux et Télécoms peuvent préparer le Master MIAGE M1 et M2 de l’Université Picardie Jules Verne.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3><strong>MÉTIERS&nbsp;VISÉS</strong></h3><p class=\\\"ql-align-justify\\\">Les lauréats de cette licence peuvent exercer dans divers secteurs comme l’ Industrie, les Télécommunications, le&nbsp;Tourisme, le Service et les Transports.&nbsp;Ils peuvent occuper les postes de :</p><ul><li>Contrôleur ou Administrateur de réseaux,</li><li>Responsable technologies de l’information et de la communication,</li><li>Analyste programmateur d’applications, ou développeur de projets multimédias</li><li>Webmaster</li></ul><p><br></p>\"', '\"<h3><strong>MODULES DE LA FORMATION&nbsp', 'pdfs/000Plaquette-Licence-Info-Mini-Finale-30-Janv-2018.pdf', 'fr', 'info'),
(43, 'MASTER D’ETAT MIAGE M1/M2', 'images/genie-info.jpg', '\"<p>MASTER D’ETAT MIAGE M1/M2</p>\"', '\"<h3>OBJECTIF DE LA FORMATION</h3><p class=\\\"ql-align-justify\\\">Le&nbsp;Master&nbsp;<strong>MIAGE&nbsp;</strong>Systèmes d’Information et Informatique Nomade&nbsp;<strong>SIIN&nbsp;</strong>est un Diplôme&nbsp;Bac +5 d’Etat délivré par&nbsp;<em>l’Université Picardie Jules Verne.</em>&nbsp;Il vise à former des ingénieurs experts des domaines de Développement des Applications Réparties et Mobiles avec prise en charge des aspects de Sécurité.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">Le lauréat du Master Miage dispose de réelles compétences de gestion des projets informatiques et est un réel Intégrateur spécialiste de l’Urbanisation des S.I en lien avec l’organisation des entreprises.&nbsp;En plus des aspects de Software, l’étudiant s’intéresse à l’administration des plateformes informatiques en réseau, plateformes fondées sur le Web Service.</p><p class=\\\"ql-align-justify\\\"><br></p><p class=\\\"ql-align-justify\\\">L’étudiant est tenu de mener différents projets et de passer un Stage de fin d’Etudes, éléments clés des méthodes d’apprentissage au sein de l’établissement.</p><p><br></p>\"', 'Jihad Noufisse', '\"<h3>MÉTIERS VISÉS</h3><ul><li>Architecte des systèmes et réseaux informatiques</li><li>Administrateur des systèmes et des réseaux informatiques</li><li>Concepteur</li><li>Consultant en systèmes et réseaux</li><li>Expert en développement d’applications distribuées</li><li>Expert en convergence Voix – Données</li><li>Spécialiste des architectures basées sur Internet</li></ul><p><br></p>\"', '\"<h3>MODULES DE LA FORMATION</h3><h4>MASTER M1</h4><ul><li>Réseaux et protocoles</li><li>Analyse et fouille des données</li><li>Processus stochastique et simulation</li><li>Bases de Données Avancées</li><li>Architecture client serveur</li><li>Projet de programmation, Projet de conception</li><li>Méthodes d’Analyse et de conception orientées objet</li><li>Ingénierie de logiciel</li><li>Intégration d’application</li><li>Intelligence artificielle ou&nbsp;Unix Avancé</li><li>Gestion Financière et contrôle de gestion</li><li>Gestion de la production</li><li>ERP</li><li>Anglais</li><li>Etudes et Recherche</li><li>Projet professionnel</li></ul><h4>MASTER M2</h4><ul><li>Sécurité des Systèmes d’Information</li><li>Ingénierie des systèmes à base de services Web</li><li>Multimédia et Réseaux</li><li>Infographie et image numérique</li><li>Gestion des Réseaux</li><li>Pratiques Professionnelles du Multimédia et de l’internet</li><li>Technologies récentes des Réseaux</li><li>Haut Débit et Nomadisme</li><li>Développement d’applications pour terminaux Mobiles</li><li>GRH</li><li>e-commerce/e-formation</li><li>Stage Professionnel 4 mois en entreprises</li></ul><p><br></p>\"', 'pdfs/000Plaquette-Mini-Miage-M1M2-Fev-2018.pdf', 'fr', 'info');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mail_id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL CHECK (`type` in ('contact','inscription')),
  `title` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `ville` varchar(60) DEFAULT NULL,
  `formation_ach` varchar(120) DEFAULT NULL,
  `formation` varchar(120) DEFAULT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `section`, `content`) VALUES
(1, 'acceuil', 'slider', '[\n{\n	\"image\": \"../images/image1\",\n	\"titre\": \"La voie vers la reussite\",\n	\"text\": \"Depuis 25 ans, l\'Institut Sup\\u00e9rieur ESMA n\'a cess\\u00e9 d\'innover pour proposer\\u00e0 ses \\u00e9tudiants, des Formations et des Dipl\\u00f4mes Accr\\u00e9dit\\u00e9s,dans des sp\\u00e9cialit\\u00e9s fortement demand\\u00e9es par les entreprises.\",\n	\"buttons\": [\n		[\n		{\n			\"text\": \"voir plus\",\n			\"color\": \"blue\",\n			\"dest\": \"presentation.html\"\n		}],\n		[\n		{\n			\"text\": \"tour\",\n			\"dest\": \"tour.html\",\n			\"color\": \"orange\"\n		}]\n	]\n},\n{\n	\"image\": \"../images/image1\",\n	\"titre\": \"La voie vers la reussite\",\n	\"text\": \"Depuis 25 ans, l\'Institut Sup\\u00e9rieur ESMA n\'a cess\\u00e9 d\'innover pour proposer\\u00e0 ses \\u00e9tudiants, des Formations et des Dipl\\u00f4mes Accr\\u00e9dit\\u00e9s,dans des sp\\u00e9cialit\\u00e9s fortement demand\\u00e9es par les entreprises.\",\n	\"buttons\": [\n		[\n		{\n			\"text\": \"voir plus\",\n			\"color\": \"blue\",\n			\"dest\": \"presentation.html\"\n		}],\n		[\n		{\n			\"text\": \"tour\",\n			\"dest\": \"tour.html\",\n			\"color\": \"orange\"\n		}]\n	]\n},\n{\n	\"image\": \"../images/image1\",\n	\"titre\": \"La voie vers la reussite\",\n	\"text\": \"Depuis 25 ans, l\'Institut Sup\\u00e9rieur ESMA n\'a cess\\u00e9 d\'innover pour proposer\\u00e0 ses \\u00e9tudiants, des Formations et des Dipl\\u00f4mes Accr\\u00e9dit\\u00e9s,dans des sp\\u00e9cialit\\u00e9s fortement demand\\u00e9es par les entreprises.\",\n	\"buttons\": [\n		[\n		{\n			\"text\": \"voir plus\",\n			\"color\": \"blue\",\n			\"dest\": \"presentation.html\"\n		}],\n		[\n		{\n			\"text\": \"tour\",\n			\"dest\": \"tour.html\",\n			\"color\": \"orange\"\n		}]\n	]\n}]'),
(2, 'acceuil', 'values', '{\"titre\": \"Nos valeurs\",\"text\": \"On assure que les etudiants qui nous rejoignent se sentent immédiatement plongés dans l\'apprentissage concret et la pratique de leur futur métier.\",\"values\":[{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"},{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"},{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"}]}'),
(3, 'acceuil', 'filiers', '{\"titre\": \"Nos Filieres\",\"text\": \"ESMA propose à ses étudiants, des Formations et des Diplômes Accrédités, dans des spécialités fortement demandées par les entreprises.\"}'),
(4, 'acceuil', 'inscription', '{\r\n    \"sous-titre\": \"Remplissez le formulaire et nous vous appellerons.\",\r\n    \"titre\": \"Inscription 2022-2023\",\r\n    \"date\":\"100\"\r\n}'),
(5, 'acceuil', 'partners', '{\r\n    \"titre\": \"Nos Partenaires\",\r\n    \"text\":\"ESMA, c\'est un Important Réseau de Partenaires Universitaires Internationaux\",\r\n    \"partners\":[\"images/Partners/cnam.png\",\"images/Partners/ulco.png\",\"images/Partners/Uspn.png\",\"images/Partners/picardi.png\"]\r\n}'),
(6, 'presentation', 'title', '{\r\n    \"titre\": \"Presentation\",\r\n    \"image\": \"images/back3.jpg\"\r\n}'),
(7, 'presentation', 'section1', '{\r\n    \"titre\": \"ESMA la voie vers la reussite\",\r\n    \"text\": \"Depuis 21 ans, l’Institut Supérieur ESMA n’a cessé d’innover pour proposer à ses étudiants, des Formations et des Diplômes Accrédités, dans des spécialités fortement demandées par les entreprises.<br>Pour 2018-2019, ESMA met en place divers Diplômes Bac +3 et Bac +5 uniques à Marrakech, suivants : (i) Bac +5 Accrédité Spécialité Comptabilité Finance Audit (Diplôme Similaire au Master CCA), (ii) Bac +5 Accrédité Spécialité Management Logistique et Marketing Distribution, (iii) Bac +3 Accrédité Spécialité Management Industriel<br>De par la dimension des Systèmes d’Information, ESMA a mis en place depuis 2001, des Diplômes Accrédités Bac +5 et Bac +3 en Génie Informatique et Ingénierie des Réseaux et Télécoms.<br>ESMA, c’est aussi un Important Réseau de Partenaires Universitaires qui a permis la délocalisation depuis 1998, des  Masters et Licences d’Etat Français suivants : (i) Licence Métiers de la Comptabilité – Contrôle de Gestion, (ii) Master MIAGE M1 et M2  Méthodes Informatiques Appliquées à la Gestion option SIIN, (iii) Licence d’Etat Réseaux et Télécoms.\",\r\n    \"image\": \"images/pres1.jpg\"\r\n}'),
(8, 'presentation', 'section2', '{\r\n    \"text\": \"Depuis 2017, ESMA est partenaire avec l’honorable Ecole de commerce Française ESC Clermont-Ferrand. Ce partenariat ouvre la voie à nos étudiants vers l’accès aux Bachelors et Masters de l’ESC, particulièrement le Master d’Expertise Comptable.Grâce à une Démarche Pédagogique Innovante et à la Qualité de nos formation , plusieurs de nos lauréats ont pu finaliser des Thèses de Doctorat au sein d’honorables Universités Françaises et sont Enseignants Universitaires ou Hauts Cadres dans des groupes Internationaux.Nous vous invitons à rejoindre notre institut, préparant ainsi votre avenir et la possibilité de rejoindre les plus grandes entreprises nationales et internationales à l’image de nos ex-lauréats.\",\r\n    \"image\": \"images/pres2.jpg\"\r\n}'),
(9, 'presentation', 'values', '{\"titre\": \"Nos valeurs\",\"text\": \"On assure que les etudiants qui nous rejoignent se sentent immédiatement plongés dans l\'apprentissage concret et la pratique de leur futur métier.\",\"values\":[{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"},{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"},{\"titre\":\"Apprentissage professionnelle\",\"text\":\"Les étudiants d\'ESMA consacrent leur temps à l\'école à la réalisation de projets avant de rejoindre une entreprise en stage.\"}]}'),
(10, 'presentation', 'partners', '{\r\n    \"titre\": \"Approuve par\",\r\n    \"partners\":[\"images/Partners/cnam.png\",\"images/Partners/ulco.png\",\"images/Partners/Uspn.png\",\"images/Partners/picardi.png\"]\r\n}'),
(11, 'diplomes_acc', 'title', '{\r\n    \"titre\": \"Diplomes Accredites\",\r\n    \"image\": \"images/back3.jpg\"\r\n}'),
(12, 'diplomes_acc', 'section1', '{\"titre\" : \"Nos Diplomes\"}'),
(13, 'diplomes_fr', 'title', '{\r\n    \"titre\": \"Diplomes d\'etat francais\",\r\n    \"image\": \"images/back3.jpg\"\r\n}'),
(14, 'diplomes_fr', 'section1', '{\"titre\" : \"Nos Diplomes\"}'),
(15, 'contact', 'title', '{\r\n    \"titre\": \"Contact\",\r\n    \"image\": \"images/back3.jpg\"\r\n}'),
(16, 'contact', 'section1', '{\r\n    \"titre\": \"Contactez nous\",\r\n    \"text\": \"Vous cherchez de l\'aide ? Remplissez le formulaire et commencez une nouvelle aventure\",\r\n    \"adr_titre\":\"Adresse\",\r\n    \"adr_text\":\"AV My Abdellah Rouidate 1 Imm. BERRADA Guéliz Marrakech\",\r\n	\"phone_titre\":\"Téléphone\",\r\n	\"phone_nbr\":[\"+212 5 24 33 11 25\",\"+212 6 61 57 29 70\"],\r\n	\"sup_titre\": \"Support\",\r\n	\"email\":\"contact@esmamaroc.ma\",\r\n	\"social\":\"Suivez-nous\"\r\n}'),
(17, 'contact', 'section2', '{\r\n    \"titre\": \"Connectons nous\",\r\n    \"text\": \"Connectez-vous avec nous via ce formulaire\"\r\n}'),
(18, 'inscription', 'title', '{\r\n    \"titre\": \"Inscription\",\r\n    \"image\": \"images/back3.jpg\"\r\n}'),
(19, 'employabilite', 'titre', '{\"titre\":\"Employabilite\",\r\n\"image\": \"images/back3.jpg\"}'),
(20, 'para', 'titre', '{\"titre\":\"Parascolaires\",\r\n\"image\": \"images/back3.jpg\"}'),
(21, 'arch', 'titre', '{\"titre\":\"Architecture des formations et diplomes\",\r\n\"image\": \"images/back3.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'secretaire'),
(2, 'administrateur');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'Jihad', 'admin', 2),
(5, 'Mehdi', '111', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
