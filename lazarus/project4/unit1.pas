unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1; x,y,b,h:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.clear;
  h:=StrToInt(Edit3.Text);
  x:=StrToInt(Edit1.Text);
  b:=StrToInt(Edit2.Text);
  while x<=b do
begin
  y:=x*x;
  Memo1.Lines.add('x = '+IntToStr(x)+' y ='+IntToStr(y));
  x:=x+h;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.

