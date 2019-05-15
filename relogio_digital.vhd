LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.PACOTE.all;
ENTITY relogio_digital IS
GENERIC (SEG: INTEGER := 49999999;CLOCKDEBOUNCE: INTEGER := 999); -- DEFINE O NUMERO DE CLOCKS PARA CONTAR UM SEGUNDO
PORT(
        -- AQUI DEFIMOS AS ENTRADAS E SAIDAS
 HEX0_D  :OUT STD_LOGIC_VECTOR (6 downto 0);
 HEX1_D  :OUT STD_LOGIC_VECTOR (6 downto 0);
 HEX2_D  :OUT STD_LOGIC_VECTOR (6 downto 0);
 HEX3_D  :OUT STD_LOGIC_VECTOR (6 downto 0);
 LedRelogio:OUT BIT;
 LedDespertador:OUT BIT;
 LedCronometro:OUT BIT;
 LedAlarme:OUT BIT;
 LedAlarmeDisparado1:OUT BIT;
 LedAlarmeDisparado2:OUT BIT;
 LedAlarmeDisparado3:OUT BIT;
 LedAlarmeDisparado4:OUT BIT;
 Buzzer: INOUT BIT;
 PontoLCD:INOUT BIT;
 CLOCK_50 :IN STD_LOGIC;
 UPminuto :IN STD_LOGIC;
 UPhora :IN STD_LOGIC;
 Modo:IN STD_LOGIC;
 Alarme:IN STD_LOGIC
);
END relogio_digital;

ARCHITECTURE behavioural OF relogio_digital IS

 SIGNAL TEMPORAL: INTEGER RANGE 0 TO SEG;
 SIGNAL SS0: INTEGER RANGE 0 TO 59 := 0; -- SEGUNDOS
 SIGNAL HH0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE DA HORA
 SIGNAL HH1: INTEGER RANGE 0 TO 2 := 0; --SEGUNDO CARACTERE DA HORA
 SIGNAL MM0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE DOS MINUTOS
 SIGNAL MM1: INTEGER RANGE 0 TO 5 := 0; --SEGUNDO CARACTERE DOS MINUTOS
 
 
 SIGNAL DHH0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE DESPERTADOR HORA
 SIGNAL DHH1: INTEGER RANGE 0 TO 2 := 0; --SEGUNDO CARACTERE DESPERTADOR HORA
 SIGNAL DMM0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE DESPERTADOR MINUTOS
 SIGNAL DMM1: INTEGER RANGE 0 TO 5 := 0; --SEGUNDO CARACTERE DESPERTADOR MINUTOS

 SIGNAL CHH0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE CRONOMETRO
 SIGNAL CHH1: INTEGER RANGE 0 TO 9 := 0; --SEGUNDO CARACTERE CRONOMETRO
 SIGNAL CMM0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO CARACTERE CRONOMETRO
 SIGNAL CMM1: INTEGER RANGE 0 TO 9 := 0; --SEGUNDO CARACTERE CRONOMETRO
 
 
 ---DA DIREITA PARA ESQUERDA---
 SIGNAL LCD0: INTEGER RANGE 0 TO 9 := 0; --PRIMEIRO NUMERO
 SIGNAL LCD1: INTEGER RANGE 0 TO 9 := 0; --SEGUNDO NUMERO
 SIGNAL LCD2: INTEGER RANGE 0 TO 9 := 0; --TERCEIRO NUMERO
 SIGNAL LCD3: INTEGER RANGE 0 TO 9 := 0; --QUARTO NUMERO
 
 signal lastMinuto: std_logic:='1';
 signal contMinuto: integer range 0 to 10000000:=0;
 signal lastHora: std_logic:='1';
 signal contHora: integer range 0 to 10000000:=0;
 signal lastModo: std_logic:='1';
 signal contModo: integer range 0 to 10000000:=0;
 signal ModoAtual: integer range 0 to 2 :=0;
 signal start: std_logic:='0';
 signal contCron: integer :=0;
 signal contBuzzer: integer :=0;
 signal playBuzzer: std_logic:='0';
 
BEGIN

        -- ATRIBUI OS VALORES DOS SINAIS PARA O DISPLAY DE 7 SEGMENTOS
 HEX0_D <= int2seg(LCD0);
 HEX1_D <= int2seg(LCD1);
 HEX2_D <= int2seg(LCD2);
 HEX3_D <= int2seg(LCD3);
 
 PROCESS(CLOCK_50) 
 BEGIN
  IF rising_edge(CLOCK_50) THEN -- NA BORDA DE SUBIDA
                        -- SE O CONTADOR NAO CHEGAR NO FIM DE 1 SEG

	
				--INICIO DEBOUNCE MODO--							
			if(contModo = CLOCKDEBOUNCE) then
			lastModo <= Modo;
			contModo <= 0;
			if(lastModo = '0') then
				ModoAtual <= ModoAtual + 1;
				if(ModoAtual = 2) then
					ModoAtual <= 0;
				end if;
			end if;
			end if;
			
			if (contModo /=CLOCKDEBOUNCE and Modo /= lastModo) then
				contModo <= contModo + 1;
			else
				contModo <= 0;
			end if;
			--FIM DEBOUNCE MODO--
						
	if(ModoAtual = 0) then
			---MODO RELOGIO---
			LedRelogio <= '1';
			LedDespertador <= '0';
			LedCronometro <= '0';
			--INICIO DEBOUNCE MINUTO--							
			if(contMinuto = CLOCKDEBOUNCE) then
			lastMinuto <= UPminuto;
			contMinuto <= 0;
			if(lastMinuto = '0') then
				SS0 <= 0;
				MM0 <= MM0 + 1;
				if(MM0 = 9) then
					MM0 <= 0;
					MM1 <= MM1 + 1;
					if(MM1 = 5) then
						MM1 <= 0;
					end if;
				end if;
			end if;
			end if;
			
			if (contMinuto /=CLOCKDEBOUNCE and UPminuto /= lastMinuto) then
				contMinuto <= contMinuto + 1;
			else
				contMinuto <= 0;
			end if;
			--FIM DEBOUNCE MINUTO--
			
			--INICIO DEBOUNCE HORA--							
			if(contHora = CLOCKDEBOUNCE) then
			lastHora <= UPhora;
			contHora <= 0;
			if(lastHora = '0') then
				HH0 <= HH0 + 1;
				if(HH0 = 3 and HH1 = 2) then
					HH0 <= 0;
					HH1 <= 0;
				end if;
				if(HH0 = 9) then
					HH0 <= 0;
					HH1 <= HH1 + 1;
					
				end if;
			end if;
			end if;
			
			if (contHora /=CLOCKDEBOUNCE and UPhora /= lastHora) then
				contHora <= contHora + 1;
			else
				contHora <= 0;
			end if;
			--FIM DEBOUNCE HORA--
				
	elsif(ModoAtual = 1) then
		---MODO DESPERTADOR---
			LedRelogio <= '0';
			LedDespertador <= '1';
			LedCronometro <= '0';
		--INICIO DEBOUNCE MINUTO--							
			if(contMinuto = CLOCKDEBOUNCE) then
			lastMinuto <= UPminuto;
			contMinuto <= 0;
			if(lastMinuto = '0') then
				--SS0 <= 0;
				DMM0 <= DMM0 + 1;
				if(DMM0 = 9) then
					DMM0 <= 0;
					DMM1 <= DMM1 + 1;
					if(DMM1 = 5) then
						DMM1 <= 0;
					end if;
				end if;
			end if;
			end if;
			
			if (contMinuto /=CLOCKDEBOUNCE and UPminuto /= lastMinuto) then
				contMinuto <= contMinuto + 1;
			else
				contMinuto <= 0;
			end if;
			--FIM DEBOUNCE MINUTO--
			
			--INICIO DEBOUNCE HORA--							
			if(contHora = CLOCKDEBOUNCE) then
			lastHora <= UPhora;
			contHora <= 0;
			if(lastHora = '0') then
				DHH0 <= DHH0 + 1;
				if(DHH0 = 3 and DHH1 = 2) then
					DHH0 <= 0;
					DHH1 <= 0;
				end if;
				if(DHH0 = 9) then
					DHH0 <= 0;
					DHH1 <= DHH1 + 1;
				end if;
			end if;
			end if;
			
			if (contHora /=CLOCKDEBOUNCE and UPhora /= lastHora) then
				contHora <= contHora + 1;
			else
				contHora <= 0;
			end if;
			--FIM DEBOUNCE HORA--
		--FIM DESPERTADOR---
	else
		---MODO CRONOMETRO---
		LedRelogio <= '0';
		LedDespertador <= '0';
		LedCronometro <= '1';
		
		--INICIO DEBOUNCE ZERAR--							
			if(contMinuto = CLOCKDEBOUNCE) then
			lastMinuto <= UPminuto;
			contMinuto <= 0;
				if(lastMinuto = '0') then
					CMM0 <= 0;
					CMM1 <= 0;
					CHH0 <= 0;
					CHH1 <= 0;
				end if;
			end if;			
			if (contMinuto /=CLOCKDEBOUNCE and UPminuto /= lastMinuto) then
				contMinuto <= contMinuto + 1;
			else
				contMinuto <= 0;
			end if;
			--FIM DEBOUNCE ZERAR--
			
			--INICIO DEBOUNCE START STOP--							
			if(contHora = CLOCKDEBOUNCE) then
			lastHora <= UPhora;
			contHora <= 0;
				if(lastHora = '0') then
					if(CMM0 = 9 and CMM1 = 9 and CHH0 = 9 and CHH1 = 9) then
						start <= '0';
					else
						start <= not start;
					end if;
				end if;
			end if;
			
			if (contHora /=CLOCKDEBOUNCE and UPhora /= lastHora) then
				contHora <= contHora + 1;
			else
				contHora <= 0;
			end if;
			--FIM DEBOUNCE START STOP--
			
		
	end if;
	
	
	IF(TEMPORAL /= SEG) THEN
    TEMPORAL <= TEMPORAL + 1; -- INCREMENTA 
                        -- SENAO, RESETA O CONTADOR E ATRIBUI UM SEGUNDO
   ELSE 
    TEMPORAL <= 0;
    SS0 <= SS0 + 1;
	 if(ModoAtual = 0) then
		PontoLCD <= not PontoLCD;
	 else
		PontoLCD <= '0';
	 end if;
	
	 
    IF(SS0 = 59) THEN -- 60 segundos eh 1 minuto
     SS0 <= 0;
     MM0 <= MM0 + 1;
     IF(MM0 = 9) THEN -- CASO PASSE 10 minutos
      MM0 <= 0; -- RESETA O DISPLAY 0
      MM1 <= MM1 + 1; -- INCREMENTA O DISPLAY 1
                                      -- 60 MINUTOS EH 1 HORA E ASSIM POR DIANTE...
      IF(MM1 = 5) THEN 
       MM1 <= 0;
       HH0 <= HH0 + 1;
       IF(HH0 = 9) THEN
        HH0 <= 0;
        HH1 <= HH1 + 1;
        ELSIF (HH0 = 3 AND HH1 = 2) THEN
         HH1 <= 0;
         HH0 <= 0;
         MM1 <= 0;
         MM0 <= 0;
       END IF;
      END IF;
     END IF;
    END IF;
   END IF;
	
	
	
	if(start = '1') then

		if(contCron /= 500000) then
			contCron <= contCron + 1;
		else
			contCron <= 0;
			CMM0 <= CMM0 + 1;
			if(CMM0 = 8 and CMM1 = 9 and CHH0 = 9 and CHH1 = 9) then
				start <= '0'; --chegou ao maximo do cronometro 99 segundos
			end if;
			if(CMM0 = 9) then
				CMM0 <= 0;
				CMM1 <= CMM1 + 1;
				if(CMM1 = 9) then
					CMM1 <= 0;
					CHH0 <= CHH0 + 1;
					if(CHH0 = 9) then
						CHH0 <= 0;
						CHH1 <= CHH1 + 1;
					end if;
				end if;
			end if;
		end if;
	
	end if;

	
	
	
	
	
	
	
	if(Alarme = '1') then
		LedAlarme <= '1';
		if(HH1 = DHH1 and HH0 = DHH0 and MM1 = DMM1 and MM0 = DMM0) then
			--acende leds alarme e toca buzzer--
			playBuzzer <= '1';
			LedAlarmeDisparado1 <= '1';
			LedAlarmeDisparado2 <= '1';
			LedAlarmeDisparado3 <= '1';
			LedAlarmeDisparado4 <= '1';
		end if;
	else
		LedAlarme <= '0';
		playBuzzer <= '0';
		--apaga leds alarme--
		LedAlarmeDisparado1 <= '0';
		LedAlarmeDisparado2 <= '0';
		LedAlarmeDisparado3 <= '0';
		LedAlarmeDisparado4 <= '0';
	end if;
	
	
	if(ModoAtual=0) then
		LCD0 <= MM0;
		LCD1 <= MM1;
		LCD2 <= HH0;
		LCD3 <= HH1;
	elsif(ModoAtual=1) then
		LCD0 <= DMM0;
		LCD1 <= DMM1;
		LCD2 <= DHH0;
		LCD3 <= DHH1;
	else
		LCD0 <= CMM0;
		LCD1 <= CMM1;
		LCD2 <= CHH0;
		LCD3 <= CHH1;
	end if;
  
  END IF;
 END PROCESS;
 
 process(CLOCK_50)
 begin
 
	IF rising_edge(CLOCK_50) THEN
	
		if(playBuzzer = '1') then
			contBuzzer <= contBuzzer + 1;
			if(contBuzzer = 50000000) then
				contBuzzer <= 0;
				Buzzer <= not Buzzer;
			end if;
		else
			Buzzer <= '0';
		end if;
		
	END IF;
 end process;
 
 
END behavioural;