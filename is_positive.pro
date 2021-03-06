FUNCTION is_positive, arg

   ;Sec-Doc
   ;  PURPOSE: This function reports whether the input positional
   ;  parameter arg is of numeric type and equal to or greater than 0.0,
   ;  or not.
   ;
   ;  ALGORITHM: This function tests whether the input positional
   ;  parameter arg is of a numeric type, and if so, whether it is equal
   ;  to or greater than 0.0.
   ;
   ;  SYNTAX: res = is_positive(arg)
   ;
   ;  POSITIONAL PARAMETERS [INPUT/OUTPUT]:
   ;
   ;  *   arg [I]: An arbitrary numeric expression.
   ;
   ;  KEYWORD PARAMETERS [INPUT/OUTPUT]: None.
   ;
   ;  RETURNED VALUE TYPE: INT.
   ;
   ;  OUTCOME:
   ;
   ;  *   This function returns 1 if arg is both of numeric type and equal
   ;      to or larger than 0, and 0 otherwise.
   ;
   ;  EXCEPTION CONDITIONS: None.
   ;
   ;  DEPENDENCIES: None.
   ;
   ;  REMARKS:
   ;
   ;  *   NOTE 1: This function accepts any type of input positional
   ;      parameter, including none at all, in which case it returns 0.
   ;
   ;  *   NOTE 2: This function returns 0 if the input positional
   ;      parameter is an array of any type.
   ;
   ;  *   NOTE 3: This function considers complex numbers to be always
   ;      positive, independently from the sign of the real and imaginary
   ;      parts.
   ;
   ;  EXAMPLES:
   ;
   ;      IDL> PRINT, is_positive(1234)
   ;            1
   ;
   ;      IDL> PRINT, is_positive(0.0)
   ;            1
   ;
   ;      IDL> PRINT, is_positive(-0.1E-20)
   ;            0
   ;
   ;      IDL> PRINT, is_positive('12')
   ;            0
   ;
   ;      IDL> PRINT, is_positive(COMPLEX(-1.0, 0.0))
   ;            1
   ;
   ;      IDL> PRINT, is_positive(COMPLEX(1.0, -20.0))
   ;            1
   ;
   ;      IDL> PRINT, is_positive(COMPLEX(-1.0, -20.0))
   ;            1
   ;
   ;      IDL> PRINT, is_positive([1, 2])
   ;            0
   ;
   ;      IDL> PRINT, is_positive()
   ;            0
   ;
   ;  REFERENCES: None.
   ;
   ;  VERSIONING:
   ;
   ;  *   2017–11–20: Version 1.0 — Initial public release.
   ;
   ;  *   2019–01–28: Version 2.00 — Systematic update of all routines to
   ;      implement stricter coding standards and improve documentation.
   ;
   ;  *   2019–08–20: Version 2.1.0 — Adopt revised coding and
   ;      documentation standards, and switch to 3-parts version
   ;      identifiers.
   ;Sec-Lic
   ;  INTELLECTUAL PROPERTY RIGHTS
   ;
   ;  *   Copyright (C) 2017-2020 Michel M. Verstraete.
   ;
   ;      Permission is hereby granted, free of charge, to any person
   ;      obtaining a copy of this software and associated documentation
   ;      files (the “Software”), to deal in the Software without
   ;      restriction, including without limitation the rights to use,
   ;      copy, modify, merge, publish, distribute, sublicense, and/or
   ;      sell copies of the Software, and to permit persons to whom the
   ;      Software is furnished to do so, subject to the following three
   ;      conditions:
   ;
   ;      1. The above copyright notice and this permission notice shall
   ;      be included in their entirety in all copies or substantial
   ;      portions of the Software.
   ;
   ;      2. THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
   ;      KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
   ;      WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
   ;      AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
   ;      HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
   ;      WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
   ;      FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
   ;      OTHER DEALINGS IN THE SOFTWARE.
   ;
   ;      See: https://opensource.org/licenses/MIT.
   ;
   ;      3. The current version of this Software is freely available from
   ;
   ;      https://github.com/mmverstraete.
   ;
   ;  *   Feedback
   ;
   ;      Please send comments and suggestions to the author at
   ;      MMVerstraete@gmail.com
   ;Sec-Cod

   COMPILE_OPT idl2, HIDDEN

   ;  Assess whether the input positional parameter 'arg' is positive:
   IF (is_array(arg)) THEN RETURN, 0
   IF (is_numeric(arg) EQ 1) THEN BEGIN
      IF (arg GE 0) THEN RETURN, 1 ELSE RETURN, 0
   ENDIF ELSE BEGIN
      RETURN, 0
   ENDELSE

END
