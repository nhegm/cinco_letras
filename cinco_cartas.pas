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
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    �: TButton;
    enter: TButton;
    �: TButton;
    delete: TButton;
    �: TButton;
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
    InfoLabel: TLabel;
    start: TButton;
    stats: TButton;
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure �Click(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure startClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure infoClick(Sender: TObject);


  private
    { Private declarations }
  public

  end;

var
  Form2: TForm2;

implementation

uses info;
{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

const voc: array [1..1550] of string [5]=('�����','�����','�����','�����',
'�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','����','����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','����','�����','�����',
'�����','����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','����','�����','�����','�����','�����','����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','����',
'�����','����','����','�����','�����','�����','����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����','�����','�����','�����','�����','�����','�����','�����',
'�����','�����');

var row,s,check,otvet,colorstr: string [5];      // row - �������� ������, check - ������������� �����
    rc1, rc2, rc3, rc4, rc5: char;               // �����, ��� ������� � ������
    i,j,k,l,wins: integer;                       // ������ ��������
    a: array [1..1550] of string;                // ������ ����� �������
    words: array [1..6] of string [5];           // ������ �� ����� ��������
    f: boolean;                                  // �������� ����� �� �������?
    ask,ques: array [1..5] of integer;           // ques - ���������� � ����������; ask - � ��������
    keys: array [1..33] of TButton;

procedure TForm2.FormCreate(Sender: TObject);
begin
  keys[1]:=�;
  keys[2]:=�;
  keys[3]:=�;
  keys[4]:=�;
  keys[5]:=�;
  keys[6]:=�;
  keys[7]:=�;
  keys[8]:=�;
  keys[9]:=�;
  keys[10]:=�;
  keys[11]:=�;
  keys[12]:=�;
  keys[13]:=�;
  keys[14]:=�;
  keys[15]:=�;
  keys[16]:=�;
  keys[17]:=�;
  keys[18]:=�;
  keys[19]:=�;
  keys[20]:=�;
  keys[21]:=�;
  keys[22]:=�;
  keys[23]:=�;
  keys[24]:=�;
  keys[25]:=�;
  keys[26]:=�;
  keys[27]:=�;
  keys[28]:=�;
  keys[29]:=�;
  keys[30]:=�;
  keys[31]:=�;
  keys[32]:=�;
  keys[33]:=�;
end;



procedure TForm2.infoClick(Sender: TObject);
var
 res:word;
begin
  // �������� �������� �����
  infoForm.Show;

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

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
//        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
 // Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
//  Label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.�Click(Sender: TObject);
begin
  InfoLabel.Text:='';
  if words[1]='' then
    if R11.Text='' then begin
      R11.Text:='�';
      rc1:='�';
    end else
      if R12.Text='' then begin
        R12.Text:='�';
        rc2:='�';
      end else
        if R13.Text='' then begin
          R13.Text:='�';
          rc3:='�';
        end else
          if R14.Text='' then begin
            R14.Text:='�';
            rc4:='�';
          end else
            if R15.Text='' then begin
              R15.Text:='�';
              rc5:='�';
            end;
  if (words[2]='') and (words[1]<>'') then
    if R21.Text='' then begin
      R21.Text:='�';
      rc1:='�';
    end else
      if R22.Text='' then begin
        R22.Text:='�';
        rc2:='�';
      end else
        if R23.Text='' then begin
          R23.Text:='�';
          rc3:='�';
        end else
          if R24.Text='' then begin
            R24.Text:='�';
            rc4:='�';
          end else
            if R25.Text='' then begin
              R25.Text:='�';
              rc5:='�';
            end;
  if (words[3]='') and (words[2]<>'') then
    if R31.Text='' then begin
      R31.Text:='�';
      rc1:='�';
    end else
      if R32.Text='' then begin
        R32.Text:='�';
        rc2:='�';
      end else
        if R33.Text='' then begin
          R33.Text:='�';
          rc3:='�';
        end else
          if R34.Text='' then begin
            R34.Text:='�';
            rc4:='�';
          end else
            if R35.Text='' then begin
              R35.Text:='�';
              rc5:='�';
            end;
  if (words[4]='') and (words[3]<>'') then
    if R41.Text='' then begin
      R41.Text:='�';
      rc1:='�';
    end else
      if R42.Text='' then begin
        R42.Text:='�';
        rc2:='�';
      end else
        if R43.Text='' then begin
          R43.Text:='�';
          rc3:='�';
        end else
          if R44.Text='' then begin
            R44.Text:='�';
            rc4:='�';
          end else
            if R45.Text='' then begin
              R45.Text:='�';
              rc5:='�';
            end;
  if (words[5]='') and (words[4]<>'') then
    if R51.Text='' then begin
      R51.Text:='�';
      rc1:='�';
    end else
      if R52.Text='' then begin
        R52.Text:='�';
        rc2:='�';
      end else
        if R53.Text='' then begin
          R53.Text:='�';
          rc3:='�';
        end else
          if R54.Text='' then begin
            R54.Text:='�';
            rc4:='�';
          end else
            if R55.Text='' then begin
              R55.Text:='�';
              rc5:='�';
            end;
  if (words[6]='') and (words[5]<>'') then
    if R61.Text='' then begin
      R61.Text:='�';
      rc1:='�';
    end else
      if R62.Text='' then begin
        R62.Text:='�';
        rc2:='�';
      end else
        if R63.Text='' then begin
          R63.Text:='�';
          rc3:='�';
        end else
          if R64.Text='' then begin
            R64.Text:='�';
            rc4:='�';
          end else
            if R65.Text='' then begin
              R65.Text:='�';
              rc5:='�';
            end;
  row:=rc1+rc2+rc3+rc4+rc5;
  //  label1.Text:=row;
end;

procedure TForm2.startClick(Sender: TObject);
begin
  InfoLabel.TextSettings.FontColor:=TAlphaColorRec.Black;
  delete.Enabled:=true;
  enter.Enabled:=true;
  k:=random(length(voc))+1;
  InfoLabel.Text:='�������!';
  otvet:='';
  for i:=1 to 5 do begin
    ask[i]:=0;
    ques[i]:=0;
  end;

  for I := 1 to 33 do
    keys[i].TextSettings.FontColor:=TAlphaColorRec.Black;

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
  InfoLabel.Text:='';
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
    InfoLabel.Text:='';
    j:=1;
    f:=false;
    check:=voc[k];       //����� �� �������� check
    while (j<1551) and (f=false) do begin
      if voc[j]=row then
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
        for j := 1 to 5 do
          for i := 1 to 32 do
            if (ord(row[j])=223+i) then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
        for j := 1 to 5 do
          if (row[j]='�') then
            if ask[j]=2 then
              keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
              else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                  else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                    keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
      infoLabel.Text:='�����������!';
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
          for j := 1 to 5 do
          for i := 1 to 32 do
            if (ord(row[j])=223+i) then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
          for j := 1 to 5 do
            if (row[j]='�') then
              if ask[j]=2 then
                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
          infoLabel.Text:='�����������!';
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
              for j := 1 to 5 do
                for i := 1 to 32 do
                  if (ord(row[j])=223+i) then
                    if ask[j]=2 then
                      keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                      else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                          else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                        for j := 1 to 5 do
              if (row[j]='�') then
                if ask[j]=2 then
                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                  else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                    keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                      else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
              infoLabel.Text:='�����������!';
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
                  for j := 1 to 5 do
                    for i := 1 to 32 do
                      if (ord(row[j])=223+i) then
                        if ask[j]=2 then
                          keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                          else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                              else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                  for j := 1 to 5 do
                    if (row[j]='�') then
                      if ask[j]=2 then
                        keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                        else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                          keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                            else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                  infoLabel.Text:='�����������!';
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
                      for j := 1 to 5 do
                        for i := 1 to 32 do
                          if (ord(row[j])=223+i) then
                            if ask[j]=2 then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                              else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                  else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                    keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                      for j := 1 to 5 do
                        if (row[j]='�') then
                          if ask[j]=2 then
                            keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                            else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                              keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                      infoLabel.Text:='�����������!';
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
                          for j := 1 to 5 do
                            for i := 1 to 32 do
                              if (ord(row[j])=223+i) then
                                if ask[j]=2 then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                                  else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                    keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                      else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                        keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                          for j := 1 to 5 do
                            if (row[j]='�') then
                              if ask[j]=2 then
                                keys[i].TextSettings.FontColor:=TAlphaColorRec.Green
                                else if (ask[j]=1) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                  keys[i].TextSettings.FontColor:=TAlphaColorRec.Yellow
                                    else if (ask[j]=0) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Yellow) and (keys[i].TextSettings.FontColor<>TAlphaColorRec.Green) then
                                      keys[i].TextSettings.FontColor:=TAlphaColorRec.White;
                          infoLabel.Text:='�����������!';
                          end
        end else begin
            InfoLabel.TextSettings.FontColor:=TAlphaColorRec.Red;
            InfoLabel.Text:='������ ����� �� ����������';
            end;
  end;
  if (words[6]<>'') and (words[6]<>check) then
    InfoLabel.Text:='��� � ��, ��� �������. ��� ���� ����� '+check;
  if row=check then begin
    inc(wins);
    stats.Text:=inttostr(wins);
  end;
  if True then

end;


end.
