--------------------------------------------------------------------
--! \file      lab_exercise_wk2_activity_1.vhd
--! \date      see top of 'Version History'
--! \brief     Exercises week 2 
--! \author    Remko Welling (WLGRW) remko.welling@han.nl
--! \copyright HAN TF ELT/ESE Arnhem 
--!
--! Version History:
--! ----------------
--!
--! Nr:    |Date:      |Author: |Remarks:
--! -------|-----------|--------|-----------------------------------
--! 001    |17-10-2019 |WLGRW   |Inital version
--!
--! 
--! \verbatim
--!                                                  +--+
--!      DE10-Lite KEY, SW, LED, and HEX layout      |##| <= KEY0
--!                                                  +--+
--!                                                  |##| <= KEY1
--!                                                  +--+
--!
--!                                  9 8 7 6 5 4 3 2 1 0  <- Number
--!                                 +-+-+-+-+-+-+-+-+-+-+
--!       7-segment displays (HEX)  | | | | | | | | | | | <= Leds (LEDR)
--!      +---+---+---+---+---+---+  +-+-+-+-+-+-+-+-+-+-+
--!      |   |   |   |   |   |   |                     
--!      |   |   |   |   |   |   |  +-+-+-+-+-+-+-+-+-+-+
--!      |   |   |   |   |   |   |  | | | | | | | | | | |
--!      |   |   |   |   |   |   |  +-+-+-+-+-+-+-+-+-+-+
--!      |   |   |   |   |   |   |  |#|#|#|#|#|#|#|#|#|#| <= Switch (SW)
--!      +---+---+---+---+---+---+  +-+-+-+-+-+-+-+-+-+-+
--!        5   4   3   2   1   0     9 8 7 6 5 4 3 2 1 0  <- Number
--!
--! \endverbatim

--! Function 1:
--! -----------
--! This function is ports 'a' and 'b' as input and prt 'c' as output.
--! Ports are mapped to the switches 0 and 1 and led 1.
--! See figure 1:
--!
--! \verbatim
--!
--! Figure 1: GUI for function 1 on DE10-Lite.
--!
--!                   1 0  <- Number
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | | | |C| | <= Leds (LEDR)
--!  +-+-+-+-+-+-+-+-+-+-+
--!                     
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | | | | | |
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | | | |B|A| <= Switch (SW)
--!  +-+-+-+-+-+-+-+-+-+-+
--!                   1 0  <- Number
--!
--! \endverbatim

   
--! Function 2:
--! -----------
--! This function is using ports 'p' and 'q' as input 
--! and port 'r' as output. Ports are mapped to the 
--! switches 2 and 3 and led 3. See figure 2:
--!
--! \verbatim
--!
--! Figure 2: GUI for function 2 on DE10-Lite.
--!
--!               3        <- Number
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | |R| | | | <= Leds (LEDR)
--!  +-+-+-+-+-+-+-+-+-+-+
--!                     
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | | | | | |
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | |Q|P| | | <= Switch (SW)
--!  +-+-+-+-+-+-+-+-+-+-+
--!               3 2      <- Number
--!
--! \endverbatim


--! Function 3:
--! -----------
--! This function is using ports 'p', 'v', 'w', and 'x' as input 
--! and prt 'y' as output. Ports are mapped to the 
--! switches 4 to 7 and led 7. See figure 3:
--!
--! \verbatim
--!
--! Figure 3: GUI for function 3 on DE10-Lite.
--!
--!       7                <- Number
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | |Y| | | | | | | | <= Leds (LEDR)
--!  +-+-+-+-+-+-+-+-+-+-+
--!                     
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | | | | | | | | | |
--!  +-+-+-+-+-+-+-+-+-+-+
--!  | | |X|W|V|U| | | | | <= Switch (SW)
--!  +-+-+-+-+-+-+-+-+-+-+
--!       7 6 5 4          <- Number
--!
--! \endverbatim




--------------------------------------------------------------------
LIBRARY ieee;                      -- this lib needed for STD_LOGIC
USE ieee.std_logic_1164.all;       -- the package with this info
--------------------------------------------------------------------
ENTITY lab_exercise_wk2_activity_1 is
   PORT	( 
   
          a : IN     STD_LOGIC;  --! Input  A of component 1
          b : IN     STD_LOGIC;  --! Input  B of component 1
          c : OUT    STD_LOGIC;  --! Output C of component 1
 
          p : IN     STD_LOGIC;  --! Input  P of component 2
          q : IN     STD_LOGIC;  --! Input  Q of component 2
          r : OUT    STD_LOGIC;  --! Output R of component 2
 
          u : IN     STD_LOGIC;  --! Input  U of component 3
          v : IN     STD_LOGIC;  --! Input  V of component 3
          w : IN     STD_LOGIC;  --! Input  W of component 3
          x : IN     STD_LOGIC;  --! Input  X of component 3
          y : OUT    STD_LOGIC;  --! Output Y of component 3
          
          --! Ports l0,-2,-4,-5,-6,-8,-9 are used to "hard" switch-
          --! off leds on the prototype board that are not used.
          --! The format of this port definition is deliberately
          --! not using the mandatory syntax.
          
          l0,l2,l4,l5,l6,l8,l9 : OUT  STD_LOGIC 
          );

END ENTITY lab_exercise_wk2_activity_1;
--------------------------------------------------------------------
ARCHITECTURE implementation OF lab_exercise_wk2_activity_1 IS
BEGIN

--! Function 1:
--! -----------
--! This function is used for activity 1 of week 2 lab.

   c <= a NAND b;

   
--! Function 2:
--! -----------
--! This function is used for activity 1 of week 2 lab.

   r <= p XOR q;


--! Function 3:
--! -----------
--! The function "u OR v OR W OR x" is a place-holder 
--! and shall be replaced by your function. See activity 2 of week 2 
--! in the Lab-manual.

   y <= u OR v OR W OR x;



--! Code for cosmetic reasons
--! -------------------------
--! These lines have been added to switch off leds that are not 
--! used for the exercise. The leds ares switched off by assigning
--! a '0' to the port.

   l0 <= '0';  -- Switch off LED 0
   l2 <= '0';  -- Switch off LED 2
   l4 <= '0';  -- Switch off LED 4
   l5 <= '0';  -- Switch off LED 5
   l6 <= '0';  -- Switch off LED 6
   l8 <= '0';  -- Switch off LED 8
   l9 <= '0';  -- Switch off LED 9

END ARCHITECTURE implementation;
--------------------------------------------------------------------
