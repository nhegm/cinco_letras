unit info;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TinfoForm = class(TForm)
    Button1: TButton;
    infoText: TText;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  infoForm: TinfoForm;

implementation

{$R *.fmx}

procedure TinfoForm.Button1Click(Sender: TObject);
begin
  infoForm.Close;
end;

procedure TinfoForm.FormCreate(Sender: TObject);
begin
  height:= 300;
  width:= 300;
  infoText.Text:='Hello, kitty.';
  infoText.Text:='Зеленый - это хорошо';
  infoText.Text:='Белый - таких букв нет';
end;

end.
