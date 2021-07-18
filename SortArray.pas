PROGRAM SortArray;

CONST
  Max = 100;
TYPE
  IntArray = ARRAY[1..Max] OF INTEGER;


PROCEDURE ReadIntArray(VAR a: IntArray; VAR n:INTEGER);
VAR
  count: INTEGER;
  i: INTEGER;
  x: INTEGER;
BEGIN
  count := 0;
  WriteLn('Enter Array length: ');
  ReadLn(n);
  IF n <= Max THEN BEGIN
    WriteLn('Enter ',n ,' numbers: ');
      FOR i := Low(a) TO n DO BEGIN
        ReadLn(x);
        a[i] := x;
        count := count + 1;  
      END;
    WriteLn('Array:');
    FOR i:= Low(a) TO n DO
      Write(a[i], ' ');
  END
  ELSE BEGIN
    WriteLn('n = 0');
    Halt;
  END;
  WriteLn();
  WriteLn('Counter: ', count);
END;


FUNCTION IsSorted(a: IntArray; n: INTEGER): BOOLEAN;
VAR
  i: INTEGER;
BEGIN
  i := 1;
  WHILE (i < n) AND (a[i] <= a[i + 1]) DO BEGIN
    i := i + 1
  END;
  IsSorted := (i = n);   
  WriteLn('Is Sorted: ', IsSorted);
END;


PROCEDURE SortArray(VAR a: IntArray; n: INTEGER);
VAR 
  i: INTEGER;
  j: INTEGER;
  temp: INTEGER;
BEGIN
  temp := 0;
  FOR i := 1 TO n - 1 DO
    FOR j := i TO n DO
      IF a[i] > a[j] THEN BEGIN
        temp := a[i];
        a[i] := a[j];
        a[j] := temp
      END;
END;


FUNCTION CountUnique(a: IntArray; n:INTEGER): INTEGER;
VAR
  i: INTEGER;
BEGIN
  CountUnique := 0;
  FOR i := 1 TO n  DO
    IF a[i] <> a[i + 1] THEN
        CountUnique := CountUnique + 1;
  WriteLn('Count Unique: ', CountUnique);
END;



VAR
  a: IntArray;
  n: INTEGER;
BEGIN
  ReadIntArray(a,n);
  IsSorted(a,n);
  SortArray(a,n);
  CountUnique(a,n);
END.