unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Button2: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label15: TLabel;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, x, f: Double;
begin
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  x := StrToFloat(Edit3.Text);

  if Cos(x) = 0 then
    Label1.Caption := 'Функция не определена (tg(x) не существует)'
  else
  begin
    f := (0.00002 * (Sqr(a) + b)) / (1 + Sqr(x) + Sqr(Tan(x)));
    Label1.Caption := 'Результат f = ' + FloatToStrF(f, ffFixed, 10, 6);
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  n, c: Integer;
begin
  n := StrToInt(Edit4.Text);

  if n <= 0 then
  begin
    Label10.Caption := 'Год должен быть больше 0';
    Exit;
  end;

  if n mod 100 = 0 then
    c := n div 100
  else
    c := n div 100 + 1;

  case c of
    18: Label10.Caption := 'Это 18 век';
    19: Label10.Caption := 'Это 19 век';
    20: Label10.Caption := 'Это 20 век';
    21: Label10.Caption := 'Это 21 век';
  else
    Label10.Caption := 'Это ' + IntToStr(c) + ' век';
  end;
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  a, b, x, y: Double;
begin
  a := StrToFloat(Edit7.Text);
  b := StrToFloat(Edit8.Text);
  x := StrToFloat(Edit9.Text);

  if (x >= -15) and (x < 3) then
  begin
    if x = -1 then
      Label15.Caption := 'Функция не определена (деление на 0)'
    else
    begin
      y := Exp(x) + 1 / (x + 1);
      Label15.Caption := 'y = ' + FloatToStrF(y, ffFixed, 10, 6);
    end;
  end
  else if (x >= 3) and (x <= 5) then
  begin
    if x < 0 then
      Label15.Caption := 'Функция не определена (корень из отрицательного)'
    else
    begin
      y := Sqrt(x) + b * Sinh(x);
      Label15.Caption := 'y = ' + FloatToStrF(y, ffFixed, 10, 6);
    end;
  end
  else if x > 5 then
  begin
    if x = 0 then
      Label15.Caption := 'Функция не определена (деление на 0)'
    else
    begin
      y := Abs(b) + 1 / Power(x, 3) + a * x;
      Label15.Caption := 'y = ' + FloatToStrF(y, ffFixed, 10, 6);
    end;
  end
  else
    Label15.Caption := 'Функция не определена (x вне области)';
end;

end.
