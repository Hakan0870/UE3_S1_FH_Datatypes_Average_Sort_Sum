PROGRAM SumTriangle;

TYPE
  Matrix = ARRAY[1..4, 1..4] of BYTE;
  DiagonalSums = ARRAY[1..4] of BYTE;


PROCEDURE CalculateDiagonalSums(m: Matrix; VAR d: DiagonalSums);

VAR
  i, j, k: INTEGER;

BEGIN
  m[1,1] := 0;
  m[2,1] := 5;
  m[2,2] := 8;
  m[3,1] := 3;
  m[3,2] := 10;
  m[3,3] := 4;
  m[4,1] := 2;
  m[4,2] := 3;
  m[4,3] := 7;
  m[4,4] := 5; 

  FOR i := 1 TO High(m) DO
    FOR j := 1 TO i DO BEGIN
      k := i - j + 1;
      d[k] := d[k] + m[i,j];
    END;
  FOR k:= Low(d) TO High(d) DO
    Write(d[k], ' ');
END;


VAR
  m: Matrix;
  d: DiagonalSums;
BEGIN
  CalculateDiagonalSums(m, d);
END.