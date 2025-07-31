unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ComCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    FontDialog1: TFontDialog;
    Button1: TButton;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
   Tr:string;
implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
  if FontDialog1.Execute then memo1.Font :=FontDialog1.Font;
end;


procedure TForm1.FormCreate(Sender: TObject);
var  q, p, k:integer;
begin
   Memo1.Text := '';
   Tr := '';
  for q := 0 to 255 do begin
    Tr := Tr+inttostr(q) +#9+ inttohex(q ,2) +#9;
    k := 128;
      for p:=1 to 8 do begin
        if q and k = k then Tr := Tr + '1' else Tr := Tr + '0';
        k := k div 2;
      end;
    if q=0 then Tr:=Tr+#9+#13+#10 else Tr:=Tr+#9+'   '+chr(q)+#13+#10;
  end;
  memo1.Text := Tr;
  StatusBar1.Panels[0].Text := 'Chars : ' + IntToStr(Memo1.Lines.Count-1);
end;

end.
