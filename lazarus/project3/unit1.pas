unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1; i,t,k,k1:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  k:=strtoint(Edit1.Text);
k1:=strtoint(Edit2.Text);
i:=1; t:=1;
while i<=k1 do
begin
t:=t*k;
i:=i+1;
end;
Memo1.Lines.add('число '+Edit1.Text+' в степени '+Edit2.Text+' равно: '+IntToStr(t));
end;
end.

