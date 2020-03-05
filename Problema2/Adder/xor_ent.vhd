ENTITY xor_ent IS
PORT(	a: IN BIT;
		b: IN BIT;
		c: OUT BIT);
END ENTITY xor_ent;

ARCHITECTURE xor_arch OF xor_ent IS
BEGIN
	c <= a XOR b;
END ARCHITECTURE xor_arch;

CONFIGURATION xor_conf OF xor_ent IS
	FOR xor_arch 
	END FOR;
END CONFIGURATION xor_conf;