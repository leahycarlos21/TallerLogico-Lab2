ENTITY fulladder_ent IS
PORT (a: IN BIT;
		b: IN BIT;		
		cin: IN BIT;	--acarreo
		sum: OUT BIT;
		cout: OUT BIT);
END ENTITY fulladder_ent;

ARCHITECTURE fulladder_arch OF fulladder_ent IS

COMPONENT or_ent
	PORT (a: IN BIT;
			b: IN BIT;
			c: OUT BIT);
END COMPONENT;

COMPONENT xor_ent
	PORT (a: IN BIT;
			b: IN BIT;
			c: OUT BIT);
END COMPONENT;

COMPONENT and_ent
	PORT (a: IN BIT;
			b: IN BIT;
			c: OUT BIT);
END COMPONENT;

SIGNAL s0, s1, s2, c1: BIT:='0';
BEGIN
	p1: xor_ent port map(
							a => a,
							b => b,
							c => s0
							);
	p2: xor_ent port map(
							a => s0,
							b => cin,
							c => sum
							);
	p3: and_ent port map(
							a => s0,
							b => cin,
							c => s1
							);
	p4: and_ent port map(
							a => a,
							b => b,
							c => s2
							);
	p5: or_ent port map(
							a => s1,
							b => s2,
							c => c1
							);
	cout <= c1;
END ARCHITECTURE fulladder_arch;
