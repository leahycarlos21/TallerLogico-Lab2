ENTITY addertodisplay IS
PORT (a: IN BIT_VECTOR(3 downto 0);
		b: IN BIT_VECTOR(3 downto 0);
		c0: IN BIT;
		sout: OUT BIT_VECTOR(6 downto 0);
		cout: OUT BIT
		);
END ENTITY addertodisplay;

ARCHITECTURE addertodisplay_arch OF addertodisplay IS

COMPONENT adder4bit
	PORT (a0: IN BIT;	--Primer numero
			a1: IN BIT;
			a2: IN BIT;
			a3: IN BIT;
			b0: IN BIT;	--Segundo numero
			b1: IN BIT;
			b2: IN BIT;
			b3: IN BIT;
			c0: IN BIT;	--acarreo inicail
			s0: OUT BIT;--Resultado
			s1: OUT BIT;
			s2: OUT BIT;
			s3: OUT BIT;
			cout: OUT BIT
			);
END COMPONENT;
			
SIGNAL q0, q1, q2, q3: BIT:='0';
SIGNAL s: BIT_VECTOR(3 downto 0):="0000";

BEGIN

add4: adder4bit PORT MAP(
								a0 => a(0),
								a1 => a(1),
								a2 => a(2),
								a3 => a(3),
								b0 => b(0),
								b1 => b(1),
								b2 => b(2),
								b3 => b(3),
								c0 => c0,
								s0 => q0,
								s1 => q1,
								s2 => q2,
								s3 => q3,
								cout => cout
								);
s <= q3 & q2 & q1 & q0;

p_case: PROCESS (s) IS
BEGIN
	CASE s IS
		WHEN "0000" =>
			sout <= "1000000";
		WHEN "0001" =>
			sout <= "1111001";
		WHEN "0010" =>
			sout <= "0100100";
		WHEN "0011" =>
			sout <= "0110000";
		WHEN "0100" =>
			sout <= "0011001";
		WHEN "0101" =>
			sout <= "0010010";
		WHEN "0110" =>
			sout <= "0000010";
		WHEN "0111" =>
			sout <= "1111000";
		WHEN "1000" =>
			sout <= "0000000";
		WHEN "1001" =>
			sout <= "0011000";
		WHEN "1010" =>
			sout <= "0001000";
		WHEN "1011" =>
			sout <= "0000011";
		WHEN "1100" =>
			sout <= "1000110";
		WHEN "1101" =>
			sout <= "0100001";
		WHEN "1110" =>
			sout <= "0000110";
		WHEN "1111" =>
			sout <= "0001110";
		WHEN others =>
			sout <= "0000000";
	END CASE;
END PROCESS;

END ARCHITECTURE addertodisplay_arch;