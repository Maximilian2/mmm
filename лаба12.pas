{��� ���������� ���� f. � ����� f �� ����� ���� ���������. 
����������, �������� �� ��� ������ ������� ����� �������. 
���� ��, �� ����������, �������� �� �����, 
������������ ����� �������, ������.}

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
m2:=new Field('������ ��� ������� ���������',200);
if (s[1] in ['0'..'9'])and(s[2] in ['0'..'9']) then 
  if strtoint(s) mod 2 =0 then m2.Text:=s+' �������� ������ ������' 
    else m2.Text:=s+' �������� �������� ������'
  else m2.Text:=s+' �� �������� ������';
end;    
    
procedure add;
begin
assign(input,'f.txt');
reset(input);
readln(input,s);
emptySpace(30);
m1:=new integerfield('�������',200);
m1.text:=s;
linebreak;emptySpace(30);
close(input);
end;

begin
mainForm.title:='����12 ������� 1';
emptySpace(20);
b1:=new button('������� ������');
emptySpace(20);
b2:=new Button('��������� �����');
linebreak;
b1.click +=add;
b2.Click +=check;

end.
//changes1