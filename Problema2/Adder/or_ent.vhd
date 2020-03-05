ENTITY or_ent IS
PORT(	a: IN BIT;
		b: IN BIT;
		c: OUT BIT);
END ENTITY or_ent;

ARCHITECTURE or_arch OF or_ent IS
BEGIN
	c <= a OR b;
END ARCHITECTURE or_arch;

CONFIGURATION or_conf OF or_ent IS
	FOR or_arch 
	END FOR;
END CONFIGURATION or_conf;