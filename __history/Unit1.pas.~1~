unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
var a, b, x, f: Double;
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

end.
