>>SOURCE FORMAT IS FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. firstStepsInCobol.
AUTHOR. Maciej Kaminski.
DATE-WRITTEN.May 5 2026.
ENVIRONMENT DIVISION.
       
DATA DIVISION.
           
WORKING-STORAGE SECTION.
01 OpType pic X.
       88 ExitProgram values are "x", "X".
       88 AddValue value "1".
       88 SubValue value "2".
       88 DivValue value "3".
       88 MulValue value "4".

01 Num1 pic S9(4) value 0.
01 Num2 pic S9(4) value 1.
01 Res pic S9(4) value 0.

PROCEDURE DIVISION.
       perform until ExitProgram
       display "Calculator example program" 
       display "1-add, 2-sub, 3-div, 4-mul, x/X - exit: " no advancing
       accept OpType
           evaluate TRUE
               when AddValue
                   display "input Num1"
                   accept Num1

                   display "input Num2"
                   accept Num2
                   display "performing addition"

                   call 'getsum' using Num1, Num2, Res
                   display Num1 " + " Num2 " = " Res
                   
               when SubValue
                   display "input Num1"
                   accept Num1

                   display "input Num2"
                   accept Num2
                   display "performing subtraction"

                   call 'getsub' using Num1, Num2, Res
                   display Num1 " - " Num2 " = " Res
               when DivValue
                   display "input Num1"
                   accept Num1
               
                   
                   display "input Num2"
                   accept Num2
                   if Num2 = 0 THEN
                       DISPLAY "div 0 not possible"
                   else
                   display "performing division"
                   call 'getdiv' using Num1, Num2, Res
                   display Num1 " / " Num2 " = " Res
                   end-if
               when MulValue
                   display "input Num1"
                   accept Num1

                   display "input Num2"
                   accept Num2
                   display "performing multiplication"

                   call 'getmul' using Num1, Num2, Res
                   display Num1 " * " Num2 " = " Res
               when ExitProgram
                   display "bye"
               when other
                   display "wrong opp type"
           end-evaluate
       end-perform.
STOP RUN.