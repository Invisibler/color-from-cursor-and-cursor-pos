unit kursTsv1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    B1: TButton;
    Ex: TEdit;
    Ey: TEdit;
    Lx: TLabel;
    Ly: TLabel;
    Lres: TLabel;
    Lres2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Dc:HDC;
  Pix:Cardinal;
  X,y:word;
  a:boolean;


implementation

{$R *.dfm}

procedure ClickXY(x,y: word);
begin
  {ѕреобразуем x и y к аболютным координатам курсора мышки}
  x := Round(x * (65535 / Screen.Width));
  y := Round(y * (65535 / Screen.Height));

 {ѕереместим курсор мыши}
  Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, x, y, 0, 0);
end;

procedure tsvet(x,y:word;var pix:cardinal);
begin
Dc:=GetDC(0);
Pix:=GetPixel(Dc, X, Y);
ReleaseDC(0, Dc);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Kpos: TPoint;
begin
  If GetKeyState(VK_SPACE) <>0 then
  begin tsvet(x,y,pix);
  GetCursorPos(Kpos);x:=Kpos.X;y:=Kpos.Y;
  Lx.Caption:=inttostr(x);Ly.Caption:=inttostr(y);
  Lres.Caption:=inttostr(pix);
  end;
end;

procedure TForm1.B1Click(Sender: TObject);
begin
x:=strtoint(Ex.Text);y:=strtoint(Ey.Text);
tsvet(x,y,pix);Lres2.Caption:=inttostr(pix);
B1.Enabled:=false;B1.Enabled:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Ex.Text:='0';Ey.text:='0';
end;

end.
