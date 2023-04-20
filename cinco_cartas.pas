unit cinco_cartas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Styles.Objects;

type
  TForm2 = class(TForm)
    info: TButton;
    settings: TButton;
    meaning: TButton;
    й: TButton;
    ц: TButton;
    у: TButton;
    к: TButton;
    е: TButton;
    н: TButton;
    г: TButton;
    ш: TButton;
    ф: TButton;
    ы: TButton;
    в: TButton;
    а: TButton;
    п: TButton;
    р: TButton;
    о: TButton;
    л: TButton;
    я: TButton;
    ч: TButton;
    с: TButton;
    м: TButton;
    и: TButton;
    т: TButton;
    ь: TButton;
    б: TButton;
    щ: TButton;
    з: TButton;
    х: TButton;
    ъ: TButton;
    д: TButton;
    ж: TButton;
    э: TButton;
    enter: TButton;
    ю: TButton;
    delete: TButton;
    ё: TButton;
    R11: TButton;
    R21: TButton;
    R41: TButton;
    R31: TButton;
    R61: TButton;
    R51: TButton;
    R12: TButton;
    R22: TButton;
    R42: TButton;
    R32: TButton;
    R62: TButton;
    R52: TButton;
    R13: TButton;
    R23: TButton;
    R43: TButton;
    R33: TButton;
    R63: TButton;
    R53: TButton;
    R14: TButton;
    R24: TButton;
    R44: TButton;
    R34: TButton;
    R64: TButton;
    R54: TButton;
    R15: TButton;
    R25: TButton;
    R45: TButton;
    R35: TButton;
    R65: TButton;
    R55: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    start: TButton;
    stats: TButton;
    procedure йClick(Sender: TObject);
    procedure цClick(Sender: TObject);
    procedure уClick(Sender: TObject);
    procedure кClick(Sender: TObject);
    procedure еClick(Sender: TObject);
    procedure нClick(Sender: TObject);
    procedure гClick(Sender: TObject);
    procedure шClick(Sender: TObject);
    procedure щClick(Sender: TObject);
    procedure зClick(Sender: TObject);
    procedure фClick(Sender: TObject);
    procedure ыClick(Sender: TObject);
    procedure вClick(Sender: TObject);
    procedure аClick(Sender: TObject);
    procedure пClick(Sender: TObject);
    procedure рClick(Sender: TObject);
    procedure оClick(Sender: TObject);
    procedure лClick(Sender: TObject);
    procedure дClick(Sender: TObject);
    procedure яClick(Sender: TObject);
    procedure чClick(Sender: TObject);
    procedure сClick(Sender: TObject);
    procedure мClick(Sender: TObject);
    procedure иClick(Sender: TObject);
    procedure тClick(Sender: TObject);
    procedure ьClick(Sender: TObject);
    procedure бClick(Sender: TObject);
    procedure юClick(Sender: TObject);
    procedure жClick(Sender: TObject);
    procedure ёClick(Sender: TObject);
    procedure хClick(Sender: TObject);
    procedure эClick(Sender: TObject);
    procedure ъClick(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure startClick(Sender: TObject);

  private
    { Private declarations }
  public

  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

var row,s,check,otvet: string [5];
    rc1, rc2, rc3, rc4, rc5: char;               // буквы, что пишутся в строки
    input: text;
    i,j,k,wins: integer;                              // разные счетчики
    a: array [1..1550] of string;                // массив всего словаря
    words: array [1..6] of string [5];           // массив со всеми ответами
    f: boolean;
    sym: array [1..5] of boolean;
    ask,ques: array [1..5] of integer;

class function OpenText(const Path: ): TStreamReader;
begin

end;

procedure matches (s1,s2: string);
begin
    for i:=1 to 5 do                                // full match
    if (s1[i]=s2[i]) then begin
      ask[i]:=2;
      ques[i]:=2;
    end;
    i:=1;
    while i<6 do begin                              // match in the word
     j:=1;
     while (j<6) and (ques[i]=0) do begin
       if (s1[i]=s2[j]) and (ques[i]=0) and (ask[j]=0) then begin
         ask[j]:=1;
         ques[i]:=1;
        end;
        j:=j+1;
      end;
      i:=i+1
    end;
    for i := 1 to 5 do
      otvet:=otvet+inttostr(ask[i]);


end;

procedure TForm2.йClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='й';
      rc1:='й';
    end else
      if R12.Text='' then begin
        R12.Text:='й';
        rc2:='й';
      end else
        if R13.Text='' then begin
          R13.Text:='й';
          rc3:='й';
        end else
          if R14.Text='' then begin
            R14.Text:='й';
            rc4:='й';
          end else
            if R15.Text='' then begin
              R15.Text:='й';
              rc5:='й';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='й';
      rc1:='й';
    end else
      if R22.Text='' then begin
        R22.Text:='й';
        rc2:='й';
      end else
        if R23.Text='' then begin
          R23.Text:='й';
          rc3:='й';
        end else
          if R24.Text='' then begin
            R24.Text:='й';
            rc4:='й';
          end else
            if R25.Text='' then begin
              R25.Text:='й';
              rc5:='й';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='й';
      rc1:='й';
    end else
      if R32.Text='' then begin
        R32.Text:='й';
        rc2:='й';
      end else
        if R33.Text='' then begin
          R33.Text:='й';
          rc3:='й';
        end else
          if R34.Text='' then begin
            R34.Text:='й';
            rc4:='й';
          end else
            if R35.Text='' then begin
              R35.Text:='й';
              rc5:='й';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='й';
      rc1:='й';
    end else
      if R42.Text='' then begin
        R42.Text:='й';
        rc2:='й';
      end else
        if R43.Text='' then begin
          R43.Text:='й';
          rc3:='й';
        end else
          if R44.Text='' then begin
            R44.Text:='й';
            rc4:='й';
          end else
            if R45.Text='' then begin
              R45.Text:='й';
              rc5:='й';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='й';
      rc1:='й';
    end else
      if R52.Text='' then begin
        R52.Text:='й';
        rc2:='й';
      end else
        if R53.Text='' then begin
          R53.Text:='й';
          rc3:='й';
        end else
          if R54.Text='' then begin
            R54.Text:='й';
            rc4:='й';
          end else
            if R55.Text='' then begin
              R55.Text:='й';
              rc5:='й';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='й';
      rc1:='й';
    end else
      if R62.Text='' then begin
        R62.Text:='й';
        rc2:='й';
      end else
        if R63.Text='' then begin
          R63.Text:='й';
          rc3:='й';
        end else
          if R64.Text='' then begin
            R64.Text:='й';
            rc4:='й';
          end else
            if R65.Text='' then begin
              R65.Text:='й';
              rc5:='й';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.цClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ц';
      rc1:='ц';
    end else
      if R12.Text='' then begin
        R12.Text:='ц';
        rc2:='ц';
      end else
        if R13.Text='' then begin
          R13.Text:='ц';
          rc3:='ц';
        end else
          if R14.Text='' then begin
            R14.Text:='ц';
            rc4:='ц';
          end else
            if R15.Text='' then begin
              R15.Text:='ц';
              rc5:='ц';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ц';
      rc1:='ц';
    end else
      if R22.Text='' then begin
        R22.Text:='ц';
        rc2:='ц';
      end else
        if R23.Text='' then begin
          R23.Text:='ц';
          rc3:='ц';
        end else
          if R24.Text='' then begin
            R24.Text:='ц';
            rc4:='ц';
          end else
            if R25.Text='' then begin
              R25.Text:='ц';
              rc5:='ц';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ц';
      rc1:='ц';
    end else
      if R32.Text='' then begin
        R32.Text:='ц';
        rc2:='ц';
      end else
        if R33.Text='' then begin
          R33.Text:='ц';
          rc3:='ц';
        end else
          if R34.Text='' then begin
            R34.Text:='ц';
            rc4:='ц';
          end else
            if R35.Text='' then begin
              R35.Text:='ц';
              rc5:='ц';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ц';
      rc1:='ц';
    end else
      if R42.Text='' then begin
        R42.Text:='ц';
        rc2:='ц';
      end else
        if R43.Text='' then begin
          R43.Text:='ц';
          rc3:='ц';
        end else
          if R44.Text='' then begin
            R44.Text:='ц';
            rc4:='ц';
          end else
            if R45.Text='' then begin
              R45.Text:='ц';
              rc5:='ц';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ц';
      rc1:='ц';
    end else
      if R52.Text='' then begin
        R52.Text:='ц';
        rc2:='ц';
      end else
        if R53.Text='' then begin
          R53.Text:='ц';
          rc3:='ц';
        end else
          if R54.Text='' then begin
            R54.Text:='ц';
            rc4:='ц';
          end else
            if R55.Text='' then begin
              R55.Text:='ц';
              rc5:='ц';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ц';
      rc1:='ц';
    end else
      if R62.Text='' then begin
        R62.Text:='ц';
        rc2:='ц';
      end else
        if R63.Text='' then begin
          R63.Text:='ц';
          rc3:='ц';
        end else
          if R64.Text='' then begin
            R64.Text:='ц';
            rc4:='ц';
          end else
            if R65.Text='' then begin
              R65.Text:='ц';
              rc5:='ц';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.уClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='у';
      rc1:='у';
    end else
      if R12.Text='' then begin
        R12.Text:='у';
        rc2:='у';
      end else
        if R13.Text='' then begin
          R13.Text:='у';
          rc3:='у';
        end else
          if R14.Text='' then begin
            R14.Text:='у';
            rc4:='у';
          end else
            if R15.Text='' then begin
              R15.Text:='у';
              rc5:='у';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='у';
      rc1:='у';
    end else
      if R22.Text='' then begin
        R22.Text:='у';
        rc2:='у';
      end else
        if R23.Text='' then begin
          R23.Text:='у';
          rc3:='у';
        end else
          if R24.Text='' then begin
            R24.Text:='у';
            rc4:='у';
          end else
            if R25.Text='' then begin
              R25.Text:='у';
              rc5:='у';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='у';
      rc1:='у';
    end else
      if R32.Text='' then begin
        R32.Text:='у';
        rc2:='у';
      end else
        if R33.Text='' then begin
          R33.Text:='у';
          rc3:='у';
        end else
          if R34.Text='' then begin
            R34.Text:='у';
            rc4:='у';
          end else
            if R35.Text='' then begin
              R35.Text:='у';
              rc5:='у';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='у';
      rc1:='у';
    end else
      if R42.Text='' then begin
        R42.Text:='у';
        rc2:='у';
      end else
        if R43.Text='' then begin
          R43.Text:='у';
          rc3:='у';
        end else
          if R44.Text='' then begin
            R44.Text:='у';
            rc4:='у';
          end else
            if R45.Text='' then begin
              R45.Text:='у';
              rc5:='у';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='у';
      rc1:='у';
    end else
      if R52.Text='' then begin
        R52.Text:='у';
        rc2:='у';
      end else
        if R53.Text='' then begin
          R53.Text:='у';
          rc3:='у';
        end else
          if R54.Text='' then begin
            R54.Text:='у';
            rc4:='у';
          end else
            if R55.Text='' then begin
              R55.Text:='у';
              rc5:='у';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='у';
      rc1:='у';
    end else
      if R62.Text='' then begin
        R62.Text:='у';
        rc2:='у';
      end else
        if R63.Text='' then begin
          R63.Text:='у';
          rc3:='у';
        end else
          if R64.Text='' then begin
            R64.Text:='у';
            rc4:='у';
          end else
            if R65.Text='' then begin
              R65.Text:='у';
              rc5:='у';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.кClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='к';
      rc1:='к';
    end else
      if R12.Text='' then begin
        R12.Text:='к';
        rc2:='к';
      end else
        if R13.Text='' then begin
          R13.Text:='к';
          rc3:='к';
        end else
          if R14.Text='' then begin
            R14.Text:='к';
            rc4:='к';
          end else
            if R15.Text='' then begin
              R15.Text:='к';
              rc5:='к';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='к';
      rc1:='к';
    end else
      if R22.Text='' then begin
        R22.Text:='к';
        rc2:='к';
      end else
        if R23.Text='' then begin
          R23.Text:='к';
          rc3:='к';
        end else
          if R24.Text='' then begin
            R24.Text:='к';
            rc4:='к';
          end else
            if R25.Text='' then begin
              R25.Text:='к';
              rc5:='к';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='к';
      rc1:='к';
    end else
      if R32.Text='' then begin
        R32.Text:='к';
        rc2:='к';
      end else
        if R33.Text='' then begin
          R33.Text:='к';
          rc3:='к';
        end else
          if R34.Text='' then begin
            R34.Text:='к';
            rc4:='к';
          end else
            if R35.Text='' then begin
              R35.Text:='к';
              rc5:='к';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='к';
      rc1:='к';
    end else
      if R42.Text='' then begin
        R42.Text:='к';
        rc2:='к';
      end else
        if R43.Text='' then begin
          R43.Text:='к';
          rc3:='к';
        end else
          if R44.Text='' then begin
            R44.Text:='к';
            rc4:='к';
          end else
            if R45.Text='' then begin
              R45.Text:='к';
              rc5:='к';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='к';
      rc1:='к';
    end else
      if R52.Text='' then begin
        R52.Text:='к';
        rc2:='к';
      end else
        if R53.Text='' then begin
          R53.Text:='к';
          rc3:='к';
        end else
          if R54.Text='' then begin
            R54.Text:='к';
            rc4:='к';
          end else
            if R55.Text='' then begin
              R55.Text:='к';
              rc5:='к';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='к';
      rc1:='к';
    end else
      if R62.Text='' then begin
        R62.Text:='к';
        rc2:='к';
      end else
        if R63.Text='' then begin
          R63.Text:='к';
          rc3:='к';
        end else
          if R64.Text='' then begin
            R64.Text:='к';
            rc4:='к';
          end else
            if R65.Text='' then begin
              R65.Text:='к';
              rc5:='к';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
 // Label1.Text:=row;
end;

procedure TForm2.еClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='е';
      rc1:='е';
    end else
      if R12.Text='' then begin
        R12.Text:='е';
        rc2:='е';
      end else
        if R13.Text='' then begin
          R13.Text:='е';
          rc3:='е';
        end else
          if R14.Text='' then begin
            R14.Text:='е';
            rc4:='е';
          end else
            if R15.Text='' then begin
              R15.Text:='е';
              rc5:='е';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='е';
      rc1:='е';
    end else
      if R22.Text='' then begin
        R22.Text:='е';
        rc2:='е';
      end else
        if R23.Text='' then begin
          R23.Text:='е';
          rc3:='е';
        end else
          if R24.Text='' then begin
            R24.Text:='е';
            rc4:='е';
          end else
            if R25.Text='' then begin
              R25.Text:='е';
              rc5:='е';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='е';
      rc1:='е';
    end else
      if R32.Text='' then begin
        R32.Text:='е';
        rc2:='е';
      end else
        if R33.Text='' then begin
          R33.Text:='е';
          rc3:='е';
        end else
          if R34.Text='' then begin
            R34.Text:='е';
            rc4:='е';
          end else
            if R35.Text='' then begin
              R35.Text:='е';
              rc5:='е';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='е';
      rc1:='е';
    end else
      if R42.Text='' then begin
        R42.Text:='е';
        rc2:='е';
      end else
        if R43.Text='' then begin
          R43.Text:='е';
          rc3:='е';
        end else
          if R44.Text='' then begin
            R44.Text:='е';
            rc4:='е';
          end else
            if R45.Text='' then begin
              R45.Text:='е';
              rc5:='е';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='е';
      rc1:='е';
    end else
      if R52.Text='' then begin
        R52.Text:='е';
        rc2:='е';
      end else
        if R53.Text='' then begin
          R53.Text:='е';
          rc3:='е';
        end else
          if R54.Text='' then begin
            R54.Text:='е';
            rc4:='е';
          end else
            if R55.Text='' then begin
              R55.Text:='е';
              rc5:='е';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='е';
      rc1:='е';
    end else
      if R62.Text='' then begin
        R62.Text:='е';
        rc2:='е';
      end else
        if R63.Text='' then begin
          R63.Text:='е';
          rc3:='е';
        end else
          if R64.Text='' then begin
            R64.Text:='е';
            rc4:='е';
          end else
            if R65.Text='' then begin
              R65.Text:='е';
              rc5:='е';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.нClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='н';
      rc1:='н';
    end else
      if R12.Text='' then begin
        R12.Text:='н';
        rc2:='н';
      end else
        if R13.Text='' then begin
          R13.Text:='н';
          rc3:='н';
        end else
          if R14.Text='' then begin
            R14.Text:='н';
            rc4:='н';
          end else
            if R15.Text='' then begin
              R15.Text:='н';
              rc5:='н';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='н';
      rc1:='н';
    end else
      if R22.Text='' then begin
        R22.Text:='н';
        rc2:='н';
      end else
        if R23.Text='' then begin
          R23.Text:='н';
          rc3:='н';
        end else
          if R24.Text='' then begin
            R24.Text:='н';
            rc4:='н';
          end else
            if R25.Text='' then begin
              R25.Text:='н';
              rc5:='н';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='н';
      rc1:='н';
    end else
      if R32.Text='' then begin
        R32.Text:='н';
        rc2:='н';
      end else
        if R33.Text='' then begin
          R33.Text:='н';
          rc3:='н';
        end else
          if R34.Text='' then begin
            R34.Text:='н';
            rc4:='н';
          end else
            if R35.Text='' then begin
              R35.Text:='н';
              rc5:='н';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='н';
      rc1:='н';
    end else
      if R42.Text='' then begin
        R42.Text:='н';
        rc2:='н';
      end else
        if R43.Text='' then begin
          R43.Text:='н';
          rc3:='н';
        end else
          if R44.Text='' then begin
            R44.Text:='н';
            rc4:='н';
          end else
            if R45.Text='' then begin
              R45.Text:='н';
              rc5:='н';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='н';
      rc1:='н';
    end else
      if R52.Text='' then begin
        R52.Text:='н';
        rc2:='н';
      end else
        if R53.Text='' then begin
          R53.Text:='н';
          rc3:='н';
        end else
          if R54.Text='' then begin
            R54.Text:='н';
            rc4:='н';
          end else
            if R55.Text='' then begin
              R55.Text:='н';
              rc5:='н';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='н';
      rc1:='н';
    end else
      if R62.Text='' then begin
        R62.Text:='н';
        rc2:='н';
      end else
        if R63.Text='' then begin
          R63.Text:='н';
          rc3:='н';
        end else
          if R64.Text='' then begin
            R64.Text:='н';
            rc4:='н';
          end else
            if R65.Text='' then begin
              R65.Text:='н';
              rc5:='н';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.гClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='г';
      rc1:='г';
    end else
      if R12.Text='' then begin
        R12.Text:='г';
        rc2:='г';
      end else
        if R13.Text='' then begin
          R13.Text:='г';
          rc3:='г';
        end else
          if R14.Text='' then begin
            R14.Text:='г';
            rc4:='г';
          end else
            if R15.Text='' then begin
              R15.Text:='г';
              rc5:='г';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='г';
      rc1:='г';
    end else
      if R22.Text='' then begin
        R22.Text:='г';
        rc2:='г';
      end else
        if R23.Text='' then begin
          R23.Text:='г';
          rc3:='г';
        end else
          if R24.Text='' then begin
            R24.Text:='г';
            rc4:='г';
          end else
            if R25.Text='' then begin
              R25.Text:='г';
              rc5:='г';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='г';
      rc1:='г';
    end else
      if R32.Text='' then begin
        R32.Text:='г';
        rc2:='г';
      end else
        if R33.Text='' then begin
          R33.Text:='г';
          rc3:='г';
        end else
          if R34.Text='' then begin
            R34.Text:='г';
            rc4:='г';
          end else
            if R35.Text='' then begin
              R35.Text:='г';
              rc5:='г';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='г';
      rc1:='г';
    end else
      if R42.Text='' then begin
        R42.Text:='г';
        rc2:='г';
      end else
        if R43.Text='' then begin
          R43.Text:='г';
          rc3:='г';
        end else
          if R44.Text='' then begin
            R44.Text:='г';
            rc4:='г';
          end else
            if R45.Text='' then begin
              R45.Text:='г';
              rc5:='г';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='г';
      rc1:='г';
    end else
      if R52.Text='' then begin
        R52.Text:='г';
        rc2:='г';
      end else
        if R53.Text='' then begin
          R53.Text:='г';
          rc3:='г';
        end else
          if R54.Text='' then begin
            R54.Text:='г';
            rc4:='г';
          end else
            if R55.Text='' then begin
              R55.Text:='г';
              rc5:='г';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='г';
      rc1:='г';
    end else
      if R62.Text='' then begin
        R62.Text:='г';
        rc2:='г';
      end else
        if R63.Text='' then begin
          R63.Text:='г';
          rc3:='г';
        end else
          if R64.Text='' then begin
            R64.Text:='г';
            rc4:='г';
          end else
            if R65.Text='' then begin
              R65.Text:='г';
              rc5:='г';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.шClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ш';
      rc1:='ш';
    end else
      if R12.Text='' then begin
        R12.Text:='ш';
        rc2:='ш';
      end else
        if R13.Text='' then begin
          R13.Text:='ш';
          rc3:='ш';
        end else
          if R14.Text='' then begin
            R14.Text:='ш';
            rc4:='ш';
          end else
            if R15.Text='' then begin
              R15.Text:='ш';
              rc5:='ш';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ш';
      rc1:='ш';
    end else
      if R22.Text='' then begin
        R22.Text:='ш';
        rc2:='ш';
      end else
        if R23.Text='' then begin
          R23.Text:='ш';
          rc3:='ш';
        end else
          if R24.Text='' then begin
            R24.Text:='ш';
            rc4:='ш';
          end else
            if R25.Text='' then begin
              R25.Text:='ш';
              rc5:='ш';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ш';
      rc1:='ш';
    end else
      if R32.Text='' then begin
        R32.Text:='ш';
        rc2:='ш';
      end else
        if R33.Text='' then begin
          R33.Text:='ш';
          rc3:='ш';
        end else
          if R34.Text='' then begin
            R34.Text:='ш';
            rc4:='ш';
          end else
            if R35.Text='' then begin
              R35.Text:='ш';
              rc5:='ш';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ш';
      rc1:='ш';
    end else
      if R42.Text='' then begin
        R42.Text:='ш';
        rc2:='ш';
      end else
        if R43.Text='' then begin
          R43.Text:='ш';
          rc3:='ш';
        end else
          if R44.Text='' then begin
            R44.Text:='ш';
            rc4:='ш';
          end else
            if R45.Text='' then begin
              R45.Text:='ш';
              rc5:='ш';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ш';
      rc1:='ш';
    end else
      if R52.Text='' then begin
        R52.Text:='ш';
        rc2:='ш';
      end else
        if R53.Text='' then begin
          R53.Text:='ш';
          rc3:='ш';
        end else
          if R54.Text='' then begin
            R54.Text:='ш';
            rc4:='ш';
          end else
            if R55.Text='' then begin
              R55.Text:='ш';
              rc5:='ш';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ш';
      rc1:='ш';
    end else
      if R62.Text='' then begin
        R62.Text:='ш';
        rc2:='ш';
      end else
        if R63.Text='' then begin
          R63.Text:='ш';
          rc3:='ш';
        end else
          if R64.Text='' then begin
            R64.Text:='ш';
            rc4:='ш';
          end else
            if R65.Text='' then begin
              R65.Text:='ш';
              rc5:='ш';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.щClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='щ';
      rc1:='щ';
    end else
      if R12.Text='' then begin
        R12.Text:='щ';
        rc2:='щ';
      end else
        if R13.Text='' then begin
          R13.Text:='щ';
          rc3:='щ';
        end else
          if R14.Text='' then begin
            R14.Text:='щ';
            rc4:='щ';
          end else
            if R15.Text='' then begin
              R15.Text:='щ';
              rc5:='щ';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='щ';
      rc1:='щ';
    end else
      if R22.Text='' then begin
        R22.Text:='щ';
        rc2:='щ';
      end else
        if R23.Text='' then begin
          R23.Text:='щ';
          rc3:='щ';
        end else
          if R24.Text='' then begin
            R24.Text:='щ';
            rc4:='щ';
          end else
            if R25.Text='' then begin
              R25.Text:='щ';
              rc5:='щ';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='щ';
      rc1:='щ';
    end else
      if R32.Text='' then begin
        R32.Text:='щ';
        rc2:='щ';
      end else
        if R33.Text='' then begin
          R33.Text:='щ';
          rc3:='щ';
        end else
          if R34.Text='' then begin
            R34.Text:='щ';
            rc4:='щ';
          end else
            if R35.Text='' then begin
              R35.Text:='щ';
              rc5:='щ';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='щ';
      rc1:='щ';
    end else
      if R42.Text='' then begin
        R42.Text:='щ';
        rc2:='щ';
      end else
        if R43.Text='' then begin
          R43.Text:='щ';
          rc3:='щ';
        end else
          if R44.Text='' then begin
            R44.Text:='щ';
            rc4:='щ';
          end else
            if R45.Text='' then begin
              R45.Text:='щ';
              rc5:='щ';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='щ';
      rc1:='щ';
    end else
      if R52.Text='' then begin
        R52.Text:='щ';
        rc2:='щ';
      end else
        if R53.Text='' then begin
          R53.Text:='щ';
          rc3:='щ';
        end else
          if R54.Text='' then begin
            R54.Text:='щ';
            rc4:='щ';
          end else
            if R55.Text='' then begin
              R55.Text:='щ';
              rc5:='щ';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='щ';
      rc1:='щ';
    end else
      if R62.Text='' then begin
        R62.Text:='щ';
        rc2:='щ';
      end else
        if R63.Text='' then begin
          R63.Text:='щ';
          rc3:='щ';
        end else
          if R64.Text='' then begin
            R64.Text:='щ';
            rc4:='щ';
          end else
            if R65.Text='' then begin
              R65.Text:='щ';
              rc5:='щ';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.зClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='з';
      rc1:='з';
    end else
      if R12.Text='' then begin
        R12.Text:='з';
        rc2:='з';
      end else
        if R13.Text='' then begin
          R13.Text:='з';
          rc3:='з';
        end else
          if R14.Text='' then begin
            R14.Text:='з';
            rc4:='з';
          end else
            if R15.Text='' then begin
              R15.Text:='з';
              rc5:='з';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='з';
      rc1:='з';
    end else
      if R22.Text='' then begin
        R22.Text:='з';
        rc2:='з';
      end else
        if R23.Text='' then begin
          R23.Text:='з';
          rc3:='з';
        end else
          if R24.Text='' then begin
            R24.Text:='з';
            rc4:='з';
          end else
            if R25.Text='' then begin
              R25.Text:='з';
              rc5:='з';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='з';
      rc1:='з';
    end else
      if R32.Text='' then begin
        R32.Text:='з';
        rc2:='з';
      end else
        if R33.Text='' then begin
          R33.Text:='з';
          rc3:='з';
        end else
          if R34.Text='' then begin
            R34.Text:='з';
            rc4:='з';
          end else
            if R35.Text='' then begin
              R35.Text:='з';
              rc5:='з';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='з';
      rc1:='з';
    end else
      if R42.Text='' then begin
        R42.Text:='з';
        rc2:='з';
      end else
        if R43.Text='' then begin
          R43.Text:='з';
          rc3:='з';
        end else
          if R44.Text='' then begin
            R44.Text:='з';
            rc4:='з';
          end else
            if R45.Text='' then begin
              R45.Text:='з';
              rc5:='з';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='з';
      rc1:='з';
    end else
      if R52.Text='' then begin
        R52.Text:='з';
        rc2:='з';
      end else
        if R53.Text='' then begin
          R53.Text:='з';
          rc3:='з';
        end else
          if R54.Text='' then begin
            R54.Text:='з';
            rc4:='з';
          end else
            if R55.Text='' then begin
              R55.Text:='з';
              rc5:='з';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='з';
      rc1:='з';
    end else
      if R62.Text='' then begin
        R62.Text:='з';
        rc2:='з';
      end else
        if R63.Text='' then begin
          R63.Text:='з';
          rc3:='з';
        end else
          if R64.Text='' then begin
            R64.Text:='з';
            rc4:='з';
          end else
            if R65.Text='' then begin
              R65.Text:='з';
              rc5:='з';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.фClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ф';
      rc1:='ф';
    end else
      if R12.Text='' then begin
        R12.Text:='ф';
        rc2:='ф';
      end else
        if R13.Text='' then begin
          R13.Text:='ф';
          rc3:='ф';
        end else
          if R14.Text='' then begin
            R14.Text:='ф';
            rc4:='ф';
          end else
            if R15.Text='' then begin
              R15.Text:='ф';
              rc5:='ф';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ф';
      rc1:='ф';
    end else
      if R22.Text='' then begin
        R22.Text:='ф';
        rc2:='ф';
      end else
        if R23.Text='' then begin
          R23.Text:='ф';
          rc3:='ф';
        end else
          if R24.Text='' then begin
            R24.Text:='ф';
            rc4:='ф';
          end else
            if R25.Text='' then begin
              R25.Text:='ф';
              rc5:='ф';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ф';
      rc1:='ф';
    end else
      if R32.Text='' then begin
        R32.Text:='ф';
        rc2:='ф';
      end else
        if R33.Text='' then begin
          R33.Text:='ф';
          rc3:='ф';
        end else
          if R34.Text='' then begin
            R34.Text:='ф';
            rc4:='ф';
          end else
            if R35.Text='' then begin
              R35.Text:='ф';
              rc5:='ф';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ф';
      rc1:='ф';
    end else
      if R42.Text='' then begin
        R42.Text:='ф';
        rc2:='ф';
      end else
        if R43.Text='' then begin
          R43.Text:='ф';
          rc3:='ф';
        end else
          if R44.Text='' then begin
            R44.Text:='ф';
            rc4:='ф';
          end else
            if R45.Text='' then begin
              R45.Text:='ф';
              rc5:='ф';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ф';
      rc1:='ф';
    end else
      if R52.Text='' then begin
        R52.Text:='ф';
        rc2:='ф';
      end else
        if R53.Text='' then begin
          R53.Text:='ф';
          rc3:='ф';
        end else
          if R54.Text='' then begin
            R54.Text:='ф';
            rc4:='ф';
          end else
            if R55.Text='' then begin
              R55.Text:='ф';
              rc5:='ф';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ф';
      rc1:='ф';
    end else
      if R62.Text='' then begin
        R62.Text:='ф';
        rc2:='ф';
      end else
        if R63.Text='' then begin
          R63.Text:='ф';
          rc3:='ф';
        end else
          if R64.Text='' then begin
            R64.Text:='ф';
            rc4:='ф';
          end else
            if R65.Text='' then begin
              R65.Text:='ф';
              rc5:='ф';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ыClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ы';
      rc1:='ы';
    end else
      if R12.Text='' then begin
        R12.Text:='ы';
        rc2:='ы';
      end else
        if R13.Text='' then begin
          R13.Text:='ы';
          rc3:='ы';
        end else
          if R14.Text='' then begin
            R14.Text:='ы';
            rc4:='ы';
          end else
            if R15.Text='' then begin
              R15.Text:='ы';
              rc5:='ы';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ы';
      rc1:='ы';
    end else
      if R22.Text='' then begin
        R22.Text:='ы';
        rc2:='ы';
      end else
        if R23.Text='' then begin
          R23.Text:='ы';
          rc3:='ы';
        end else
          if R24.Text='' then begin
            R24.Text:='ы';
            rc4:='ы';
          end else
            if R25.Text='' then begin
              R25.Text:='ы';
              rc5:='ы';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ы';
      rc1:='ы';
    end else
      if R32.Text='' then begin
        R32.Text:='ы';
        rc2:='ы';
      end else
        if R33.Text='' then begin
          R33.Text:='ы';
          rc3:='ы';
        end else
          if R34.Text='' then begin
            R34.Text:='ы';
            rc4:='ы';
          end else
            if R35.Text='' then begin
              R35.Text:='ы';
              rc5:='ы';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ы';
      rc1:='ы';
    end else
      if R42.Text='' then begin
        R42.Text:='ы';
        rc2:='ы';
      end else
        if R43.Text='' then begin
          R43.Text:='ы';
          rc3:='ы';
        end else
          if R44.Text='' then begin
            R44.Text:='ы';
            rc4:='ы';
          end else
            if R45.Text='' then begin
              R45.Text:='ы';
              rc5:='ы';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ы';
      rc1:='ы';
    end else
      if R52.Text='' then begin
        R52.Text:='ы';
        rc2:='ы';
      end else
        if R53.Text='' then begin
          R53.Text:='ы';
          rc3:='ы';
        end else
          if R54.Text='' then begin
            R54.Text:='ы';
            rc4:='ы';
          end else
            if R55.Text='' then begin
              R55.Text:='ы';
              rc5:='ы';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ы';
      rc1:='ы';
    end else
      if R62.Text='' then begin
        R62.Text:='ы';
        rc2:='ы';
      end else
        if R63.Text='' then begin
          R63.Text:='ы';
          rc3:='ы';
        end else
          if R64.Text='' then begin
            R64.Text:='ы';
            rc4:='ы';
          end else
            if R65.Text='' then begin
              R65.Text:='ы';
              rc5:='ы';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.вClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='в';
      rc1:='в';
    end else
      if R12.Text='' then begin
        R12.Text:='в';
        rc2:='в';
      end else
        if R13.Text='' then begin
          R13.Text:='в';
          rc3:='в';
        end else
          if R14.Text='' then begin
            R14.Text:='в';
            rc4:='в';
          end else
            if R15.Text='' then begin
              R15.Text:='в';
              rc5:='в';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='в';
      rc1:='в';
    end else
      if R22.Text='' then begin
        R22.Text:='в';
        rc2:='в';
      end else
        if R23.Text='' then begin
          R23.Text:='в';
          rc3:='в';
        end else
          if R24.Text='' then begin
            R24.Text:='в';
            rc4:='в';
          end else
            if R25.Text='' then begin
              R25.Text:='в';
              rc5:='в';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='в';
      rc1:='в';
    end else
      if R32.Text='' then begin
        R32.Text:='в';
        rc2:='в';
      end else
        if R33.Text='' then begin
          R33.Text:='в';
          rc3:='в';
        end else
          if R34.Text='' then begin
            R34.Text:='в';
            rc4:='в';
          end else
            if R35.Text='' then begin
              R35.Text:='в';
              rc5:='в';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='в';
      rc1:='в';
    end else
      if R42.Text='' then begin
        R42.Text:='в';
        rc2:='в';
      end else
        if R43.Text='' then begin
          R43.Text:='в';
          rc3:='в';
        end else
          if R44.Text='' then begin
            R44.Text:='в';
            rc4:='в';
          end else
            if R45.Text='' then begin
              R45.Text:='в';
              rc5:='в';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='в';
      rc1:='в';
    end else
      if R52.Text='' then begin
        R52.Text:='в';
        rc2:='в';
      end else
        if R53.Text='' then begin
          R53.Text:='в';
          rc3:='в';
        end else
          if R54.Text='' then begin
            R54.Text:='в';
            rc4:='в';
          end else
            if R55.Text='' then begin
              R55.Text:='в';
              rc5:='в';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='в';
      rc1:='в';
    end else
      if R62.Text='' then begin
        R62.Text:='в';
        rc2:='в';
      end else
        if R63.Text='' then begin
          R63.Text:='в';
          rc3:='в';
        end else
          if R64.Text='' then begin
            R64.Text:='в';
            rc4:='в';
          end else
            if R65.Text='' then begin
              R65.Text:='в';
              rc5:='в';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.аClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='а';
      rc1:='а';
    end else
      if R12.Text='' then begin
        R12.Text:='а';
        rc2:='а';
      end else
        if R13.Text='' then begin
          R13.Text:='а';
          rc3:='а';
        end else
          if R14.Text='' then begin
            R14.Text:='а';
            rc4:='а';
          end else
            if R15.Text='' then begin
              R15.Text:='а';
              rc5:='а';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='а';
      rc1:='а';
    end else
      if R22.Text='' then begin
        R22.Text:='а';
        rc2:='а';
      end else
        if R23.Text='' then begin
          R23.Text:='а';
          rc3:='а';
        end else
          if R24.Text='' then begin
            R24.Text:='а';
            rc4:='а';
          end else
            if R25.Text='' then begin
              R25.Text:='а';
              rc5:='а';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='а';
      rc1:='а';
    end else
      if R32.Text='' then begin
        R32.Text:='а';
        rc2:='а';
      end else
        if R33.Text='' then begin
          R33.Text:='а';
          rc3:='а';
        end else
          if R34.Text='' then begin
            R34.Text:='а';
            rc4:='а';
          end else
            if R35.Text='' then begin
              R35.Text:='а';
              rc5:='а';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='а';
      rc1:='а';
    end else
      if R42.Text='' then begin
        R42.Text:='а';
        rc2:='а';
      end else
        if R43.Text='' then begin
          R43.Text:='а';
          rc3:='а';
        end else
          if R44.Text='' then begin
            R44.Text:='а';
            rc4:='а';
          end else
            if R45.Text='' then begin
              R45.Text:='а';
              rc5:='а';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='а';
      rc1:='а';
    end else
      if R52.Text='' then begin
        R52.Text:='а';
        rc2:='а';
      end else
        if R53.Text='' then begin
          R53.Text:='а';
          rc3:='а';
        end else
          if R54.Text='' then begin
            R54.Text:='а';
            rc4:='а';
          end else
            if R55.Text='' then begin
              R55.Text:='а';
              rc5:='а';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='а';
      rc1:='а';
    end else
      if R62.Text='' then begin
        R62.Text:='а';
        rc2:='а';
      end else
        if R63.Text='' then begin
          R63.Text:='а';
          rc3:='а';
        end else
          if R64.Text='' then begin
            R64.Text:='а';
            rc4:='а';
          end else
            if R65.Text='' then begin
              R65.Text:='а';
              rc5:='а';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.пClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='п';
      rc1:='п';
    end else
      if R12.Text='' then begin
        R12.Text:='п';
        rc2:='п';
      end else
        if R13.Text='' then begin
          R13.Text:='п';
          rc3:='п';
        end else
          if R14.Text='' then begin
            R14.Text:='п';
            rc4:='п';
          end else
            if R15.Text='' then begin
              R15.Text:='п';
              rc5:='п';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='п';
      rc1:='п';
    end else
      if R22.Text='' then begin
        R22.Text:='п';
        rc2:='п';
      end else
        if R23.Text='' then begin
          R23.Text:='п';
          rc3:='п';
        end else
          if R24.Text='' then begin
            R24.Text:='п';
            rc4:='п';
          end else
            if R25.Text='' then begin
              R25.Text:='п';
              rc5:='п';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='п';
      rc1:='п';
    end else
      if R32.Text='' then begin
        R32.Text:='п';
        rc2:='п';
      end else
        if R33.Text='' then begin
          R33.Text:='п';
          rc3:='п';
        end else
          if R34.Text='' then begin
            R34.Text:='п';
            rc4:='п';
          end else
            if R35.Text='' then begin
              R35.Text:='п';
              rc5:='п';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='п';
      rc1:='п';
    end else
      if R42.Text='' then begin
        R42.Text:='п';
        rc2:='п';
      end else
        if R43.Text='' then begin
          R43.Text:='п';
          rc3:='п';
        end else
          if R44.Text='' then begin
            R44.Text:='п';
            rc4:='п';
          end else
            if R45.Text='' then begin
              R45.Text:='п';
              rc5:='п';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='п';
      rc1:='п';
    end else
      if R52.Text='' then begin
        R52.Text:='п';
        rc2:='п';
      end else
        if R53.Text='' then begin
          R53.Text:='п';
          rc3:='п';
        end else
          if R54.Text='' then begin
            R54.Text:='п';
            rc4:='п';
          end else
            if R55.Text='' then begin
              R55.Text:='п';
              rc5:='п';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='п';
      rc1:='п';
    end else
      if R62.Text='' then begin
        R62.Text:='п';
        rc2:='п';
      end else
        if R63.Text='' then begin
          R63.Text:='п';
          rc3:='п';
        end else
          if R64.Text='' then begin
            R64.Text:='п';
            rc4:='п';
          end else
            if R65.Text='' then begin
              R65.Text:='п';
              rc5:='п';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.рClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='р';
      rc1:='р';
    end else
      if R12.Text='' then begin
        R12.Text:='р';
        rc2:='р';
      end else
        if R13.Text='' then begin
          R13.Text:='р';
          rc3:='р';
        end else
          if R14.Text='' then begin
            R14.Text:='р';
            rc4:='р';
          end else
            if R15.Text='' then begin
              R15.Text:='р';
              rc5:='р';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='р';
      rc1:='р';
    end else
      if R22.Text='' then begin
        R22.Text:='р';
        rc2:='р';
      end else
        if R23.Text='' then begin
          R23.Text:='р';
          rc3:='р';
        end else
          if R24.Text='' then begin
            R24.Text:='р';
            rc4:='р';
          end else
            if R25.Text='' then begin
              R25.Text:='р';
              rc5:='р';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='р';
      rc1:='р';
    end else
      if R32.Text='' then begin
        R32.Text:='р';
        rc2:='р';
      end else
        if R33.Text='' then begin
          R33.Text:='р';
          rc3:='р';
        end else
          if R34.Text='' then begin
            R34.Text:='р';
            rc4:='р';
          end else
            if R35.Text='' then begin
              R35.Text:='р';
              rc5:='р';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='р';
      rc1:='р';
    end else
      if R42.Text='' then begin
        R42.Text:='р';
        rc2:='р';
      end else
        if R43.Text='' then begin
          R43.Text:='р';
          rc3:='р';
        end else
          if R44.Text='' then begin
            R44.Text:='р';
            rc4:='р';
          end else
            if R45.Text='' then begin
              R45.Text:='р';
              rc5:='р';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='р';
      rc1:='р';
    end else
      if R52.Text='' then begin
        R52.Text:='р';
        rc2:='р';
      end else
        if R53.Text='' then begin
          R53.Text:='р';
          rc3:='р';
        end else
          if R54.Text='' then begin
            R54.Text:='р';
            rc4:='р';
          end else
            if R55.Text='' then begin
              R55.Text:='р';
              rc5:='р';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='р';
      rc1:='р';
    end else
      if R62.Text='' then begin
        R62.Text:='р';
        rc2:='р';
      end else
        if R63.Text='' then begin
          R63.Text:='р';
          rc3:='р';
        end else
          if R64.Text='' then begin
            R64.Text:='р';
            rc4:='р';
          end else
            if R65.Text='' then begin
              R65.Text:='р';
              rc5:='р';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.оClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='о';
      rc1:='о';
    end else
      if R12.Text='' then begin
        R12.Text:='о';
        rc2:='о';
      end else
        if R13.Text='' then begin
          R13.Text:='о';
          rc3:='о';
        end else
          if R14.Text='' then begin
            R14.Text:='о';
            rc4:='о';
          end else
            if R15.Text='' then begin
              R15.Text:='о';
              rc5:='о';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='о';
      rc1:='о';
    end else
      if R22.Text='' then begin
        R22.Text:='о';
        rc2:='о';
      end else
        if R23.Text='' then begin
          R23.Text:='о';
          rc3:='о';
        end else
          if R24.Text='' then begin
            R24.Text:='о';
            rc4:='о';
          end else
            if R25.Text='' then begin
              R25.Text:='о';
              rc5:='о';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='о';
      rc1:='о';
    end else
      if R32.Text='' then begin
        R32.Text:='о';
        rc2:='о';
      end else
        if R33.Text='' then begin
          R33.Text:='о';
          rc3:='о';
        end else
          if R34.Text='' then begin
            R34.Text:='о';
            rc4:='о';
          end else
            if R35.Text='' then begin
              R35.Text:='о';
              rc5:='о';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='о';
      rc1:='о';
    end else
      if R42.Text='' then begin
        R42.Text:='о';
        rc2:='о';
      end else
        if R43.Text='' then begin
          R43.Text:='о';
          rc3:='о';
        end else
          if R44.Text='' then begin
            R44.Text:='о';
            rc4:='о';
          end else
            if R45.Text='' then begin
              R45.Text:='о';
              rc5:='о';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='о';
      rc1:='о';
    end else
      if R52.Text='' then begin
        R52.Text:='о';
        rc2:='о';
      end else
        if R53.Text='' then begin
          R53.Text:='о';
          rc3:='о';
        end else
          if R54.Text='' then begin
            R54.Text:='о';
            rc4:='о';
          end else
            if R55.Text='' then begin
              R55.Text:='о';
              rc5:='о';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='о';
      rc1:='о';
    end else
      if R62.Text='' then begin
        R62.Text:='о';
        rc2:='о';
      end else
        if R63.Text='' then begin
          R63.Text:='о';
          rc3:='о';
        end else
          if R64.Text='' then begin
            R64.Text:='о';
            rc4:='о';
          end else
            if R65.Text='' then begin
              R65.Text:='о';
              rc5:='о';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.лClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='л';
      rc1:='л';
    end else
      if R12.Text='' then begin
        R12.Text:='л';
        rc2:='л';
      end else
        if R13.Text='' then begin
          R13.Text:='л';
          rc3:='л';
        end else
          if R14.Text='' then begin
            R14.Text:='л';
            rc4:='л';
          end else
            if R15.Text='' then begin
              R15.Text:='л';
              rc5:='л';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='л';
      rc1:='л';
    end else
      if R22.Text='' then begin
        R22.Text:='л';
        rc2:='л';
      end else
        if R23.Text='' then begin
          R23.Text:='л';
          rc3:='л';
        end else
          if R24.Text='' then begin
            R24.Text:='л';
            rc4:='л';
          end else
            if R25.Text='' then begin
              R25.Text:='л';
              rc5:='л';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='л';
      rc1:='л';
    end else
      if R32.Text='' then begin
        R32.Text:='л';
        rc2:='л';
      end else
        if R33.Text='' then begin
          R33.Text:='л';
          rc3:='л';
        end else
          if R34.Text='' then begin
            R34.Text:='л';
            rc4:='л';
          end else
            if R35.Text='' then begin
              R35.Text:='л';
              rc5:='л';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='л';
      rc1:='л';
    end else
      if R42.Text='' then begin
        R42.Text:='л';
        rc2:='л';
      end else
        if R43.Text='' then begin
          R43.Text:='л';
          rc3:='л';
        end else
          if R44.Text='' then begin
            R44.Text:='л';
            rc4:='л';
          end else
            if R45.Text='' then begin
              R45.Text:='л';
              rc5:='л';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='л';
      rc1:='л';
    end else
      if R52.Text='' then begin
        R52.Text:='л';
        rc2:='л';
      end else
        if R53.Text='' then begin
          R53.Text:='л';
          rc3:='л';
        end else
          if R54.Text='' then begin
            R54.Text:='л';
            rc4:='л';
          end else
            if R55.Text='' then begin
              R55.Text:='л';
              rc5:='л';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='л';
      rc1:='л';
    end else
      if R62.Text='' then begin
        R62.Text:='л';
        rc2:='л';
      end else
        if R63.Text='' then begin
          R63.Text:='л';
          rc3:='л';
        end else
          if R64.Text='' then begin
            R64.Text:='л';
            rc4:='л';
          end else
            if R65.Text='' then begin
              R65.Text:='л';
              rc5:='л';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.дClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='д';
      rc1:='д';
    end else
      if R12.Text='' then begin
        R12.Text:='д';
        rc2:='д';
      end else
        if R13.Text='' then begin
          R13.Text:='д';
          rc3:='д';
        end else
          if R14.Text='' then begin
            R14.Text:='д';
            rc4:='д';
          end else
            if R15.Text='' then begin
              R15.Text:='д';
              rc5:='д';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='д';
      rc1:='д';
    end else
      if R22.Text='' then begin
        R22.Text:='д';
        rc2:='д';
      end else
        if R23.Text='' then begin
          R23.Text:='д';
          rc3:='д';
        end else
          if R24.Text='' then begin
            R24.Text:='д';
            rc4:='д';
          end else
            if R25.Text='' then begin
              R25.Text:='д';
              rc5:='д';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='д';
      rc1:='д';
    end else
      if R32.Text='' then begin
        R32.Text:='д';
        rc2:='д';
      end else
        if R33.Text='' then begin
          R33.Text:='д';
          rc3:='д';
        end else
          if R34.Text='' then begin
            R34.Text:='д';
            rc4:='д';
          end else
            if R35.Text='' then begin
              R35.Text:='д';
              rc5:='д';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='д';
      rc1:='д';
    end else
      if R42.Text='' then begin
        R42.Text:='д';
        rc2:='д';
      end else
        if R43.Text='' then begin
          R43.Text:='д';
          rc3:='д';
        end else
          if R44.Text='' then begin
            R44.Text:='д';
            rc4:='д';
          end else
            if R45.Text='' then begin
              R45.Text:='д';
              rc5:='д';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='д';
      rc1:='д';
    end else
      if R52.Text='' then begin
        R52.Text:='д';
        rc2:='д';
      end else
        if R53.Text='' then begin
          R53.Text:='д';
          rc3:='д';
        end else
          if R54.Text='' then begin
            R54.Text:='д';
            rc4:='д';
          end else
            if R55.Text='' then begin
              R55.Text:='д';
              rc5:='д';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='д';
      rc1:='д';
    end else
      if R62.Text='' then begin
        R62.Text:='д';
        rc2:='д';
      end else
        if R63.Text='' then begin
          R63.Text:='д';
          rc3:='д';
        end else
          if R64.Text='' then begin
            R64.Text:='д';
            rc4:='д';
          end else
            if R65.Text='' then begin
              R65.Text:='д';
              rc5:='д';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.яClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='я';
      rc1:='я';
    end else
      if R12.Text='' then begin
        R12.Text:='я';
        rc2:='я';
      end else
        if R13.Text='' then begin
          R13.Text:='я';
          rc3:='я';
        end else
          if R14.Text='' then begin
            R14.Text:='я';
            rc4:='я';
          end else
            if R15.Text='' then begin
              R15.Text:='я';
              rc5:='я';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='я';
      rc1:='я';
    end else
      if R22.Text='' then begin
        R22.Text:='я';
        rc2:='я';
      end else
        if R23.Text='' then begin
          R23.Text:='я';
          rc3:='я';
        end else
          if R24.Text='' then begin
            R24.Text:='я';
            rc4:='я';
          end else
            if R25.Text='' then begin
              R25.Text:='я';
              rc5:='я';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='я';
      rc1:='я';
    end else
      if R32.Text='' then begin
        R32.Text:='я';
        rc2:='я';
      end else
        if R33.Text='' then begin
          R33.Text:='я';
          rc3:='я';
        end else
          if R34.Text='' then begin
            R34.Text:='я';
            rc4:='я';
          end else
            if R35.Text='' then begin
              R35.Text:='я';
              rc5:='я';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='я';
      rc1:='я';
    end else
      if R42.Text='' then begin
        R42.Text:='я';
        rc2:='я';
      end else
        if R43.Text='' then begin
          R43.Text:='я';
          rc3:='я';
        end else
          if R44.Text='' then begin
            R44.Text:='я';
            rc4:='я';
          end else
            if R45.Text='' then begin
              R45.Text:='я';
              rc5:='я';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='я';
      rc1:='я';
    end else
      if R52.Text='' then begin
        R52.Text:='я';
        rc2:='я';
      end else
        if R53.Text='' then begin
          R53.Text:='я';
          rc3:='я';
        end else
          if R54.Text='' then begin
            R54.Text:='я';
            rc4:='я';
          end else
            if R55.Text='' then begin
              R55.Text:='я';
              rc5:='я';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='я';
      rc1:='я';
    end else
      if R62.Text='' then begin
        R62.Text:='я';
        rc2:='я';
      end else
        if R63.Text='' then begin
          R63.Text:='я';
          rc3:='я';
        end else
          if R64.Text='' then begin
            R64.Text:='я';
            rc4:='я';
          end else
            if R65.Text='' then begin
              R65.Text:='я';
              rc5:='я';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.чClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ч';
      rc1:='ч';
    end else
      if R12.Text='' then begin
        R12.Text:='ч';
        rc2:='ч';
      end else
        if R13.Text='' then begin
          R13.Text:='ч';
          rc3:='ч';
        end else
          if R14.Text='' then begin
            R14.Text:='ч';
            rc4:='ч';
          end else
            if R15.Text='' then begin
              R15.Text:='ч';
              rc5:='ч';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ч';
      rc1:='ч';
    end else
      if R22.Text='' then begin
        R22.Text:='ч';
        rc2:='ч';
      end else
        if R23.Text='' then begin
          R23.Text:='ч';
          rc3:='ч';
        end else
          if R24.Text='' then begin
            R24.Text:='ч';
            rc4:='ч';
          end else
            if R25.Text='' then begin
              R25.Text:='ч';
              rc5:='ч';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ч';
      rc1:='ч';
    end else
      if R32.Text='' then begin
        R32.Text:='ч';
        rc2:='ч';
      end else
        if R33.Text='' then begin
          R33.Text:='ч';
          rc3:='ч';
        end else
          if R34.Text='' then begin
            R34.Text:='ч';
            rc4:='ч';
          end else
            if R35.Text='' then begin
              R35.Text:='ч';
              rc5:='ч';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ч';
      rc1:='ч';
    end else
      if R42.Text='' then begin
        R42.Text:='ч';
        rc2:='ч';
      end else
        if R43.Text='' then begin
          R43.Text:='ч';
          rc3:='ч';
        end else
          if R44.Text='' then begin
            R44.Text:='ч';
            rc4:='ч';
          end else
            if R45.Text='' then begin
              R45.Text:='ч';
              rc5:='ч';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ч';
      rc1:='ч';
    end else
      if R52.Text='' then begin
        R52.Text:='ч';
        rc2:='ч';
      end else
        if R53.Text='' then begin
          R53.Text:='ч';
          rc3:='ч';
        end else
          if R54.Text='' then begin
            R54.Text:='ч';
            rc4:='ч';
          end else
            if R55.Text='' then begin
              R55.Text:='ч';
              rc5:='ч';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ч';
      rc1:='ч';
    end else
      if R62.Text='' then begin
        R62.Text:='ч';
        rc2:='ч';
      end else
        if R63.Text='' then begin
          R63.Text:='ч';
          rc3:='ч';
        end else
          if R64.Text='' then begin
            R64.Text:='ч';
            rc4:='ч';
          end else
            if R65.Text='' then begin
              R65.Text:='ч';
              rc5:='ч';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.сClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='с';
      rc1:='с';
    end else
      if R12.Text='' then begin
        R12.Text:='с';
        rc2:='с';
      end else
        if R13.Text='' then begin
          R13.Text:='с';
          rc3:='с';
        end else
          if R14.Text='' then begin
            R14.Text:='с';
            rc4:='с';
          end else
            if R15.Text='' then begin
              R15.Text:='с';
              rc5:='с';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='с';
      rc1:='с';
    end else
      if R22.Text='' then begin
        R22.Text:='с';
        rc2:='с';
      end else
        if R23.Text='' then begin
          R23.Text:='с';
          rc3:='с';
        end else
          if R24.Text='' then begin
            R24.Text:='с';
            rc4:='с';
          end else
            if R25.Text='' then begin
              R25.Text:='с';
              rc5:='с';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='с';
      rc1:='с';
    end else
      if R32.Text='' then begin
        R32.Text:='с';
        rc2:='с';
      end else
        if R33.Text='' then begin
          R33.Text:='с';
          rc3:='с';
        end else
          if R34.Text='' then begin
            R34.Text:='с';
            rc4:='с';
          end else
            if R35.Text='' then begin
              R35.Text:='с';
              rc5:='с';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='с';
      rc1:='с';
    end else
      if R42.Text='' then begin
        R42.Text:='с';
        rc2:='с';
      end else
        if R43.Text='' then begin
          R43.Text:='с';
          rc3:='с';
        end else
          if R44.Text='' then begin
            R44.Text:='с';
            rc4:='с';
          end else
            if R45.Text='' then begin
              R45.Text:='с';
              rc5:='с';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='с';
      rc1:='с';
    end else
      if R52.Text='' then begin
        R52.Text:='с';
        rc2:='с';
      end else
        if R53.Text='' then begin
          R53.Text:='с';
          rc3:='с';
        end else
          if R54.Text='' then begin
            R54.Text:='с';
            rc4:='с';
          end else
            if R55.Text='' then begin
              R55.Text:='с';
              rc5:='с';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='с';
      rc1:='с';
    end else
      if R62.Text='' then begin
        R62.Text:='с';
        rc2:='с';
      end else
        if R63.Text='' then begin
          R63.Text:='с';
          rc3:='с';
        end else
          if R64.Text='' then begin
            R64.Text:='с';
            rc4:='с';
          end else
            if R65.Text='' then begin
              R65.Text:='с';
              rc5:='с';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.мClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='м';
      rc1:='м';
    end else
      if R12.Text='' then begin
        R12.Text:='м';
        rc2:='м';
      end else
        if R13.Text='' then begin
          R13.Text:='м';
          rc3:='м';
        end else
          if R14.Text='' then begin
            R14.Text:='м';
            rc4:='м';
          end else
            if R15.Text='' then begin
              R15.Text:='м';
              rc5:='м';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='м';
      rc1:='м';
    end else
      if R22.Text='' then begin
        R22.Text:='м';
        rc2:='м';
      end else
        if R23.Text='' then begin
          R23.Text:='м';
          rc3:='м';
        end else
          if R24.Text='' then begin
            R24.Text:='м';
            rc4:='м';
          end else
            if R25.Text='' then begin
              R25.Text:='м';
              rc5:='м';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='м';
      rc1:='м';
    end else
      if R32.Text='' then begin
        R32.Text:='м';
        rc2:='м';
      end else
        if R33.Text='' then begin
          R33.Text:='м';
          rc3:='м';
        end else
          if R34.Text='' then begin
            R34.Text:='м';
            rc4:='м';
          end else
            if R35.Text='' then begin
              R35.Text:='м';
              rc5:='м';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='м';
      rc1:='м';
    end else
      if R42.Text='' then begin
        R42.Text:='м';
        rc2:='м';
      end else
        if R43.Text='' then begin
          R43.Text:='м';
          rc3:='м';
        end else
          if R44.Text='' then begin
            R44.Text:='м';
            rc4:='м';
          end else
            if R45.Text='' then begin
              R45.Text:='м';
              rc5:='м';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='м';
      rc1:='м';
    end else
      if R52.Text='' then begin
        R52.Text:='м';
        rc2:='м';
      end else
        if R53.Text='' then begin
          R53.Text:='м';
          rc3:='м';
        end else
          if R54.Text='' then begin
            R54.Text:='м';
            rc4:='м';
          end else
            if R55.Text='' then begin
              R55.Text:='м';
              rc5:='м';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='м';
      rc1:='м';
    end else
      if R62.Text='' then begin
        R62.Text:='м';
        rc2:='м';
      end else
        if R63.Text='' then begin
          R63.Text:='м';
          rc3:='м';
        end else
          if R64.Text='' then begin
            R64.Text:='м';
            rc4:='м';
          end else
            if R65.Text='' then begin
              R65.Text:='м';
              rc5:='м';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.иClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='и';
      rc1:='и';
    end else
      if R12.Text='' then begin
        R12.Text:='и';
        rc2:='и';
      end else
        if R13.Text='' then begin
          R13.Text:='и';
          rc3:='и';
        end else
          if R14.Text='' then begin
            R14.Text:='и';
            rc4:='и';
          end else
            if R15.Text='' then begin
              R15.Text:='и';
              rc5:='и';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='и';
      rc1:='и';
    end else
      if R22.Text='' then begin
        R22.Text:='и';
        rc2:='и';
      end else
        if R23.Text='' then begin
          R23.Text:='и';
          rc3:='и';
        end else
          if R24.Text='' then begin
            R24.Text:='и';
            rc4:='и';
          end else
            if R25.Text='' then begin
              R25.Text:='и';
              rc5:='и';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='и';
      rc1:='и';
    end else
      if R32.Text='' then begin
        R32.Text:='и';
        rc2:='и';
      end else
        if R33.Text='' then begin
          R33.Text:='и';
          rc3:='и';
        end else
          if R34.Text='' then begin
            R34.Text:='и';
            rc4:='и';
          end else
            if R35.Text='' then begin
              R35.Text:='и';
              rc5:='и';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='и';
      rc1:='и';
    end else
      if R42.Text='' then begin
        R42.Text:='и';
        rc2:='и';
      end else
        if R43.Text='' then begin
          R43.Text:='и';
          rc3:='и';
        end else
          if R44.Text='' then begin
            R44.Text:='и';
            rc4:='и';
          end else
            if R45.Text='' then begin
              R45.Text:='и';
              rc5:='и';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='и';
      rc1:='и';
    end else
      if R52.Text='' then begin
        R52.Text:='и';
        rc2:='и';
      end else
        if R53.Text='' then begin
          R53.Text:='и';
          rc3:='и';
        end else
          if R54.Text='' then begin
            R54.Text:='и';
            rc4:='и';
          end else
            if R55.Text='' then begin
              R55.Text:='и';
              rc5:='и';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='и';
      rc1:='и';
    end else
      if R62.Text='' then begin
        R62.Text:='и';
        rc2:='и';
      end else
        if R63.Text='' then begin
          R63.Text:='и';
          rc3:='и';
        end else
          if R64.Text='' then begin
            R64.Text:='и';
            rc4:='и';
          end else
            if R65.Text='' then begin
              R65.Text:='и';
              rc5:='и';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.тClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='т';
      rc1:='т';
    end else
      if R12.Text='' then begin
        R12.Text:='т';
        rc2:='т';
      end else
        if R13.Text='' then begin
          R13.Text:='т';
          rc3:='т';
        end else
          if R14.Text='' then begin
            R14.Text:='т';
            rc4:='т';
          end else
            if R15.Text='' then begin
              R15.Text:='т';
              rc5:='т';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='т';
      rc1:='т';
    end else
      if R22.Text='' then begin
        R22.Text:='т';
        rc2:='т';
      end else
        if R23.Text='' then begin
          R23.Text:='т';
          rc3:='т';
        end else
          if R24.Text='' then begin
            R24.Text:='т';
            rc4:='т';
          end else
            if R25.Text='' then begin
              R25.Text:='т';
              rc5:='т';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='т';
      rc1:='т';
    end else
      if R32.Text='' then begin
        R32.Text:='т';
        rc2:='т';
      end else
        if R33.Text='' then begin
          R33.Text:='т';
          rc3:='т';
        end else
          if R34.Text='' then begin
            R34.Text:='т';
            rc4:='т';
          end else
            if R35.Text='' then begin
              R35.Text:='т';
              rc5:='т';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='т';
      rc1:='т';
    end else
      if R42.Text='' then begin
        R42.Text:='т';
        rc2:='т';
      end else
        if R43.Text='' then begin
          R43.Text:='т';
          rc3:='т';
        end else
          if R44.Text='' then begin
            R44.Text:='т';
            rc4:='т';
          end else
            if R45.Text='' then begin
              R45.Text:='т';
              rc5:='т';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='т';
      rc1:='т';
    end else
      if R52.Text='' then begin
        R52.Text:='т';
        rc2:='т';
      end else
        if R53.Text='' then begin
          R53.Text:='т';
          rc3:='т';
        end else
          if R54.Text='' then begin
            R54.Text:='т';
            rc4:='т';
          end else
            if R55.Text='' then begin
              R55.Text:='т';
              rc5:='т';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='т';
      rc1:='т';
    end else
      if R62.Text='' then begin
        R62.Text:='т';
        rc2:='т';
      end else
        if R63.Text='' then begin
          R63.Text:='т';
          rc3:='т';
        end else
          if R64.Text='' then begin
            R64.Text:='т';
            rc4:='т';
          end else
            if R65.Text='' then begin
              R65.Text:='т';
              rc5:='т';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ьClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ь';
      rc1:='ь';
    end else
      if R12.Text='' then begin
        R12.Text:='ь';
        rc2:='ь';
      end else
        if R13.Text='' then begin
          R13.Text:='ь';
          rc3:='ь';
        end else
          if R14.Text='' then begin
            R14.Text:='ь';
            rc4:='ь';
          end else
            if R15.Text='' then begin
              R15.Text:='ь';
              rc5:='ь';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ь';
      rc1:='ь';
    end else
      if R22.Text='' then begin
        R22.Text:='ь';
        rc2:='ь';
      end else
        if R23.Text='' then begin
          R23.Text:='ь';
          rc3:='ь';
        end else
          if R24.Text='' then begin
            R24.Text:='ь';
            rc4:='ь';
          end else
            if R25.Text='' then begin
              R25.Text:='ь';
              rc5:='ь';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ь';
      rc1:='ь';
    end else
      if R32.Text='' then begin
        R32.Text:='ь';
        rc2:='ь';
      end else
        if R33.Text='' then begin
          R33.Text:='ь';
          rc3:='ь';
        end else
          if R34.Text='' then begin
            R34.Text:='ь';
            rc4:='ь';
          end else
            if R35.Text='' then begin
              R35.Text:='ь';
              rc5:='ь';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ь';
      rc1:='ь';
    end else
      if R42.Text='' then begin
        R42.Text:='ь';
        rc2:='ь';
      end else
        if R43.Text='' then begin
          R43.Text:='ь';
          rc3:='ь';
        end else
          if R44.Text='' then begin
            R44.Text:='ь';
            rc4:='ь';
          end else
            if R45.Text='' then begin
              R45.Text:='ь';
              rc5:='ь';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ь';
      rc1:='ь';
    end else
      if R52.Text='' then begin
        R52.Text:='ь';
        rc2:='ь';
      end else
        if R53.Text='' then begin
          R53.Text:='ь';
          rc3:='ь';
        end else
          if R54.Text='' then begin
            R54.Text:='ь';
            rc4:='ь';
          end else
            if R55.Text='' then begin
              R55.Text:='ь';
              rc5:='ь';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ь';
      rc1:='ь';
    end else
      if R62.Text='' then begin
        R62.Text:='ь';
        rc2:='ь';
      end else
        if R63.Text='' then begin
          R63.Text:='ь';
          rc3:='ь';
        end else
          if R64.Text='' then begin
            R64.Text:='ь';
            rc4:='ь';
          end else
            if R65.Text='' then begin
              R65.Text:='ь';
              rc5:='ь';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.бClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='б';
      rc1:='б';
    end else
      if R12.Text='' then begin
        R12.Text:='б';
        rc2:='б';
      end else
        if R13.Text='' then begin
          R13.Text:='б';
          rc3:='б';
        end else
          if R14.Text='' then begin
            R14.Text:='б';
            rc4:='б';
          end else
            if R15.Text='' then begin
              R15.Text:='б';
              rc5:='б';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='б';
      rc1:='б';
    end else
      if R22.Text='' then begin
        R22.Text:='б';
        rc2:='б';
      end else
        if R23.Text='' then begin
          R23.Text:='б';
          rc3:='б';
        end else
          if R24.Text='' then begin
            R24.Text:='б';
            rc4:='б';
          end else
            if R25.Text='' then begin
              R25.Text:='б';
              rc5:='б';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='б';
      rc1:='б';
    end else
      if R32.Text='' then begin
        R32.Text:='б';
        rc2:='б';
      end else
        if R33.Text='' then begin
          R33.Text:='б';
          rc3:='б';
        end else
          if R34.Text='' then begin
            R34.Text:='б';
            rc4:='б';
          end else
            if R35.Text='' then begin
              R35.Text:='б';
              rc5:='б';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='б';
      rc1:='б';
    end else
      if R42.Text='' then begin
        R42.Text:='б';
        rc2:='б';
      end else
        if R43.Text='' then begin
          R43.Text:='б';
          rc3:='б';
        end else
          if R44.Text='' then begin
            R44.Text:='б';
            rc4:='б';
          end else
            if R45.Text='' then begin
              R45.Text:='б';
              rc5:='б';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='б';
      rc1:='б';
    end else
      if R52.Text='' then begin
        R52.Text:='б';
        rc2:='б';
      end else
        if R53.Text='' then begin
          R53.Text:='б';
          rc3:='б';
        end else
          if R54.Text='' then begin
            R54.Text:='б';
            rc4:='б';
          end else
            if R55.Text='' then begin
              R55.Text:='б';
              rc5:='б';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='б';
      rc1:='б';
    end else
      if R62.Text='' then begin
        R62.Text:='б';
        rc2:='б';
      end else
        if R63.Text='' then begin
          R63.Text:='б';
          rc3:='б';
        end else
          if R64.Text='' then begin
            R64.Text:='б';
            rc4:='б';
          end else
            if R65.Text='' then begin
              R65.Text:='б';
              rc5:='б';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.юClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ю';
      rc1:='ю';
    end else
      if R12.Text='' then begin
        R12.Text:='ю';
        rc2:='ю';
      end else
        if R13.Text='' then begin
          R13.Text:='ю';
          rc3:='ю';
        end else
          if R14.Text='' then begin
            R14.Text:='ю';
            rc4:='ю';
          end else
            if R15.Text='' then begin
              R15.Text:='ю';
              rc5:='ю';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ю';
      rc1:='ю';
    end else
      if R22.Text='' then begin
        R22.Text:='ю';
        rc2:='ю';
      end else
        if R23.Text='' then begin
          R23.Text:='ю';
          rc3:='ю';
        end else
          if R24.Text='' then begin
            R24.Text:='ю';
            rc4:='ю';
          end else
            if R25.Text='' then begin
              R25.Text:='ю';
              rc5:='ю';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ю';
      rc1:='ю';
    end else
      if R32.Text='' then begin
        R32.Text:='ю';
        rc2:='ю';
      end else
        if R33.Text='' then begin
          R33.Text:='ю';
          rc3:='ю';
        end else
          if R34.Text='' then begin
            R34.Text:='ю';
            rc4:='ю';
          end else
            if R35.Text='' then begin
              R35.Text:='ю';
              rc5:='ю';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ю';
      rc1:='ю';
    end else
      if R42.Text='' then begin
        R42.Text:='ю';
        rc2:='ю';
      end else
        if R43.Text='' then begin
          R43.Text:='ю';
          rc3:='ю';
        end else
          if R44.Text='' then begin
            R44.Text:='ю';
            rc4:='ю';
          end else
            if R45.Text='' then begin
              R45.Text:='ю';
              rc5:='ю';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ю';
      rc1:='ю';
    end else
      if R52.Text='' then begin
        R52.Text:='ю';
        rc2:='ю';
      end else
        if R53.Text='' then begin
          R53.Text:='ю';
          rc3:='ю';
        end else
          if R54.Text='' then begin
            R54.Text:='ю';
            rc4:='ю';
          end else
            if R55.Text='' then begin
              R55.Text:='ю';
              rc5:='ю';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ю';
      rc1:='ю';
    end else
      if R62.Text='' then begin
        R62.Text:='ю';
        rc2:='ю';
      end else
        if R63.Text='' then begin
          R63.Text:='ю';
          rc3:='ю';
        end else
          if R64.Text='' then begin
            R64.Text:='ю';
            rc4:='ю';
          end else
            if R65.Text='' then begin
              R65.Text:='ю';
              rc5:='ю';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.жClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ж';
      rc1:='ж';
    end else
      if R12.Text='' then begin
        R12.Text:='ж';
        rc2:='ж';
      end else
        if R13.Text='' then begin
          R13.Text:='ж';
          rc3:='ж';
        end else
          if R14.Text='' then begin
            R14.Text:='ж';
            rc4:='ж';
          end else
            if R15.Text='' then begin
              R15.Text:='ж';
              rc5:='ж';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ж';
      rc1:='ж';
    end else
      if R22.Text='' then begin
        R22.Text:='ж';
        rc2:='ж';
      end else
        if R23.Text='' then begin
          R23.Text:='ж';
          rc3:='ж';
        end else
          if R24.Text='' then begin
            R24.Text:='ж';
            rc4:='ж';
          end else
            if R25.Text='' then begin
              R25.Text:='ж';
              rc5:='ж';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ж';
      rc1:='ж';
    end else
      if R32.Text='' then begin
        R32.Text:='ж';
        rc2:='ж';
      end else
        if R33.Text='' then begin
          R33.Text:='ж';
          rc3:='ж';
        end else
          if R34.Text='' then begin
            R34.Text:='ж';
            rc4:='ж';
          end else
            if R35.Text='' then begin
              R35.Text:='ж';
              rc5:='ж';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ж';
      rc1:='ж';
    end else
      if R42.Text='' then begin
        R42.Text:='ж';
        rc2:='ж';
      end else
        if R43.Text='' then begin
          R43.Text:='ж';
          rc3:='ж';
        end else
          if R44.Text='' then begin
            R44.Text:='ж';
            rc4:='ж';
          end else
            if R45.Text='' then begin
              R45.Text:='ж';
              rc5:='ж';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ж';
      rc1:='ж';
    end else
      if R52.Text='' then begin
        R52.Text:='ж';
        rc2:='ж';
      end else
        if R53.Text='' then begin
          R53.Text:='ж';
          rc3:='ж';
        end else
          if R54.Text='' then begin
            R54.Text:='ж';
            rc4:='ж';
          end else
            if R55.Text='' then begin
              R55.Text:='ж';
              rc5:='ж';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ж';
      rc1:='ж';
    end else
      if R62.Text='' then begin
        R62.Text:='ж';
        rc2:='ж';
      end else
        if R63.Text='' then begin
          R63.Text:='ж';
          rc3:='ж';
        end else
          if R64.Text='' then begin
            R64.Text:='ж';
            rc4:='ж';
          end else
            if R65.Text='' then begin
              R65.Text:='ж';
              rc5:='ж';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ёClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ё';
      rc1:='ё';
    end else
      if R12.Text='' then begin
        R12.Text:='ё';
        rc2:='ё';
      end else
        if R13.Text='' then begin
          R13.Text:='ё';
          rc3:='ё';
        end else
          if R14.Text='' then begin
            R14.Text:='ё';
            rc4:='ё';
          end else
            if R15.Text='' then begin
              R15.Text:='ё';
              rc5:='ё';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ё';
      rc1:='ё';
    end else
      if R22.Text='' then begin
        R22.Text:='ё';
        rc2:='ё';
      end else
        if R23.Text='' then begin
          R23.Text:='ё';
          rc3:='ё';
        end else
          if R24.Text='' then begin
            R24.Text:='ё';
            rc4:='ё';
          end else
            if R25.Text='' then begin
              R25.Text:='ё';
              rc5:='ё';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ё';
      rc1:='ё';
    end else
      if R32.Text='' then begin
        R32.Text:='ё';
        rc2:='ё';
      end else
        if R33.Text='' then begin
          R33.Text:='ё';
          rc3:='ё';
        end else
          if R34.Text='' then begin
            R34.Text:='ё';
            rc4:='ё';
          end else
            if R35.Text='' then begin
              R35.Text:='ё';
              rc5:='ё';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ё';
      rc1:='ё';
    end else
      if R42.Text='' then begin
        R42.Text:='ё';
        rc2:='ё';
      end else
        if R43.Text='' then begin
          R43.Text:='ё';
          rc3:='ё';
        end else
          if R44.Text='' then begin
            R44.Text:='ё';
            rc4:='ё';
          end else
            if R45.Text='' then begin
              R45.Text:='ё';
              rc5:='ё';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ё';
      rc1:='ё';
    end else
      if R52.Text='' then begin
        R52.Text:='ё';
        rc2:='ё';
      end else
        if R53.Text='' then begin
          R53.Text:='ё';
          rc3:='ё';
        end else
          if R54.Text='' then begin
            R54.Text:='ё';
            rc4:='ё';
          end else
            if R55.Text='' then begin
              R55.Text:='ё';
              rc5:='ё';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ё';
      rc1:='ё';
    end else
      if R62.Text='' then begin
        R62.Text:='ё';
        rc2:='ё';
      end else
        if R63.Text='' then begin
          R63.Text:='ё';
          rc3:='ё';
        end else
          if R64.Text='' then begin
            R64.Text:='ё';
            rc4:='ё';
          end else
            if R65.Text='' then begin
              R65.Text:='ё';
              rc5:='ё';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.хClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='х';
      rc1:='х';
    end else
      if R12.Text='' then begin
        R12.Text:='х';
        rc2:='х';
      end else
        if R13.Text='' then begin
          R13.Text:='х';
          rc3:='х';
        end else
          if R14.Text='' then begin
            R14.Text:='х';
            rc4:='х';
          end else
            if R15.Text='' then begin
              R15.Text:='х';
              rc5:='х';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='х';
      rc1:='х';
    end else
      if R22.Text='' then begin
        R22.Text:='х';
        rc2:='х';
      end else
        if R23.Text='' then begin
          R23.Text:='х';
          rc3:='х';
        end else
          if R24.Text='' then begin
            R24.Text:='х';
            rc4:='х';
          end else
            if R25.Text='' then begin
              R25.Text:='х';
              rc5:='х';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='х';
      rc1:='х';
    end else
      if R32.Text='' then begin
        R32.Text:='х';
        rc2:='х';
      end else
        if R33.Text='' then begin
          R33.Text:='х';
          rc3:='х';
        end else
          if R34.Text='' then begin
            R34.Text:='х';
            rc4:='х';
          end else
            if R35.Text='' then begin
              R35.Text:='х';
              rc5:='х';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='х';
      rc1:='х';
    end else
      if R42.Text='' then begin
        R42.Text:='х';
        rc2:='х';
      end else
        if R43.Text='' then begin
          R43.Text:='х';
          rc3:='х';
        end else
          if R44.Text='' then begin
            R44.Text:='х';
            rc4:='х';
          end else
            if R45.Text='' then begin
              R45.Text:='х';
              rc5:='х';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='х';
      rc1:='х';
    end else
      if R52.Text='' then begin
        R52.Text:='х';
        rc2:='х';
      end else
        if R53.Text='' then begin
          R53.Text:='х';
          rc3:='х';
        end else
          if R54.Text='' then begin
            R54.Text:='х';
            rc4:='х';
          end else
            if R55.Text='' then begin
              R55.Text:='х';
              rc5:='х';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='х';
      rc1:='х';
    end else
      if R62.Text='' then begin
        R62.Text:='х';
        rc2:='х';
      end else
        if R63.Text='' then begin
          R63.Text:='х';
          rc3:='х';
        end else
          if R64.Text='' then begin
            R64.Text:='х';
            rc4:='х';
          end else
            if R65.Text='' then begin
              R65.Text:='х';
              rc5:='х';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.эClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='э';
      rc1:='э';
    end else
      if R12.Text='' then begin
        R12.Text:='э';
        rc2:='э';
      end else
        if R13.Text='' then begin
          R13.Text:='э';
          rc3:='э';
        end else
          if R14.Text='' then begin
            R14.Text:='э';
            rc4:='э';
          end else
            if R15.Text='' then begin
              R15.Text:='э';
              rc5:='э';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='э';
      rc1:='э';
    end else
      if R22.Text='' then begin
        R22.Text:='э';
        rc2:='э';
      end else
        if R23.Text='' then begin
          R23.Text:='э';
          rc3:='э';
        end else
          if R24.Text='' then begin
            R24.Text:='э';
            rc4:='э';
          end else
            if R25.Text='' then begin
              R25.Text:='э';
              rc5:='э';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='э';
      rc1:='э';
    end else
      if R32.Text='' then begin
        R32.Text:='э';
        rc2:='э';
      end else
        if R33.Text='' then begin
          R33.Text:='э';
          rc3:='э';
        end else
          if R34.Text='' then begin
            R34.Text:='э';
            rc4:='э';
          end else
            if R35.Text='' then begin
              R35.Text:='э';
              rc5:='э';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='э';
      rc1:='э';
    end else
      if R42.Text='' then begin
        R42.Text:='э';
        rc2:='э';
      end else
        if R43.Text='' then begin
          R43.Text:='э';
          rc3:='э';
        end else
          if R44.Text='' then begin
            R44.Text:='э';
            rc4:='э';
          end else
            if R45.Text='' then begin
              R45.Text:='э';
              rc5:='э';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='э';
      rc1:='э';
    end else
      if R52.Text='' then begin
        R52.Text:='э';
        rc2:='э';
      end else
        if R53.Text='' then begin
          R53.Text:='э';
          rc3:='э';
        end else
          if R54.Text='' then begin
            R54.Text:='э';
            rc4:='э';
          end else
            if R55.Text='' then begin
              R55.Text:='э';
              rc5:='э';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='э';
      rc1:='э';
    end else
      if R62.Text='' then begin
        R62.Text:='э';
        rc2:='э';
      end else
        if R63.Text='' then begin
          R63.Text:='э';
          rc3:='э';
        end else
          if R64.Text='' then begin
            R64.Text:='э';
            rc4:='э';
          end else
            if R65.Text='' then begin
              R65.Text:='э';
              rc5:='э';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.ъClick(Sender: TObject);
begin
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='ъ';
      rc1:='ъ';
    end else
      if R12.Text='' then begin
        R12.Text:='ъ';
        rc2:='ъ';
      end else
        if R13.Text='' then begin
          R13.Text:='ъ';
          rc3:='ъ';
        end else
          if R14.Text='' then begin
            R14.Text:='ъ';
            rc4:='ъ';
          end else
            if R15.Text='' then begin
              R15.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='ъ';
      rc1:='ъ';
    end else
      if R22.Text='' then begin
        R22.Text:='ъ';
        rc2:='ъ';
      end else
        if R23.Text='' then begin
          R23.Text:='ъ';
          rc3:='ъ';
        end else
          if R24.Text='' then begin
            R24.Text:='ъ';
            rc4:='ъ';
          end else
            if R25.Text='' then begin
              R25.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='ъ';
      rc1:='ъ';
    end else
      if R32.Text='' then begin
        R32.Text:='ъ';
        rc2:='ъ';
      end else
        if R33.Text='' then begin
          R33.Text:='ъ';
          rc3:='ъ';
        end else
          if R34.Text='' then begin
            R34.Text:='ъ';
            rc4:='ъ';
          end else
            if R35.Text='' then begin
              R35.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='ъ';
      rc1:='ъ';
    end else
      if R42.Text='' then begin
        R42.Text:='ъ';
        rc2:='ъ';
      end else
        if R43.Text='' then begin
          R43.Text:='ъ';
          rc3:='ъ';
        end else
          if R44.Text='' then begin
            R44.Text:='ъ';
            rc4:='ъ';
          end else
            if R45.Text='' then begin
              R45.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='ъ';
      rc1:='ъ';
    end else
      if R52.Text='' then begin
        R52.Text:='ъ';
        rc2:='ъ';
      end else
        if R53.Text='' then begin
          R53.Text:='ъ';
          rc3:='ъ';
        end else
          if R54.Text='' then begin
            R54.Text:='ъ';
            rc4:='ъ';
          end else
            if R55.Text='' then begin
              R55.Text:='ъ';
              rc5:='ъ';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='ъ';
      rc1:='ъ';
    end else
      if R62.Text='' then begin
        R62.Text:='ъ';
        rc2:='ъ';
      end else
        if R63.Text='' then begin
          R63.Text:='ъ';
          rc3:='ъ';
        end else
          if R64.Text='' then begin
            R64.Text:='ъ';
            rc4:='ъ';
          end else
            if R65.Text='' then begin
              R65.Text:='ъ';
              rc5:='ъ';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.startClick(Sender: TObject);
begin
  delete.Enabled:=true;
  enter.Enabled:=true;
  AssignFile(input, '.\assets\internal\rus_5_down.txt');
  reset(input);
  k:=0;
  while not eof(input) do begin
    inc(k);
    readln(input,s);
    a[k]:=s;
  end;
  k:=random(k)+1;
//  label2.Text:=a[k];
  //  label1.Text:='';
  label3.Text:='Погнали!';
  closefile(input);
  otvet:='';
    for i:=1 to 5 do begin
      ask[i]:=0;
      ques[i]:=0;
    end;

  rc1:=#0; rc2:=#0; rc3:=#0; rc4:=#0; rc5:=#0;
  row:='';
  words[1]:=''; words[2]:=''; words[3]:=''; words[4]:=''; words[5]:=''; words[6]:='';

  R11.Text:='';  R12.Text:='';  R13.Text:='';  R14.Text:='';  R15.Text:='';
  R21.Text:='';  R22.Text:='';  R23.Text:='';  R24.Text:='';  R25.Text:='';
  R31.Text:='';  R32.Text:='';  R33.Text:='';  R34.Text:='';  R35.Text:='';
  R41.Text:='';  R42.Text:='';  R43.Text:='';  R44.Text:='';  R45.Text:='';
  R51.Text:='';  R52.Text:='';  R53.Text:='';  R54.Text:='';  R55.Text:='';
  R61.Text:='';  R62.Text:='';  R63.Text:='';  R64.Text:='';  R65.Text:='';

  R11.TextSettings.FontColor:=TAlphaColorRec.Black;
  R12.TextSettings.FontColor:=TAlphaColorRec.Black;
  R13.TextSettings.FontColor:=TAlphaColorRec.Black;
  R14.TextSettings.FontColor:=TAlphaColorRec.Black;
  R15.TextSettings.FontColor:=TAlphaColorRec.Black;

  R21.TextSettings.FontColor:=TAlphaColorRec.Black;
  R22.TextSettings.FontColor:=TAlphaColorRec.Black;
  R23.TextSettings.FontColor:=TAlphaColorRec.Black;
  R24.TextSettings.FontColor:=TAlphaColorRec.Black;
  R25.TextSettings.FontColor:=TAlphaColorRec.Black;

  R31.TextSettings.FontColor:=TAlphaColorRec.Black;
  R32.TextSettings.FontColor:=TAlphaColorRec.Black;
  R33.TextSettings.FontColor:=TAlphaColorRec.Black;
  R34.TextSettings.FontColor:=TAlphaColorRec.Black;
  R35.TextSettings.FontColor:=TAlphaColorRec.Black;

  R41.TextSettings.FontColor:=TAlphaColorRec.Black;
  R42.TextSettings.FontColor:=TAlphaColorRec.Black;
  R43.TextSettings.FontColor:=TAlphaColorRec.Black;
  R44.TextSettings.FontColor:=TAlphaColorRec.Black;
  R45.TextSettings.FontColor:=TAlphaColorRec.Black;

  R51.TextSettings.FontColor:=TAlphaColorRec.Black;
  R52.TextSettings.FontColor:=TAlphaColorRec.Black;
  R53.TextSettings.FontColor:=TAlphaColorRec.Black;
  R54.TextSettings.FontColor:=TAlphaColorRec.Black;
  R55.TextSettings.FontColor:=TAlphaColorRec.Black;

  R61.TextSettings.FontColor:=TAlphaColorRec.Black;
  R62.TextSettings.FontColor:=TAlphaColorRec.Black;
  R63.TextSettings.FontColor:=TAlphaColorRec.Black;
  R64.TextSettings.FontColor:=TAlphaColorRec.Black;
  R65.TextSettings.FontColor:=TAlphaColorRec.Black;
end;

procedure TForm2.deleteClick(Sender: TObject);
begin
  if words[1]='' then begin
  R11.TextSettings.FontColor:=TAlphaColorRec.Black;
  R12.TextSettings.FontColor:=TAlphaColorRec.Black;
  R13.TextSettings.FontColor:=TAlphaColorRec.Black;
  R14.TextSettings.FontColor:=TAlphaColorRec.Black;
  R15.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R15.Text<>'' then begin
    R15.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R14.Text<>'' then begin
      R14.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R13.Text<>'' then begin
        R13.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R12.Text<>'' then begin
          R12.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R11.Text<>'' then begin
            R11.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
  end else if words[2]='' then begin
  R21.TextSettings.FontColor:=TAlphaColorRec.Black;
  R22.TextSettings.FontColor:=TAlphaColorRec.Black;
  R23.TextSettings.FontColor:=TAlphaColorRec.Black;
  R24.TextSettings.FontColor:=TAlphaColorRec.Black;
  R25.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R25.Text<>'' then begin
    R25.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R24.Text<>'' then begin
      R24.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R23.Text<>'' then begin
        R23.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R22.Text<>'' then begin
          R22.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R21.Text<>'' then begin
            R21.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[3]='' then begin
  R31.TextSettings.FontColor:=TAlphaColorRec.Black;
  R32.TextSettings.FontColor:=TAlphaColorRec.Black;
  R33.TextSettings.FontColor:=TAlphaColorRec.Black;
  R34.TextSettings.FontColor:=TAlphaColorRec.Black;
  R35.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R35.Text<>'' then begin
    R35.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R34.Text<>'' then begin
      R34.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R33.Text<>'' then begin
        R33.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R32.Text<>'' then begin
          R32.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R31.Text<>'' then begin
            R31.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[4]='' then begin
  R41.TextSettings.FontColor:=TAlphaColorRec.Black;
  R42.TextSettings.FontColor:=TAlphaColorRec.Black;
  R43.TextSettings.FontColor:=TAlphaColorRec.Black;
  R44.TextSettings.FontColor:=TAlphaColorRec.Black;
  R45.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R45.Text<>'' then begin
    R45.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R44.Text<>'' then begin
      R44.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R43.Text<>'' then begin
        R43.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R42.Text<>'' then begin
          R42.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R41.Text<>'' then begin
            R41.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[5]='' then begin
  R51.TextSettings.FontColor:=TAlphaColorRec.Black;
  R52.TextSettings.FontColor:=TAlphaColorRec.Black;
  R53.TextSettings.FontColor:=TAlphaColorRec.Black;
  R54.TextSettings.FontColor:=TAlphaColorRec.Black;
  R55.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R55.Text<>'' then begin
    R55.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R54.Text<>'' then begin
      R54.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R53.Text<>'' then begin
        R53.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R52.Text<>'' then begin
          R52.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R51.Text<>'' then begin
            R51.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
        end else if words[6]='' then begin
  R61.TextSettings.FontColor:=TAlphaColorRec.Black;
  R62.TextSettings.FontColor:=TAlphaColorRec.Black;
  R63.TextSettings.FontColor:=TAlphaColorRec.Black;
  R64.TextSettings.FontColor:=TAlphaColorRec.Black;
  R65.TextSettings.FontColor:=TAlphaColorRec.Black;
  if R65.Text<>'' then begin
    R65.Text:='';
    rc5:=#0;
    row:=rc1+rc2+rc3+rc4;
    //  label1.Text:=row;
  end else
    if R64.Text<>'' then begin
      R64.Text:='';
      rc4:=#0;
      row:=rc1+rc2+rc3;
      //  label1.Text:=row;
    end else
      if R63.Text<>'' then begin
        R63.Text:='';
        rc3:=#0;
        row:=rc1+rc2;
        //  label1.Text:=row;
      end else
        if R62.Text<>'' then begin
          R62.Text:='';
          rc2:=#0;
          row:=rc1;
          //  label1.Text:=row;
        end else
          if R61.Text<>'' then begin
            R61.Text:='';
            rc1:=#0;
            row:='';
            //  label1.Text:=row;
        end;
  end;

end;

procedure TForm2.enterClick(Sender: TObject);
begin
  if rc5<>#0 then begin
    label3.Text:='';
    j:=1;
    f:=false;
    check:=a[k];       //слово на проверку check
    while (j<1551) and (f=false) do begin
      if a[j]=row then
        f:=true;
      j:=j+1;
    end;
    for i:=1 to 5 do begin
      ask[i]:=0;
      ques[i]:=0;
    end;
    if f=true then begin
      if words[1]='' then begin
        rc1:=#0;
        rc2:=#0;
        rc3:=#0;
        rc4:=#0;
        rc5:=#0;
        words[1]:=row;
        matches(check,row);
        if ask[1]=2 then R11.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[2]=2 then R12.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[3]=2 then R13.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[4]=2 then R14.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[5]=2 then R15.TextSettings.FontColor:=TAlphaColorRec.Green;
        if ask[1]=1 then R11.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[2]=1 then R12.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[3]=1 then R13.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[4]=1 then R14.TextSettings.FontColor:=TAlphaColorRec.Yellow;
        if ask[5]=1 then R15.TextSettings.FontColor:=TAlphaColorRec.Yellow;

      end else if words[2]='' then begin
          rc1:=#0;
          rc2:=#0;
          rc3:=#0;
          rc4:=#0;
          rc5:=#0;
          words[2]:=row;
          matches(check,row);
          if ask[1]=2 then R21.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[2]=2 then R22.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[3]=2 then R23.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[4]=2 then R24.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[5]=2 then R25.TextSettings.FontColor:=TAlphaColorRec.Green;
          if ask[1]=1 then R21.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[2]=1 then R22.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[3]=1 then R23.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[4]=1 then R24.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          if ask[5]=1 then R25.TextSettings.FontColor:=TAlphaColorRec.Yellow;
          end else if words[3]='' then begin
              rc1:=#0;
              rc2:=#0;
              rc3:=#0;
              rc4:=#0;
              rc5:=#0;
              words[3]:=row;
              matches(check,row);
              if ask[1]=2 then R31.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[2]=2 then R32.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[3]=2 then R33.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[4]=2 then R34.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[5]=2 then R35.TextSettings.FontColor:=TAlphaColorRec.Green;
              if ask[1]=1 then R31.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[2]=1 then R32.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[3]=1 then R33.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[4]=1 then R34.TextSettings.FontColor:=TAlphaColorRec.Yellow;
              if ask[5]=1 then R35.TextSettings.FontColor:=TAlphaColorRec.Yellow;

              end else if words[4]='' then begin
                  rc1:=#0;
                  rc2:=#0;
                  rc3:=#0;
                  rc4:=#0;
                  rc5:=#0;
                  words[4]:=row;
                  matches(check,row);
                  if ask[1]=2 then R41.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[2]=2 then R42.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[3]=2 then R43.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[4]=2 then R44.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[5]=2 then R45.TextSettings.FontColor:=TAlphaColorRec.Green;
                  if ask[1]=1 then R41.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[2]=1 then R42.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[3]=1 then R43.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[4]=1 then R44.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                  if ask[5]=1 then R45.TextSettings.FontColor:=TAlphaColorRec.Yellow;

                  end else if words[5]='' then begin
                      rc1:=#0;
                      rc2:=#0;
                      rc3:=#0;
                      rc4:=#0;
                      rc5:=#0;
                      words[5]:=row;
                      matches(check,row);
                      if ask[1]=2 then R51.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[2]=2 then R52.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[3]=2 then R53.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[4]=2 then R54.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[5]=2 then R55.TextSettings.FontColor:=TAlphaColorRec.Green;
                      if ask[1]=1 then R51.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[2]=1 then R52.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[3]=1 then R53.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[4]=1 then R54.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                      if ask[5]=1 then R55.TextSettings.FontColor:=TAlphaColorRec.Yellow;

                      end else if words[6]='' then begin
                          rc1:=#0;
                          rc2:=#0;
                          rc3:=#0;
                          rc4:=#0;
                          rc5:=#0;
                          words[6]:=row;
                          matches(check,row);
                          if ask[1]=2 then R61.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[2]=2 then R62.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[3]=2 then R63.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[4]=2 then R64.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[5]=2 then R65.TextSettings.FontColor:=TAlphaColorRec.Green;
                          if ask[1]=1 then R61.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[2]=1 then R62.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[3]=1 then R63.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[4]=1 then R64.TextSettings.FontColor:=TAlphaColorRec.Yellow;
                          if ask[5]=1 then R65.TextSettings.FontColor:=TAlphaColorRec.Yellow;

                          end
        end else begin
            label3.TextSettings.FontColor:=TAlphaColorRec.Red;
            label3.Text:='Такого слова не существует';

            end;
  end;
  if (words[6]<>'') and (words[6]<>check) then
    label3.Text:='Увы и ах, мой дорогой, не получилось, не срослось.';
  if row=check then begin
    inc(wins);
    stats.Text:=inttostr(wins);
  end;
  end;

end.
