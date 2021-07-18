PROGRAM Average;

CONST
  Max = 100;
TYPE
  ArrIndex = 1..Max;
  RealArray = ARRAY [ArrIndex] OF REAL;

VAR
  a: RealArray;
  i: ArrIndex;
  x: REAL;
  result: REAL;
  sum: REAL;
  count: INTEGER;
  high : REAL;
  low : REAL;

BEGIN
  sum := 0;
  count := 0;  
  Read(x);
  FOR i := 1 TO Max DO BEGIN 
    IF x <> 0 THEN BEGIN
      a[i] := x;
      sum := sum + x; 
      count := count + 1;
      Read(x);
    END
  END;
  low := a[1];
  FOR i := 1 TO Max DO
    IF (a[i] <> 0 ) AND (a[i] < low) THEN
      low := a[i];
  high := a[1];
  FOR i := 1 TO Max DO
    IF a[i] > high THEN
      high := a[i];
  IF count <> 0 THEN		
    result := (sum - high - low) / (count - 2)
  ELSE
    result := 0;
  WriteLN('Mittelwert: ', result:5:1);
  WriteLN();
  WriteLN('Testwerte:');
  WriteLN('high: ', high:5:1);
  WriteLN('low: ', low:5:1);
  WriteLN('sum: ', sum:5:1);
  WriteLN('count: ', count);
END.