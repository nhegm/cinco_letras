program cinco;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  cinco_cartas in 'cinco_cartas.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
