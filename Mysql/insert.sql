/*
CLASSE
MATIERE
ADMINISTRATEUR
ELEVE
PROF
EVENEMENT
PIECEJOINTE
AVOIR
ENSEIGNER
GERER
*/

INSERT INTO CLASSE (NombreEleve, NomClasse) VALUES
("25","B3"),
("20","I4"),
("20","I5");

INSERT INTO MATIERE (NomMatiere) VALUES
("Java"),
("IP"),
("ASP.net"),
("Anglais"),
("Droit"),
("Finance");

INSERT INTO ADMINISTRATEUR (Email,Password,Nom,Prenom) VALUES
("friji.shiam@epsi.fr","mdp","Friji","Shiam"),
("responsable.pedagogique@espi.fr","mdp","Responsable","Pedagogique");

INSERT INTO ELEVE (Email,Password,Nom,Prenom,Specialisation,DemiGroupe,DateInscr,IDClasse) VALUES
("josselin.guittard@epsi.fr",	"mdp",	"Guittard",		"Josselin",	"Developpement",	1,	"2015/10/01",1),
("dimitri.bevis@epsi.fr",		"mdp",	"Bevis",		"Dimitri",	"Developpement",	1,	"2015/10/01",1),
("thomas.leux@epsi.fr",			"mdp",	"Leux",			"Thomas",	"Developpement",	2,	"2015/10/01",2),
("antoine.lhotellier@epsi.fr",	"mdp",	"L'hotellier",	"Antoine",	"Developpement",	2,	"2015/10/01",2),
("galina.borisova@epsi.fr",		"mdp",	"Borisova",		"Galina",	"Réseau",			1,	"2015/10/01",2),
("lucas.corizi@epsi.fr",		"mdp",	"Corizi",		"Lucas",	"Réseau",			1,	"2015/10/01",3),
("kevin.preil@epsi.fr",			"mdp",	"Preil",		"Kevin",	"Réseau",			2,	"2015/10/01",3);

INSERT INTO PROF (Email,Password,Nom,Prenom, DateEmbauche) VALUES
("sebastien.luissaint@epsi.fr",	"mdp",	"Luissaint",	"Sebastien",	"2013/10/01"),
("veronique.jeanneret@epsi.fr",	"mdp",	"Jeanneret",	"Veronique",	"2013/10/01"),
("isabelle.lignere@epsi.fr",	"mdp",	"Lignere",		"Isabelle",		"2013/10/01"),
("benoit.charroux@epsi.fr",		"mdp",	"Charroux",		"Benoit",		"2013/10/01"),
("mohammed.mliki@epsi.fr",		"mdp",	"Mliki",		"Mohamed",		"2013/10/01");

INSERT INTO EVENEMENT (NomEvt,DateEvt,Type,IDClasse,IDMatiere,IDProf) VALUES
("Anglais ta mere","2016/01/05","Exercice",1,3,3),
("TP Design pattern","2016/01/05","Controle",1,1,4),
("Truc d'IP","2016/01/05","Exercice",2,2,5),
("DS finance","2016/01/05","Controle",2,5,2),
("TP ASP","2016/01/05","Controle",3,3,1),
("Exo droit","2016/01/05","Exercice",3,3,3);

INSERT INTO PIECEJOINTE (NomPJ,Extension,Taille,IDEvt) VALUES
("PJAnglais1",".pdf","1Go",1),
("PJAnglais2",".pdf","500Mo",1),
("PJFinance",".pdf","2Mo",4);

INSERT INTO AVOIR (IDProf, IDClasse) VALUES
(1,1),
(1,2),
(2,1),
(2,2),
(2,3),
(3,1),
(4,2),
(5,1),
(5,3);

INSERT INTO ENSEIGNER (IDProf,IDMatiere) VALUES
(1,3),
(2,6),
(2,5),
(3,4),
(4,1),
(5,2);





