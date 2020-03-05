ENTITY testbench IS
END ENTITY testbench;

ARCHITECTURE testbench_arch OF testbench IS

COMPONENT adder4bit 
	PORT (
		a0: IN BIT;	--Primer numero
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

SIGNAL q0, q1, q2, q3, cout: BIT:='0';
SIGNAL a, b: BIT_VECTOR(3 downto 0):= "0000";

BEGIN
	DUT: adder4bit PORT MAP(
									a0 => a(0),
									a1 => a(1),
									a2 => a(2),
									a3 => a(3),
									b0 => b(0),
									b1 => b(1),
									b2 => b(2),
									b3 => b(3),
									c0 => '0',
									s0 => q0,
									s1 => q1,
									s2 => q2,
									s3 => q3,
									cout => cout
									);
stimulus: PROCESS 
	BEGIN
			a <= "1000";
			wait for 20ns;
			b <= "0100";
			wait for 20ns;
			a <= "0011";
			b <= "0101";
			wait for 20ns;
			a <= "110";
			wait for 20ns;
END PROCESS;						
									
END ARCHITECTURE testbench_arch;