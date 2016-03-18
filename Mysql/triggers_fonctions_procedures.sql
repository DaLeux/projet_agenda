/*-------------------- TRIGGER QUI GERE L'HERITAGE --------------------*/
	Delimiter //
	CREATE TRIGGER HERITAGE_ADMIN
	BEFORE INSERT ON ADMINISTRATEUR
	FOR EACH ROW
	BEGIN
		insert into UTILISATEUR values
		(new.IDUtil, new.Email, new.Password, new.Nom, new.Prenom);
	END //
	Delimiter ;

	Delimiter //
	CREATE TRIGGER HERITAGE_PROF
	BEFORE INSERT ON PROF
	FOR EACH ROW
	BEGIN
		insert into UTILISATEUR values
		(new.IDUtil, new.Email, new.Password, new.Nom, new.Prenom);
	END //
	Delimiter ;

	Delimiter //
	CREATE TRIGGER HERITAGE_ELEVE
	BEFORE INSERT ON ELEVE
	FOR EACH ROW
	BEGIN
		insert into UTILISATEUR values
		(new.IDUtil, new.Email, new.Password, new.Nom, new.Prenom);
	END //
	Delimiter ;
/*---------------------------------------------------------------------*/