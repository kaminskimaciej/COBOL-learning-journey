       >>SOURCE FORMAT FREE
identification division.
program-id. getmul.
data division.
linkage section.
       01 Num1 pic S9(4) value 0.
       01 Num2 pic S9(4) value 0.
       01 Res pic S9(4) value 0.
procedure division using Num1, Num2, Res.
       compute Res = Num1 * Num2.

exit program.
