FUNCTION is_float, arg

   ;Sec-Doc
   ;  PURPOSE: This function returns 1 if the type of arg is FLOAT, and 0
   ;  otherwise.
   ;
   ;  ALGORITHM: This function relies on the IDL built-in function SIZE().
   ;
   ;  SYNTAX: res = is_float(arg)
   ;
   ;  POSITIONAL PARAMETERS [INPUT/OUTPUT]:
   ;
   ;  *   arg [I]: An arbitrary expression.
   ;
   ;  KEYWORD PARAMETERS [INPUT/OUTPUT]: None.
   ;
   ;  RETURNED VALUE TYPE: INTEGER.
   ;
   ;  OUTCOME:
   ;
   ;  *   This function returns 1 if arg is of type FLOAT, and 0
   ;      otherwise.
   ;
   ;  EXCEPTION CONDITIONS: None.
   ;
   ;  DEPENDENCIES: None.
   ;
   ;  REMARKS:
   ;
   ;  *   NOTE 1: This function accepts any type of input argument,
   ;      including no argument at all, in which case it returns 0.
   ;
   ;  *   NOTE 2: Within the IDL context, a FLOAT variable represents a
   ;      single precision floating point number, which can take values
   ;      within a range that is hardware-dependent. The IDL function
   ;      MACHAR() reports the extent of this range, for instance
   ;      [1.2E-38, 3.4E+38] for a 64-bit machine, where the mantissa will
   ;      feature at least 6 and no more than 7 significant digits.
   ;
   ;  *   NOTE 3: If a real number with more than 7 significant digits is
   ;      assigned to a variable without specifying that it should be
   ;      saved in double precision, the variable will contain a truncated
   ;      representation of that number, and thus be considered of type
   ;      FLOAT.
   ;
   ;  EXAMPLES:
   ;
   ;      IDL> a = 1.23
   ;      IDL> res = is_float(a)
   ;      IDL> PRINT, res
   ;             1
   ;
   ;      IDL> b = 5
   ;      IDL> res = is_float(b)
   ;      IDL> PRINT, res
   ;             0
   ;
   ;      IDL> c = 1.23456789
   ;      IDL> res = is_float(c)
   ;      IDL> PRINT, res
   ;             1
   ;      IDL> PRINT, c
   ;            1.23457
   ;
   ;      IDL> PRINT, is_float()
   ;             0
   ;
   ;  REFERENCES: None.
   ;
   ;  VERSIONING:
   ;
   ;  *   2017–11–20: Version 1.0 — Initial public release.
   ;
   ;
   ;Sec-Lic
   ;  INTELLECTUAL PROPERTY RIGHTS
   ;
   ;  *   Copyright (C) 2017 Michel M. Verstraete.
   ;
   ;      Permission is hereby granted, free of charge, to any person
   ;      obtaining a copy of this software and associated documentation
   ;      files (the “Software”), to deal in the Software without
   ;      restriction, including without limitation the rights to use,
   ;      copy, modify, merge, publish, distribute, sublicense, and/or
   ;      sell copies of the Software, and to permit persons to whom the
   ;      Software is furnished to do so, subject to the following
   ;      conditions:
   ;
   ;      The above copyright notice and this permission notice shall be
   ;      included in all copies or substantial portions of the Software.
   ;
   ;      THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
   ;      EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
   ;      OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
   ;      NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
   ;      HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
   ;      WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
   ;      FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
   ;      OTHER DEALINGS IN THE SOFTWARE.
   ;
   ;      See: https://opensource.org/licenses/MIT.
   ;
   ;  *   Feedback
   ;
   ;      Please send comments and suggestions to the author at
   ;      MMVerstraete@gmail.com.
   ;
   ;
   ;Sec-Cod
   ;  Assess whether the argument 'arg' is of type FLOAT:
   IF (SIZE(arg, /TYPE) EQ 4) THEN RETURN, 1 ELSE RETURN, 0

END