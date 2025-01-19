```ada
function Check_Range (Input : Integer) return Boolean is
begin
  if Input >= 10 and Input <= 20 then
    return True;
  else
    return False;
  end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer;
begin
   Put_Line("Enter a number between 10 and 20:");
   Get(Num);
   if Check_Range(Num) then
      Put_Line("Number is within range.");
   else
      Put_Line("Number is outside range.");
   end if;
end Main;
```