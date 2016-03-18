drop database projet;
create database projet;
use projet;

CREATE TABLE IF NOT EXISTS CLASSE
(
	IDClasse int auto_increment not null,
	NombreEleve int(2),
	NomClasse varchar(4),
	Primary key(IDClasse)
);

CREATE TABLE IF NOT EXISTS  MATIERE
(
	IDMatiere int auto_increment not null,
	NomMatiere varchar(20),
	Primary key(IDMatiere)
);

CREATE TABLE IF NOT EXISTS  UTILISATEUR
(
	IDUtil int auto_increment not null,
	Email varchar(50),
	Password varchar(20),
	Nom varchar(20),
	Prenom varchar(20),
	Primary key (IDUtil)
);

CREATE TABLE IF NOT EXISTS  ADMINISTRATEUR /*hérite de utilisateur*/
(
	IDUtil int auto_increment not null,
	Email varchar(50),
	Password varchar(20),
	Nom varchar(20),
	Prenom varchar(20),
	Primary key (IDUtil)
);

CREATE TABLE IF NOT EXISTS  ELEVE /*hérite de utilisateur*/
(
	IDUtil int auto_increment not null,
	Email varchar(50),
	Password varchar(20),
	Nom varchar(20),
	Prenom varchar(20),
	Specialisation varchar(15),
	DemiGroupe int(1),
	DateInscr Date,
	IDClasse int,
	Primary key (IDUtil),
	Foreign key (IDClasse) references CLASSE(IDClasse)
);

CREATE TABLE IF NOT EXISTS  PROF /*hérite de utilisateur*/
(
	IDUtil int auto_increment not null,
	Email varchar(50),
	Password varchar(20),
	Nom varchar(20),
	Prenom varchar(20),
	DateEmbauche Date,
	Primary key (IDUtil)
);

CREATE TABLE IF NOT EXISTS  EVENEMENT
(
	IDEvt int auto_increment not null,
	NomEvt varchar(30),
	DateEvt Date,
	Type varchar(10),
	IDClasse int,
	IDMatiere int,
	IDProf int,
	Primary key (IDEvt),
	Foreign key (IDClasse) references CLASSE(IDClasse),
	Foreign key (IDMatiere) references MATIERE(IDMatiere),
	Foreign key (IDProf) references PROF(IDUtil)
);

CREATE TABLE IF NOT EXISTS  PIECEJOINTE
(
	IDPJ int auto_increment not null,
	NomPJ varchar(30),
	Extension varchar(6),
	Taille varchar(5),
	IDEvt int,
	Primary key (IDPJ),
	Foreign key (IDEvt) references EVENEMENT(IDEvt)
);

CREATE TABLE IF NOT EXISTS  AVOIR
(
	IDProf int not null,
	IDClasse int not null,
	Primary key (IDProf,IDClasse),
	Foreign key (IDProf) references PROF(IDUtil),
	Foreign key (IDClasse) references CLASSE(IDClasse)
);

CREATE TABLE IF NOT EXISTS  ENSEIGNER
(
	IDProf int not null,
	IDMatiere int not null,
	Primary key (IDProf,IDMatiere),
	Foreign key (IDProf) references PROF(IDUtil),
	Foreign key (IDMatiere) references MATIERE(IDMatiere)
);