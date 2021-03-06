unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    eTLE1: TEdit;
    eTLE2: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    pPrincipal: TPanel;
    titulo2: TLabel;
    titulo1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

  norad_catalog: integer;
  launch_year: integer;
  launch_number: integer;
  launch_component: string;
  epoch_year: integer;
  epoch_day: real;
  julian_day: real;
  inclination: real;
  asc_node: real;
  eccentricity: real;
  arg_perigee: real;
  mean_anomaly: real;
  period: real;
  semi_axis: real;
  rotation_offset: real;


implementation

{$R *.lfm}

{ TForm1 }

procedure ProcessarTLE();
begin
   ShowMessage('This is a message from Lazarus');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ((eTLE1.Text = '') OR (eTLE2.Text = '')) then
  begin
       Application.MessageBox('Um dos campos TLE está vazio! Preencha-o!', 'Erro', MB_ICONERROR + MB_OK);
  end
  else begin
       ProcessarTLE();
  end;
end;

end.

