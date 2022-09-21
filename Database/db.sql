create database esma;

create table pages(
	page_id int primary key AUTO_INCREMENT,
	title varchar(50),
	section varchar(50),
	content text
);

create table formations(
	title varchar(50) primary key,
	image varchar(150),
	description text,
	objectifs text,
	instructor varchar(50),
	emplois text,
	themes text
);

create table mails(
	mail_id int primary key AUTO_INCREMENT,
	type varchar(30) check (type in ('contact','inscription')),
	title varchar(50),
	nom varchar(50),
	prenom varchar(50),
	email varchar(80),
	tel varchar(20),
	ville varchar(60),
	formation_ach varchar(120),
	formation varchar(120),
	adresse varchar(150),
	date DateTime not null Default current_timestamp()
);

create table roles(
	role_id int primary key AUTO_INCREMENT,
	name varchar(50)
);

create table users(
	user_id int primary key AUTO_INCREMENT,
	username varchar(50),
	password varchar(50),
	role_id int references roles(role_id)
);

insert into roles(name) values('secretaire'),('administrateur');

insert into users (username, password, role_id) values('Jihad', 'admin', 2);