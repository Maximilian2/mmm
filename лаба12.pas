{Дан символьный файл f. В файле f не менее двух компонент. 
Определить, являются ли два первых символа файла цифрами. 
Если да, то установить, является ли число, 
образованное этими цифрами, четным.}

program laba12;
uses FormsABC;
var f:text;
    i:integer;
    s:string;
    b1,b2:button;
    m1,m2:field;

procedure check;
begin
s:=s[1]+s[2];
m2:=new Field('Первые два символа проверены',200);
if (s[1] in ['0'..'9'])and(s[2] in ['0'..'9']) then 
  if strtoint(s) mod 2 =0 then m2.Text:=s+' является четным числом' 
    else m2.Text:=s+' является НЕчетным числом'
  else m2.Text:=s+' не является числом';
end;    
    
procedure add;
begin
assign(input,'f.txt');
reset(input);
readln(input,s);
emptySpace(30);
m1:=new integerfield('Символы',200);
m1.text:=s;
linebreak;emptySpace(30);
close(input);
end;

begin
mainForm.title:='лаба12 задание 1';
emptySpace(20);
b1:=new button('Считать данные');
emptySpace(20);
b2:=new Button('Проверить число');
linebreak;
b1.click +=add;
b2.Click +=check;

end.
//changes1