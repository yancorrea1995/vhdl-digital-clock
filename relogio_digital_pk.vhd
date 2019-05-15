LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
PACKAGE PACOTE IS
 FUNCTION int2seg(A: INTEGER) RETURN STD_LOGIC_VECTOR;
END PACOTE;
PACKAGE BODY PACOTE IS
 FUNCTION int2seg(A: INTEGER) RETURN STD_LOGIC_VECTOR IS
  VARIABLE result: STD_LOGIC_VECTOR(6 downto 0);
 BEGIN 
  CASE A IS
   WHEN 0 => result := "1000000";
   WHEN 1 => result := "1111001";
   WHEN 2 => result := "0100100";
   WHEN 3 => result := "0110000";
   WHEN 4 => result := "0011001";
   WHEN 5 => result := "0010010";
   WHEN 6 => result := "0000010";
   WHEN 7 => result := "1011000";
   WHEN 8 => result := "0000000";
   WHEN 9 => result := "0010000";
   WHEN OTHERS => result := (OTHERS=>'0');
  END CASE;
  RETURN result;
 END int2seg;

END PACOTE;