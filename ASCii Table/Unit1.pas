unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Shell.ShellCtrls, GpTextStream, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Hooks, System.Math;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel4: TPanel;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    SaveDialog1: TSaveDialog;
    CheckBox2: TCheckBox;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Memo4: TMemo;
    HeaderControl1: THeaderControl;
    Memo3: TMemo;
    HeaderControl2: THeaderControl;
    CheckBox3: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Declarations privates }
    KeyboardHook: TKeyboardHook;
    procedure KeyboardHookPREExecute(Hook: THook; var Hookmsg: THookMsg);
  public
    { Declarations public }
  end;

var
  Form1 : TForm1;
  Tr : string;

implementation

{$R *.dfm}
{ Intercept keyboard input; only reacts to keystrokes when the program
  itself is active (focused). }
procedure TForm1.KeyboardHookPREExecute(Hook: THook; var Hookmsg: THookMsg);
var
  Key: Word;
  AsciiWert: Integer;
begin
  AsciiWert := Ord(Key);

  //Here you can choose if you want to return the key stroke to the application or not
  Hookmsg.Result := IfThen(CheckBox3.Checked, 1, 0);
  // Retrieve the Virtual Key Code from WPARAM
  Key := Hookmsg.WPARAM;
  // output
  Label2.Caption := Char(key) + ' - ' + IntToStr(AsciiWert);
end;

procedure WriteToStream(s: string; fileName: string; codepage: word);
var
  fs: TFileStream;
  ts: TGpTextStream;
begin
  // create file
  fs := TFileStream.Create(fileName,fmCreate);
  try
    // Write a string to a stream using a specific code page
    ts := TGpTextStream.Create(fs,tsaccWrite,[],codepage);
    try
      // Write the string (length first so we know how much to read back)
      ts.WriteString(s);
    finally
      FreeAndNil(ts);
    end;
  finally
    FreeAndNil(fs);
  end;
end; { WriteToStream }

// In RichEdit, search, find, and scroll to the found text.
procedure RE_SearchForText_AndSelect(RichEdit: TRichEdit; SearchText: string);
var
  StartPos, Position, RemainingLength,
  WordCount, TextSize, SearchSize: Integer;
begin
  if SearchText = '' then Exit;

  with RichEdit do
  begin
    // speeds up the search process
    Lines.BeginUpdate;

    // reset colors...
    SelStart:=0;
    SelLength:=Length(RichEdit.Text) - 1;
    SelAttributes.Color:=$000000;

    WordCount:=0;
    StartPos:=0;
    // size of the entire text
    TextSize:=Length(RichEdit.Text);
    // size of the searched text
    SearchSize:=Length(SearchText);
    // length of a string or array
    RemainingLength:=TextSize;
    // transfer the position of the found text
    Position:=FindText(SearchText, StartPos, RemainingLength, []);

    if Position <> -1 then
    repeat
      // selects the word and changes color
      SelStart:=Position;
      SelLength:=SearchSize;
      SelAttributes.Color:=$0000FF;
      inc(WordCount);

      // changes startpos to after the current word
      StartPos:=Position + SearchSize;
      // Remaining Text to search for
      RemainingLength:=TextSize - StartPos;
      // find again...
      Position:=FindText(SearchText, StartPos, RemainingLength, []);
    until Position = -1;

    SetFocus;
    SelLength:=0; // reset selection...
    Lines.EndUpdate;
  end;
  // count founded chars
  Form1.StatusBar1.Panels[2].Text := IntToStr(WordCount) + ' times.';
end;

// Put windows in the foreground
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end else begin
    SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
  end;
end;

// Turning the editing of the boxes off and on
procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then
  begin
    Memo1.ReadOnly := false;
    Memo3.ReadOnly := false;
    Memo4.ReadOnly := false;
    RichEdit1.ReadOnly := false;
  end else begin
    Memo1.ReadOnly := true;
    Memo3.ReadOnly := true;
    Memo4.ReadOnly := true;
    RichEdit1.ReadOnly := true;
  end;
end;

// Activating the keyboard hook
procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
  begin
    KeyboardHook := TKeyboardHook.Create;
    KeyboardHook.OnPreExecute := KeyboardHookPREExecute;
    KeyboardHook.Active := true;
    Edit1.Enabled := false;
    Label1.Enabled := false;
  end else begin
    KeyboardHook.Active := false;
    KeyboardHook.Free;
    Label2.Caption := 'Hook off';
    Edit1.Enabled := true;
    Label1.Enabled := true;
  end;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Clear;
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Position: Integer;
  search : string;
begin
  if Edit1.Text = '' then Exit;

  if PageControl1.ActivePage = TabSheet1 then
  begin
    // The letter you are looking for
    search := '	'+Edit1.Text+'	';
    // Look for the first occurrence in the memo
    Position := Pos(search, Memo1.Text);
    if Position > 0 then
    begin
      // Focus on the memo
      Memo1.SetFocus;
      // Starting position (0-based)
      Memo1.SelStart := Position - 1;
      // Mark the length of the searched string
      Memo1.SelLength := Length(search);
    end;
  end;

  if PageControl1.ActivePage = TabSheet2 then
  begin
    // begin search
    RE_SearchForText_AndSelect(RichEdit1, Edit1.Text + '	');
    // set founde text to bold style
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];
    // scroll to the position
    RichEdit1.perform( EM_SCROLLCARET, 0, 0 );
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  q, p, k, j, i, count : integer;
  Liste: TStringList;
  ascii, s: String;
  Rect : TRect;
  AsciiString: string;
begin
  AsciiString := '';
  // Loop through printable standard ASCII codes
  for I := 32 to 126 do
  begin
    AsciiString := AsciiString + Char(I);
  end;
  // AsciiString now contains: !"#$%&'()*+,-./012345...xyz{|}~
  Memo4.Text := AsciiString;

  // count ascii chars
  count := 0;
  for i:=1 TO Length(Memo4.text) do
  begin
    if not (Memo4.text[i] in [#13,#10]) then
    inc(count);
  end;
  HeaderControl1.Sections[0].Text := 'ASCII : ' + IntToStr(count);

  // count ansi chars
  For i := 2 to 15 do
  begin
    s:='';
    For j:=0 To 15 do
    begin
      s:=s+Chr(i*16+j);
    end;
    Memo3.Lines.Add(s);
  end;

  count := 0;
  for i:=1 to Length(Memo3.text) do
  begin
    if not (Memo3.text[i] in [#13,#10]) then
    inc(count);
  end;
  HeaderControl2.Sections[0].Text := 'ANSI : ' + IntToStr(count);

  // Position the texts in memo and richedit
  SendMessage(Richedit1.Handle, EM_GETRECT, 0, LongInt(@Rect));
  Rect.Left := 15;
  Rect.Top := 15;
  SendMessage(Richedit1.Handle, EM_SETRECT, 0, LongInt(@Rect));

  SendMessage(Memo1.Handle, EM_GETRECT, 0, LongInt(@Rect));
  Rect.Left := 15;
  Rect.Top := 15;
  SendMessage(Memo1.Handle, EM_SETRECT, 0, LongInt(@Rect));

  // Calculate the list for the ASCII output.
  // "#9"  stands for TAB
  // "#10" represents the Line Feed (LF) ASCII control character
  // "#13" is the ASCII control character for a Carriage Return (CR)
  Tr := '';
  for q := 0 to 255 do
  begin
    Tr := Tr + IntToStr(q) + #9 + IntToHex(q ,2) + #9;
    k := 128;
      for p := 1 to 8 do
      begin
        if q and k = k then
          Tr := Tr + '1'
        else
          Tr := Tr + '0';

        k := k div 2;
      end;

      // Load additional data for the ASCII list
      Liste := TStringList.Create;
      try
        // load format default system unicode
        Liste.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\ascii.ini');
        if Liste.Count > 0 then
          ascii := Liste[q];
      finally
        Liste.Free;
      end;

    // append the loaded data to the text.
    if q = 0 then
      Tr := Tr + #9 + ascii + #13 + #10
    else
      Tr := Tr + #9 + chr(q) + #9 + ascii + #13 + #10;
  end;

  // output ascii
  Memo1.Text := Tr;

  { An additional tab is added in line nine which cannot be removed,
    therefore the entire line is replaced. }
  Memo1.Text := StringReplace(Memo1.Text, '9	09	00001001			&#09;',
                                          '9	09	00001001		&#09;',
                                          [rfReplaceAll, rfIgnoreCase]);
  StatusBar1.Panels[0].Text := 'ASCII Chars : ' + IntToStr(Memo1.Lines.Count-1);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AsciiWert: Integer;
begin
  // Determine the ASCII code as an integer (e.g., 65 for 'A').
  AsciiWert := Ord(Key);
  // output
  Label2.Caption := IntToStr(AsciiWert);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := '0 times.';
  case PageControl1.ActivePage.TabIndex of
    0 : StatusBar1.Panels[0].Text := 'ASCII Chars : ' + IntToStr(Memo1.Lines.Count-1);
    1 : StatusBar1.Panels[0].Text := 'ANSI Chars : ' + IntToStr(RichEdit1.Lines.Count);
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  s: string;
begin
  // ascii table unicode export
  if SaveDialog1.Execute then
  BEGIN
    if PageControl1.ActivePage = TabSheet1 then
    begin
      s := Memo1.Text;
      case ComboBox1.ItemIndex of
        0 : begin   // utf-7
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.UTF7);
            end;
        1 : begin   // utf-8
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.Default);
            end;
        2 : begin   // utf-8 with boom
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.UTF8);
            end;
        3 : begin   // utf-16 le
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.Unicode);
            end;
        4 : begin   // utf-16 be
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.BigEndianUnicode);
            end;
        5 : begin   // ascii
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.ASCII);
            end;
        6 : begin   // ansi
              Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.ANSI);
            end;
        7 : begin   // Unicode UCS-2 Little-Endian pseudo-codepage
              WriteToStream(s,SaveDialog1.FileName + '.txt',1250);
            end;
        8 : begin   // Unicode UCS-2 Little-Endian pseudo-codepage
              WriteToStream(s,SaveDialog1.FileName + '.txt',1252);
            end;
        9 : begin   // Unicode UCS-4 Little-Endian pseudo-codepage
              WriteToStream(s,SaveDialog1.FileName + '.txt',12000);
            end;
        10 : begin  // Western Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28591);
            end;
        11 : begin  // Central European Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28592);
            end;
        12 : begin  // Latin 3 Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28593);
            end;
        13 : begin  // Baltic Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28594);
            end;
        14 : begin  // Cyrillic Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28595);
            end;
        15 : begin  // Arabic Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28596);
            end;
        16 : begin  // Greek Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28597);
            end;
        17 : begin  // Hebrew Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28598);
            end;
        18 : begin  // Turkish Alphabet (ISO)
              WriteToStream(s,SaveDialog1.FileName + '.txt',28599);
            end;
      end;
    end;

    // ansi table export
    if PageControl1.ActivePage = TabSheet2 then
    begin
      s := RichEdit1.Text;
      RichEdit1.PlainText := true;
      case ComboBox1.ItemIndex of
        0 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.UTF7);
            end;
        1 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.Default);
            end;
        2 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.UTF8);
            end;
        3 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.Unicode);
            end;
        4 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.BigEndianUnicode);
            end;
        5 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.ASCII);
            end;
        6 : begin
              RichEdit1.Lines.SaveToFile(SaveDialog1.FileName + '.txt', TEncoding.ANSI);
            end;
        7 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',1250);
            end;
        8 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',1252);
            end;
        9 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',12000);
            end;
        10 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28591);
            end;
        11 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28592);
            end;
        12 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28593);
            end;
        13 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28594);
            end;
        14 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28595);
            end;
        15 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28596);
            end;
        16 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28597);
            end;
        17 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28598);
            end;
        18 : begin
              WriteToStream(s,SaveDialog1.FileName + '.txt',28599);
            end;
      end;
    end;
  END;
end;

end.
