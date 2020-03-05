ENTITY and_ent IS
PORT(	a: IN BIT;
		b: IN BIT;
		c: OUT BIT);
END ENTITY and_ent;

ARCHITECTURE and_arch OF and_ent IS
BEGIN
	c <= a AND b;
END ARCHITECTURE and_arch;

CONFIGURATION and_conf OF and_ent IS
	FOR and_arch 
	END FOR;
END CONFIGURATION and_conf;