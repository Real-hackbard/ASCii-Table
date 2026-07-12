object Form1: TForm1
  Left = 1824
  Top = 177
  Caption = 'ASCii Table'
  ClientHeight = 522
  ClientWidth = 962
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 503
    Width = 962
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Text = 'found :'
        Width = 50
      end
      item
        Text = '0 times.'
        Width = 50
      end>
    ExplicitTop = 502
    ExplicitWidth = 958
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ASCii Table'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 958
    object SpeedButton1: TSpeedButton
      Left = 4
      Top = 15
      Width = 23
      Height = 22
      Hint = 'Export'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00004B00A18283A18283A18283A1
        8283A18283A18283A18283004B00004B00FF00FFFF00FFFF00FFFF00FF004B00
        008100008100DDD4D5004B00004B00DCE0E0D7DADECED5D7BDBABD004B000163
        01004B00FF00FFFF00FFFF00FF004B00008100008100E2D9D9004B00004B00D9
        D8DAD9DEE1D3D9DCC1BDC1004B00016301004B00FF00FFFF00FFFF00FF004B00
        008100008100E6DCDC004B00004B00D5D3D5D8DEE1D7DDE0C6C2C5004B000163
        01004B00FF00FFFF00FFFF00FF004B00008100008100EADEDEE7DDDDDDD4D5D7
        D3D5D5D7D9D7D8DACAC2C5004B00016301004B00FF00FFFF00FFFF00FF004B00
        0081000081000081000081000081000081000081000081000081000081000081
        00004B00FF00FFFF00FFFF00FF004B000081009DC29D9DC29D9DC29D9DC29D9D
        C29D9DC29D9DC29D9DC29D9DC29D008100004B00FF00FFFF00FFFF00FF004B00
        008100F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F70081
        00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FF004B00
        008100F7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F70081
        00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FF004B00
        008100F7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F70081
        00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FFFF00FF
        004B00F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7004B
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object ComboBox1: TComboBox
      Left = 33
      Top = 15
      Width = 257
      Height = 21
      Style = csDropDownList
      DropDownCount = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Text = 'UTF-7'
      Items.Strings = (
        'UTF-7'
        'UTF-8'
        'UTF-8 Boom'
        'UTF-16 LE'
        'UTF-16 BE'
        'ASCII'
        'ANSII'
        'CP1250 (Unicode UCS-2 Windows)'
        'CP1252 (Unicode UCS-2 Windows)'
        'CP12000 (Unicode UCS-4 Macintosh)'
        'ISO_8859_1 Western Alphabet (ISO)'
        'ISO_8859_2 Central European Alphabet (ISO)'
        'ISO_8859_3 Latin 3 Alphabet (ISO)'
        'ISO_8859_4 Baltic Alphabet (ISO)'
        'ISO_8859_5 Cyrillic Alphabet (ISO)'
        'ISO_8859_6 Arabic Alphabet (ISO)'
        'ISO_8859_7 Greek Alphabet (ISO)'
        'ISO_8859_8 Hebrew Alphabet (ISO)'
        'ISO_8859_9 Turkish Alphabet (ISO)')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 466
    Width = 962
    Height = 37
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 465
    ExplicitWidth = 958
    DesignSize = (
      962
      37)
    object Label2: TLabel
      Left = 240
      Top = 15
      Width = 50
      Height = 13
      Caption = 'Hook off'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 17
      Top = 15
      Width = 65
      Height = 13
      Caption = 'Search Char :'
    end
    object CheckBox1: TCheckBox
      Left = 879
      Top = 14
      Width = 68
      Height = 17
      TabStop = False
      Anchors = [akTop, akRight]
      Caption = 'Stay Top'
      TabOrder = 0
      OnClick = CheckBox1Click
      ExplicitLeft = 875
    end
    object Edit1: TEdit
      Left = 88
      Top = 10
      Width = 17
      Height = 21
      TabStop = False
      MaxLength = 1
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
      OnKeyUp = Edit1KeyUp
    end
    object CheckBox2: TCheckBox
      Left = 128
      Top = 13
      Width = 42
      Height = 17
      TabStop = False
      Caption = 'Edit'
      TabOrder = 2
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 185
      Top = 13
      Width = 49
      Height = 17
      TabStop = False
      Caption = 'Hook'
      TabOrder = 3
      OnClick = CheckBox3Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 962
    Height = 417
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    OnChange = PageControl1Change
    ExplicitWidth = 958
    ExplicitHeight = 416
    object TabSheet1: TTabSheet
      Caption = 'ASCii Table'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 954
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          '   DEC:          HEX:            BINARY:                    CHAR' +
          ':            HTML Nr:        OCT:         HTML Name:    Descript' +
          'ion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 950
      end
      object Memo1: TMemo
        Left = 0
        Top = 24
        Width = 954
        Height = 365
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = OEM_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Terminal'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
        WantReturns = False
        WordWrap = False
        ExplicitWidth = 950
        ExplicitHeight = 364
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ANSi Table'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 24
        Width = 954
        Height = 365
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = OEM_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Terminal'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 954
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        Caption = 
          'Char:    Nr.          Unicode      ANSi HEX           Unicode HE' +
          'X      HTML                  Unicode Name:                      ' +
          '  Unicode Range:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RichEdit1: TRichEdit
        Left = 0
        Top = 24
        Width = 954
        Height = 365
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Terminal'
        Font.Style = [fsBold]
        Lines.Strings = (
          #8216' '#8217#9'32'#9#9'32'#9#9'0x20'#9#9#9'U+0020'#9' '#9#9#9'space'#9#9#9#9#9'Basic Latin'
          '!'#9'33'#9#9'33'#9#9'0x21'#9#9#9'U+0021'#9' '#9#9#9'exclamation mark'#9#9#9'Basic Latin'
          '"'#9'34'#9#9'34'#9#9'0x22'#9#9#9'U+0022'#9'&quot;'#9#9'quotation mark'#9#9#9'Basic Latin'
          '#'#9'35'#9#9'35'#9#9'0x23'#9#9#9'U+0023'#9' '#9#9#9'number sign'#9#9#9'Basic Latin'
          '$'#9'36'#9#9'36'#9#9'0x24'#9#9#9'U+0024'#9#9#9#9'dollar sign'#9#9#9#9'Basic Latin'
          '%'#9'37'#9#9'37'#9#9'0x25'#9#9#9'U+0025'#9' '#9#9#9'percent sign'#9#9#9#9'Basic Latin'
          '&'#9'38'#9#9'38'#9#9'0x26'#9#9#9'U+0026'#9'&amp;'#9#9'ampersand'#9#9#9#9'Basic Latin'
          #39#9'39'#9#9'39'#9#9'0x27'#9#9#9'U+0027'#9' '#9#9#9'apostrophe'#9#9#9#9'Basic Latin'
          '('#9'40'#9#9'40'#9#9'0x28'#9#9#9'U+0028'#9' '#9#9#9'left parenthesis'#9#9#9'Basic Latin'
          ')'#9'41'#9#9'41'#9#9'0x29'#9#9#9'U+0029'#9' '#9#9#9'right parenthesis'#9#9#9'Basic Latin'
          '*'#9'42'#9#9'42'#9#9'0x2A'#9#9#9'U+002A'#9' '#9#9#9'asterisk'#9#9#9#9'Basic Latin'
          '+'#9'43'#9#9'43'#9#9'0x2B'#9#9#9'U+002B'#9' '#9#9#9'plus sign'#9#9#9#9'Basic Latin'
          ','#9'44'#9#9'44'#9#9'0x2C'#9#9#9'U+002C'#9' '#9#9#9'comma'#9#9#9#9'Basic Latin'
          '-'#9'45'#9#9'45'#9#9'0x2D'#9#9#9'U+002D'#9' '#9#9#9'hyphen-minus'#9#9#9'Basic Latin'
          '.'#9'46'#9#9'46'#9#9'0x2E'#9#9#9'U+002E'#9' '#9#9#9'full stop'#9#9#9#9'Basic Latin'
          '/'#9'47'#9#9'47'#9#9'0x2F'#9#9#9'U+002F'#9' '#9#9#9'solidus'#9#9#9#9'Basic Latin'
          '0'#9'48'#9#9'48'#9#9'0x30'#9#9#9'U+0030'#9' '#9#9#9'digit zero'#9#9#9#9'Basic Latin'
          '1'#9'49'#9#9'49'#9#9'0x31'#9#9#9'U+0031'#9' '#9#9#9'digit one'#9#9#9#9'Basic Latin'
          '2'#9'50'#9#9'50'#9#9'0x32'#9#9#9'U+0032'#9' '#9#9#9'digit two'#9#9#9#9'Basic Latin'
          '3'#9'51'#9#9'51'#9#9'0x33'#9#9#9'U+0033'#9' '#9#9#9'digit three'#9#9#9#9'Basic Latin'
          '4'#9'52'#9#9'52'#9#9'0x34'#9#9#9'U+0034'#9' '#9#9#9'digit four'#9#9#9#9'Basic Latin'
          '5'#9'53'#9#9'53'#9#9'0x35'#9#9#9'U+0035'#9' '#9#9#9'digit five'#9#9#9#9'Basic Latin'
          '6'#9'54'#9#9'54'#9#9'0x36'#9#9#9'U+0036'#9' '#9#9#9'digit six'#9#9#9#9'Basic Latin'
          '7'#9'55'#9#9'55'#9#9'0x37'#9#9#9'U+0037'#9' '#9#9#9'digit seven'#9#9#9#9'Basic Latin'
          '8'#9'56'#9#9'56'#9#9'0x38'#9#9#9'U+0038'#9' '#9#9#9'digit eight'#9#9#9#9'Basic Latin'
          '9'#9'57'#9#9'57'#9#9'0x39'#9#9#9'U+0039'#9' '#9#9#9'digit nine'#9#9#9#9'Basic Latin'
          ':'#9'58'#9#9'58'#9#9'0x3A'#9#9#9'U+003A'#9' '#9#9#9'colon'#9#9#9#9#9'Basic Latin'
          ';'#9'59'#9#9'59'#9#9'0x3B'#9#9#9'U+003B'#9' '#9#9#9'semicolon'#9#9#9#9'Basic Latin'
          '<'#9'60'#9#9'60'#9#9'0x3C'#9#9#9'U+003C'#9'&lt;'#9#9#9'less-than sign'#9#9#9'Basic Latin'
          '='#9'61'#9#9'61'#9#9'0x3D'#9#9#9'U+003D'#9' '#9#9#9'equals sign'#9#9#9#9'Basic Latin'
          '>'#9'62'#9#9'62'#9#9'0x3E'#9#9#9'U+003E'#9'&gt;'#9#9#9'greater-than sign'#9#9#9'Basic Latin'
          '?'#9'63'#9#9'63'#9#9'0x3F'#9#9#9'U+003F'#9' '#9#9#9'question mark'#9#9#9'Basic Latin'
          '@'#9'64'#9#9'64'#9#9'0x40'#9#9#9'U+0040'#9' '#9#9#9'commercial at'#9#9#9'Basic Latin'
          'A'#9'65'#9#9'65'#9#9'0x41'#9#9#9'U+0041'#9' '#9#9#9'Latin capital letter A'#9#9'Basic Latin'
          'B'#9'66'#9#9'66'#9#9'0x42'#9#9#9'U+0042'#9' '#9#9#9'Latin capital letter B'#9#9'Basic Latin'
          'C'#9'67'#9#9'67'#9#9'0x43'#9#9#9'U+0043'#9' '#9#9#9'Latin capital letter C'#9#9'Basic Latin'
          'D'#9'68'#9#9'68'#9#9'0x44'#9#9#9'U+0044'#9' '#9#9#9'Latin capital letter D'#9#9'Basic Latin'
          'E'#9'69'#9#9'69'#9#9'0x45'#9#9#9'U+0045'#9' '#9#9#9'Latin capital letter E'#9#9'Basic Latin'
          'F'#9'70'#9#9'70'#9#9'0x46'#9#9#9'U+0046'#9' '#9#9#9'Latin capital letter F'#9#9'Basic Latin'
          'G'#9'71'#9#9'71'#9#9'0x47'#9#9#9'U+0047'#9' '#9#9#9'Latin capital letter G'#9#9'Basic Latin'
          'H'#9'72'#9#9'72'#9#9'0x48'#9#9#9'U+0048'#9' '#9#9#9'Latin capital letter H'#9#9'Basic Latin'
          'I'#9'73'#9#9'73'#9#9'0x49'#9#9#9'U+0049'#9' '#9#9#9'Latin capital letter I'#9#9#9'Basic Latin'
          'J'#9'74'#9#9'74'#9#9'0x4A'#9#9#9'U+004A'#9' '#9#9#9'Latin capital letter J'#9#9'Basic Latin'
          'K'#9'75'#9#9'75'#9#9'0x4B'#9#9#9'U+004B'#9' '#9#9#9'Latin capital letter K'#9#9'Basic Latin'
          'L'#9'76'#9#9'76'#9#9'0x4C'#9#9#9'U+004C'#9' '#9#9#9'Latin capital letter L'#9#9'Basic Latin'
          'M'#9'77'#9#9'77'#9#9'0x4D'#9#9#9'U+004D'#9' '#9#9#9'Latin capital letter M'#9#9'Basic Latin'
          'N'#9'78'#9#9'78'#9#9'0x4E'#9#9#9'U+004E'#9' '#9#9#9'Latin capital letter N'#9#9'Basic Latin'
          'O'#9'79'#9#9'79'#9#9'0x4F'#9#9#9'U+004F'#9' '#9#9#9'Latin capital letter O'#9#9'Basic Latin'
          'P'#9'80'#9#9'80'#9#9'0x50'#9#9#9'U+0050'#9' '#9#9#9'Latin capital letter P'#9#9'Basic Latin'
          'Q'#9'81'#9#9'81'#9#9'0x51'#9#9#9'U+0051'#9' '#9#9#9'Latin capital letter Q'#9#9'Basic Latin'
          'R'#9'82'#9#9'82'#9#9'0x52'#9#9#9'U+0052'#9' '#9#9#9'Latin capital letter R'#9#9'Basic Latin'
          'S'#9'83'#9#9'83'#9#9'0x53'#9#9#9'U+0053'#9' '#9#9#9'Latin capital letter S'#9#9'Basic Latin'
          'T'#9'84'#9#9'84'#9#9'0x54'#9#9#9'U+0054'#9' '#9#9#9'Latin capital letter T'#9#9'Basic Latin'
          'U'#9'85'#9#9'85'#9#9'0x55'#9#9#9'U+0055'#9' '#9#9#9'Latin capital letter U'#9#9'Basic Latin'
          'V'#9'86'#9#9'86'#9#9'0x56'#9#9#9'U+0056'#9' '#9#9#9'Latin capital letter V'#9#9'Basic Latin'
          'W'#9'87'#9#9'87'#9#9'0x57'#9#9#9'U+0057'#9' '#9#9#9'Latin capital letter W'#9#9'Basic Latin'
          'X'#9'88'#9#9'88'#9#9'0x58'#9#9#9'U+0058'#9' '#9#9#9'Latin capital letter X'#9#9'Basic Latin'
          'Y'#9'89'#9#9'89'#9#9'0x59'#9#9#9'U+0059'#9' '#9#9#9'Latin capital letter Y'#9#9'Basic Latin'
          'Z'#9'90'#9#9'90'#9#9'0x5A'#9#9#9'U+005A'#9' '#9#9#9'Latin capital letter Z'#9#9'Basic Latin'
          '['#9'91'#9#9'91'#9#9'0x5B'#9#9#9'U+005B'#9' '#9#9#9'left square bracket'#9#9#9'Basic Latin'
          '\'#9'92'#9#9'92'#9#9'0x5C'#9#9#9'U+005C'#9' '#9#9#9'reverse solidus'#9#9#9'Basic Latin'
          ']'#9'93'#9#9'93'#9#9'0x5D'#9#9#9'U+005D'#9' '#9#9#9'right square bracket'#9#9'Basic Latin'
          '^'#9'94'#9#9'94'#9#9'0x5E'#9#9#9'U+005E'#9' '#9#9#9'circumflex accent'#9#9#9'Basic Latin'
          '_'#9'95'#9#9'95'#9#9'0x5F'#9#9#9'U+005F'#9' '#9#9#9'low line'#9#9#9#9'Basic Latin'
          '`'#9'96'#9#9'96'#9#9'0x60'#9#9#9'U+0060'#9' '#9#9#9'grave accent'#9#9#9'Basic Latin'
          'a'#9'97'#9#9'97'#9#9'0x61'#9#9#9'U+0061'#9' '#9#9#9'Latin small letter a'#9#9#9'Basic Latin'
          'b'#9'98'#9#9'98'#9#9'0x62'#9#9#9'U+0062'#9' '#9#9#9'Latin small letter b'#9#9#9'Basic Latin'
          'c'#9'99'#9#9'99'#9#9'0x63'#9#9#9'U+0063'#9' '#9#9#9'Latin small letter c'#9#9#9'Basic Latin'
          'd'#9'100'#9#9'100'#9#9'0x64'#9#9#9'U+0064'#9' '#9#9#9'Latin small letter d'#9#9#9'Basic Latin'
          'e'#9'101'#9#9'101'#9#9'0x65'#9#9#9'U+0065'#9' '#9#9#9'Latin small letter e'#9#9#9'Basic Latin'
          'f'#9'102'#9#9'102'#9#9'0x66'#9#9#9'U+0066'#9' '#9#9#9'Latin small letter f'#9#9#9'Basic Latin'
          'g'#9'103'#9#9'103'#9#9'0x67'#9#9#9'U+0067'#9' '#9#9#9'Latin small letter g'#9#9#9'Basic Latin'
          'h'#9'104'#9#9'104'#9#9'0x68'#9#9#9'U+0068'#9' '#9#9#9'Latin small letter h'#9#9#9'Basic Latin'
          'i'#9'105'#9#9'105'#9#9'0x69'#9#9#9'U+0069'#9' '#9#9#9'Latin small letter i'#9#9#9'Basic Latin'
          'j'#9'106'#9#9'106'#9#9'0x6A'#9#9#9'U+006A'#9' '#9#9#9'Latin small letter j'#9#9#9'Basic Latin'
          'k'#9'107'#9#9'107'#9#9'0x6B'#9#9#9'U+006B'#9' '#9#9#9'Latin small letter k'#9#9#9'Basic Latin'
          'l'#9'108'#9#9'108'#9#9'0x6C'#9#9#9'U+006C'#9' '#9#9#9'Latin small letter l'#9#9#9'Basic Latin'
          'm'#9'109'#9#9'109'#9#9'0x6D'#9#9#9'U+006D'#9' '#9#9#9'Latin small letter m'#9#9#9'Basic Latin'
          'n'#9'110'#9#9'110'#9#9'0x6E'#9#9#9'U+006E'#9' '#9#9#9'Latin small letter n'#9#9#9'Basic Latin'
          'o'#9'111'#9#9'111'#9#9'0x6F'#9#9#9'U+006F'#9' '#9#9#9'Latin small letter o'#9#9#9'Basic Latin'
          'p'#9'112'#9#9'112'#9#9'0x70'#9#9#9'U+0070'#9' '#9#9#9'Latin small letter p'#9#9#9'Basic Latin'
          'q'#9'113'#9#9'113'#9#9'0x71'#9#9#9'U+0071'#9' '#9#9#9'Latin small letter q'#9#9#9'Basic Latin'
          'r'#9'114'#9#9'114'#9#9'0x72'#9#9#9'U+0072'#9' '#9#9#9'Latin small letter r'#9#9#9'Basic Latin'
          's'#9'115'#9#9'115'#9#9'0x73'#9#9#9'U+0073'#9' '#9#9#9'Latin small letter s'#9#9#9'Basic Latin'
          't'#9'116'#9#9'116'#9#9'0x74'#9#9#9'U+0074'#9' '#9#9#9'Latin small letter t'#9#9#9'Basic Latin'
          'u'#9'117'#9#9'117'#9#9'0x75'#9#9#9'U+0075'#9' '#9#9#9'Latin small letter u'#9#9#9'Basic Latin'
          'v'#9'118'#9#9'118'#9#9'0x76'#9#9#9'U+0076'#9' '#9#9#9'Latin small letter v'#9#9#9'Basic Latin'
          'w'#9'119'#9#9'119'#9#9'0x77'#9#9#9'U+0077'#9' '#9#9#9'Latin small letter w'#9#9#9'Basic Latin'
          'x'#9'120'#9#9'120'#9#9'0x78'#9#9#9'U+0078'#9' '#9#9#9'Latin small letter x'#9#9#9'Basic Latin'
          'y'#9'121'#9#9'121'#9#9'0x79'#9#9#9'U+0079'#9' '#9#9#9'Latin small letter y'#9#9#9'Basic Latin'
          'z'#9'122'#9#9'122'#9#9'0x7A'#9#9#9'U+007A'#9' '#9#9#9'Latin small letter z'#9#9#9'Basic Latin'
          '{'#9'123'#9#9'123'#9#9'0x7B'#9#9#9'U+007B'#9' '#9#9#9'left curly bracket'#9#9#9'Basic Latin'
          '|'#9'124'#9#9'124'#9#9'0x7C'#9#9#9'U+007C'#9' '#9#9#9'vertical line'#9#9#9#9'Basic Latin'
          '}'#9'125'#9#9'125'#9#9'0x7D'#9#9#9'U+007D'#9' '#9#9#9'right curly bracket'#9#9#9'Basic Latin'
          '~'#9'126'#9#9'126'#9#9'0x7E'#9#9#9'U+007E'#9' '#9#9#9'tilde'#9#9#9#9#9'Basic Latin'
          ' '#9'127'#9#9'127'#9#9'0x7F'#9#9#9'U+007F'#9' '#9#9#9'(not used)'#9' '
          #8364#9'128'#9#9'8364'#9#9'0x80'#9#9#9'U+20AC'#9'&euro;'#9#9'euro sign'#9#9#9#9'Currency Symbols'
          ' '#9'129'#9#9'129'#9#9'0x81'#9#9#9'U+0081'#9' '#9#9#9'(not used)'#9' '
          
            #8218#9'130'#9#9'8218'#9#9'0x82'#9#9#9'U+201A'#9'&sbquo;'#9#9'single low-9 quotation mark'#9 +
            'General Punctuation'
          
            #402#9'131'#9#9'402'#9#9'0x83'#9#9#9'U+0192'#9'&fnof;'#9#9'Latin small letter f with hook' +
            #9'Latin Extended-B'
          
            #8222#9'132'#9#9'8222'#9#9'0x84'#9#9#9'U+201E'#9'&bdquo;'#9#9'double low-9 quotation mark'#9 +
            'General Punctuation'
          
            #8230#9'133'#9#9'8230'#9#9'0x85'#9#9#9'U+2026'#9'&hellip;'#9#9'horizontal ellipsis'#9#9#9'Gener' +
            'al Punctuation'
          
            #8224#9'134'#9#9'8224'#9#9'0x86'#9#9#9'U+2020'#9'&dagger;'#9#9'dagger'#9#9#9#9'General Punctuati' +
            'on'
          
            #8225#9'135'#9#9'8225'#9#9'0x87'#9#9#9'U+2021'#9'&Dagger;'#9#9'double dagger'#9#9#9'General Pun' +
            'ctuation'
          
            #710#9'136'#9#9'710'#9#9'0x88'#9#9#9'U+02C6'#9'&circ;'#9#9#9'modifier letter circumflex ac' +
            'cent'#9'Spacing Modifier Letters'
          
            #8240#9'137'#9#9'8240'#9#9'0x89'#9#9#9'U+2030'#9'&permil;'#9#9'per mille sign'#9#9#9'General Pu' +
            'nctuation'
          
            #352#9'138'#9#9'352'#9#9'0x8A'#9#9#9'U+0160'#9'&Scaron;'#9#9'Latin capital letter S with ' +
            'caron'#9'Latin Extended-A'
          
            #8249#9'139'#9#9'8249'#9#9'0x8B'#9#9#9'U+2039'#9'&lsaquo;'#9#9'single left-pointing angle ' +
            'quotation mark'#9'General Punctuation'
          
            #338#9'140'#9#9'338'#9#9'0x8C'#9#9#9'U+0152'#9'&OElig;'#9#9'Latin capital ligature OE'#9#9'La' +
            'tin Extended-A'
          ' '#9'141'#9#9'141'#9#9'0x8D'#9#9#9'U+008D'#9' '#9#9#9'(not used)'#9' '
          
            #381#9'142'#9#9'381'#9#9'0x8E'#9#9#9'U+017D'#9' '#9#9#9'Latin capital letter Z with caron'#9 +
            'Latin Extended-A'
          ' '#9'143'#9#9'143'#9#9'0x8F'#9#9#9'U+008F'#9' '#9#9#9'(not used)'#9' '
          ' '#9'144'#9#9'144'#9#9'0x90'#9#9#9'U+0090'#9' '#9#9#9'(not used)'#9' '
          
            #8216#9'145'#9#9'8216'#9#9'0x91'#9#9#9'U+2018'#9'&lsquo;'#9#9'left single quotation mark'#9'G' +
            'eneral Punctuation'
          
            #8217#9'146'#9#9'8217'#9#9'0x92'#9#9#9'U+2019'#9'&rsquo;'#9#9'right single quotation mark'#9 +
            'General Punctuation'
          
            #8220#9'147'#9#9'8220'#9#9'0x93'#9#9#9'U+201C'#9'&ldquo;'#9#9'left double quotation mark'#9'G' +
            'eneral Punctuation'
          
            #8221#9'148'#9#9'8221'#9#9'0x94'#9#9#9'U+201D'#9'&rdquo;'#9#9'right double quotation mark'#9 +
            'General Punctuation'
          
            #8226#9'149'#9#9'8226'#9#9'0x95'#9#9#9'U+2022'#9'&bull;'#9#9#9'bullet'#9#9#9#9#9'General Punctuati' +
            'on'
          
            #8211#9'150'#9#9'8211'#9#9'0x96'#9#9#9'U+2013'#9'&ndash;'#9#9'en dash'#9#9#9#9'General Punctuati' +
            'on'
          
            #8212#9'151'#9#9'8212'#9#9'0x97'#9#9#9'U+2014'#9'&mdash;'#9#9'em dash'#9#9#9#9'General Punctuati' +
            'on'
          
            #732#9'152'#9#9'732'#9#9'0x98'#9#9#9'U+02DC'#9'&tilde;'#9#9'small tilde'#9#9#9#9'Spacing Modifi' +
            'er Letters'
          
            #8482#9'153'#9#9'8482'#9#9'0x99'#9#9#9'U+2122'#9'&trade;'#9#9'trade mark sign'#9#9#9'Letterlike' +
            ' Symbols'
          
            #353#9'154'#9#9'353'#9#9'0x9A'#9#9#9'U+0161'#9'&scaron;'#9#9'Latin small letter s with ca' +
            'ron'#9'Latin Extended-A'
          
            #8250#9'155'#9#9'8250'#9#9'0x9B'#9#9#9'U+203A'#9'&rsaquo;'#9#9'single right-pointing angle' +
            ' quotation mark'#9'General Punctuation'
          
            #339#9'156'#9#9'339'#9#9'0x9C'#9#9#9'U+0153'#9'&oelig;'#9#9'Latin small ligature oe'#9#9'Lati' +
            'n Extended-A'
          ' '#9'157'#9#9'157'#9#9'0x9D'#9#9#9'U+009D'#9' '#9#9#9'(not used)'#9' '
          
            #382#9'158'#9#9'382'#9#9'0x9E'#9#9#9'U+017E'#9' '#9#9#9'Latin small letter z with caron'#9'La' +
            'tin Extended-A'
          
            #376#9'159'#9#9'376'#9#9'0x9F'#9#9#9'U+0178'#9'&Yuml;'#9#9'Latin capital letter Y with di' +
            'aeresis'#9'Latin Extended-A'
          
            ' '#9'160'#9#9'160'#9#9'0xA0'#9#9#9'U+00A0'#9'&nbsp;'#9#9'no-break space'#9'Latin-1 Supplem' +
            'ent'
          
            #161#9'161'#9#9'161'#9#9'0xA1'#9#9#9'U+00A1'#9'&iexcl;'#9#9'inverted exclamation mark'#9'Lat' +
            'in-1 Supplement'
          
            #162#9'162'#9#9'162'#9#9'0xA2'#9#9#9'U+00A2'#9'&cent;'#9#9'cent sign'#9#9#9#9'Latin-1 Supplemen' +
            't'
          
            #163#9'163'#9#9'163'#9#9'0xA3'#9#9#9'U+00A3'#9'&pound;'#9#9'pound sign'#9#9#9#9'Latin-1 Supplem' +
            'ent'
          
            #164#9'164'#9#9'164'#9#9'0xA4'#9#9#9'U+00A4'#9'&curren;'#9#9'currency sign'#9#9#9'Latin-1 Supp' +
            'lement'
          #165#9'165'#9#9'165'#9#9'0xA5'#9#9#9'U+00A5'#9'&yen;'#9#9#9'yen sign'#9#9#9#9'Latin-1 Supplement'
          
            #166#9'166'#9#9'166'#9#9'0xA6'#9#9#9'U+00A6'#9'&brvbar;'#9#9'broken bar'#9#9#9#9'Latin-1 Supple' +
            'ment'
          
            #167#9'167'#9#9'167'#9#9'0xA7'#9#9#9'U+00A7'#9'&sect;'#9#9'section sign'#9#9#9#9'Latin-1 Supple' +
            'ment'
          
            #168#9'168'#9#9'168'#9#9'0xA8'#9#9#9'U+00A8'#9'&uml;'#9#9#9'diaeresis'#9#9#9#9'Latin-1 Supplemen' +
            't'
          
            #169#9'169'#9#9'169'#9#9'0xA9'#9#9#9'U+00A9'#9'&copy;'#9#9'copyright sign'#9#9#9'Latin-1 Suppl' +
            'ement'
          
            #170#9'170'#9#9'170'#9#9'0xAA'#9#9#9'U+00AA'#9'&ordf;'#9#9'feminine ordinal indicator'#9'Lat' +
            'in-1 Supplement'
          
            #171#9'171'#9#9'171'#9#9'0xAB'#9#9#9'U+00AB'#9'&laquo;'#9#9'left-pointing double angle qu' +
            'otation mark'#9'Latin-1 Supplement'
          #172#9'172'#9#9'172'#9#9'0xAC'#9#9#9'U+00AC'#9'&not;'#9#9#9'not sign'#9#9#9#9'Latin-1 Supplement'
          
            #173#9'173'#9#9'173'#9#9'0xAD'#9#9#9'U+00AD'#9'&shy;'#9#9#9'soft hyphen'#9#9#9#9'Latin-1 Supplem' +
            'ent'
          
            #174#9'174'#9#9'174'#9#9'0xAE'#9#9#9'U+00AE'#9'&reg;'#9#9#9'registered sign'#9#9#9'Latin-1 Supp' +
            'lement'
          #175#9'175'#9#9'175'#9#9'0xAF'#9#9#9'U+00AF'#9'&macr;'#9#9'macron'#9#9#9#9'Latin-1 Supplement'
          
            #176#9'176'#9#9'176'#9#9'0xB0'#9#9#9'U+00B0'#9'&deg;'#9#9#9'degree sign'#9#9#9#9'Latin-1 Supplem' +
            'ent'
          
            #177#9'177'#9#9'177'#9#9'0xB1'#9#9#9'U+00B1'#9'&plusmn;'#9#9'plus-minus sign'#9#9#9'Latin-1 Su' +
            'pplement'
          
            #178#9'178'#9#9'178'#9#9'0xB2'#9#9#9'U+00B2'#9'&sup2;'#9#9'superscript two'#9#9#9'Latin-1 Supp' +
            'lement'
          
            #179#9'179'#9#9'179'#9#9'0xB3'#9#9#9'U+00B3'#9'&sup3;'#9#9'superscript three'#9#9#9'Latin-1 Su' +
            'pplement'
          
            #180#9'180'#9#9'180'#9#9'0xB4'#9#9#9'U+00B4'#9'&acute;'#9#9'acute accent'#9#9#9'Latin-1 Supple' +
            'ment'
          
            #181#9'181'#9#9'181'#9#9'0xB5'#9#9#9'U+00B5'#9'&micro;'#9#9'micro sign'#9#9#9#9'Latin-1 Supplem' +
            'ent'
          
            #182#9'182'#9#9'182'#9#9'0xB6'#9#9#9'U+00B6'#9'&para;'#9#9'pilcrow sign'#9#9#9#9'Latin-1 Supple' +
            'ment'
          
            #183#9'183'#9#9'183'#9#9'0xB7'#9#9#9'U+00B7'#9'&middot;'#9#9'middle dot'#9#9#9#9'Latin-1 Supple' +
            'ment'
          #184#9'184'#9#9'184'#9#9'0xB8'#9#9#9'U+00B8'#9'&cedil;'#9#9'cedilla'#9#9#9#9'Latin-1 Supplement'
          
            #185#9'185'#9#9'185'#9#9'0xB9'#9#9#9'U+00B9'#9'&sup1;'#9#9'superscript one'#9#9#9'Latin-1 Supp' +
            'lement'
          
            #186#9'186'#9#9'186'#9#9'0xBA'#9#9#9'U+00BA'#9'&ordm;'#9#9'masculine ordinal indicator'#9'La' +
            'tin-1 Supplement'
          
            #187#9'187'#9#9'187'#9#9'0xBB'#9#9#9'U+00BB'#9'&raquo;'#9#9'right-pointing double angle q' +
            'uotation mark'#9'Latin-1 Supplement'
          
            #188#9'188'#9#9'188'#9#9'0xBC'#9#9#9'U+00BC'#9'&frac14;'#9#9'vulgar fraction one quarter'#9 +
            'Latin-1 Supplement'
          
            #189#9'189'#9#9'189'#9#9'0xBD'#9#9#9'U+00BD'#9'&frac12;'#9#9'vulgar fraction one half'#9#9'La' +
            'tin-1 Supplement'
          
            #190#9'190'#9#9'190'#9#9'0xBE'#9#9#9'U+00BE'#9'&frac34;'#9#9'vulgar fraction three quarte' +
            'rs'#9'Latin-1 Supplement'
          
            #191#9'191'#9#9'191'#9#9'0xBF'#9#9#9'U+00BF'#9'&iquest;'#9#9'inverted question mark'#9#9'Lati' +
            'n-1 Supplement'
          
            #192#9'192'#9#9'192'#9#9'0xC0'#9#9#9'U+00C0'#9'&Agrave;'#9#9'Latin capital letter A with ' +
            'grave'#9'Latin-1 Supplement'
          
            #193#9'193'#9#9'193'#9#9'0xC1'#9#9#9'U+00C1'#9'&Aacute;'#9#9'Latin capital letter A with ' +
            'acute'#9'Latin-1 Supplement'
          
            #194#9'194'#9#9'194'#9#9'0xC2'#9#9#9'U+00C2'#9'&Acirc;'#9#9'Latin capital letter A with c' +
            'ircumflex'#9'Latin-1 Supplement'
          
            #195#9'195'#9#9'195'#9#9'0xC3'#9#9#9'U+00C3'#9'&Atilde;'#9#9'Latin capital letter A with ' +
            'tilde'#9'Latin-1 Supplement'
          
            #196#9'196'#9#9'196'#9#9'0xC4'#9#9#9'U+00C4'#9'&Auml;'#9#9'Latin capital letter A with di' +
            'aeresis'#9'Latin-1 Supplement'
          
            #197#9'197'#9#9'197'#9#9'0xC5'#9#9#9'U+00C5'#9'&Aring;'#9#9'Latin capital letter A with r' +
            'ing above'#9'Latin-1 Supplement'
          
            #198#9'198'#9#9'198'#9#9'0xC6'#9#9#9'U+00C6'#9'&AElig;'#9#9'Latin capital letter AE'#9#9'Lati' +
            'n-1 Supplement'
          
            #199#9'199'#9#9'199'#9#9'0xC7'#9#9#9'U+00C7'#9'&Ccedil;'#9#9'Latin capital letter C with ' +
            'cedilla'#9'Latin-1 Supplement'
          
            #200#9'200'#9#9'200'#9#9'0xC8'#9#9#9'U+00C8'#9'&Egrave;'#9#9'Latin capital letter E with ' +
            'grave'#9'Latin-1 Supplement'
          
            #201#9'201'#9#9'201'#9#9'0xC9'#9#9#9'U+00C9'#9'&Eacute;'#9#9'Latin capital letter E with ' +
            'acute'#9'Latin-1 Supplement'
          
            #202#9'202'#9#9'202'#9#9'0xCA'#9#9#9'U+00CA'#9'&Ecirc;'#9#9'Latin capital letter E with c' +
            'ircumflex'#9'Latin-1 Supplement'
          
            #203#9'203'#9#9'203'#9#9'0xCB'#9#9#9'U+00CB'#9'&Euml;'#9#9'Latin capital letter E with di' +
            'aeresis'#9'Latin-1 Supplement'
          
            #204#9'204'#9#9'204'#9#9'0xCC'#9#9#9'U+00CC'#9'&Igrave;'#9#9'Latin capital letter I with ' +
            'grave'#9'Latin-1 Supplement'
          
            #205#9'205'#9#9'205'#9#9'0xCD'#9#9#9'U+00CD'#9'&Iacute;'#9#9'Latin capital letter I with ' +
            'acute'#9'Latin-1 Supplement'
          
            #206#9'206'#9#9'206'#9#9'0xCE'#9#9#9'U+00CE'#9'&Icirc;'#9#9'Latin capital letter I with c' +
            'ircumflex'#9'Latin-1 Supplement'
          
            #207#9'207'#9#9'207'#9#9'0xCF'#9#9#9'U+00CF'#9'&Iuml;'#9#9'Latin capital letter I with di' +
            'aeresis'#9'Latin-1 Supplement'
          
            #208#9'208'#9#9'208'#9#9'0xD0'#9#9#9'U+00D0'#9'&ETH;'#9#9'Latin capital letter Eth'#9#9'Latin' +
            '-1 Supplement'
          
            #209#9'209'#9#9'209'#9#9'0xD1'#9#9#9'U+00D1'#9'&Ntilde;'#9#9'Latin capital letter N with ' +
            'tilde'#9'Latin-1 Supplement'
          
            #210#9'210'#9#9'210'#9#9'0xD2'#9#9#9'U+00D2'#9'&Ograve;'#9#9'Latin capital letter O with ' +
            'grave'#9'Latin-1 Supplement'
          
            #211#9'211'#9#9'211'#9#9'0xD3'#9#9#9'U+00D3'#9'&Oacute;'#9#9'Latin capital letter O with ' +
            'acute'#9'Latin-1 Supplement'
          
            #212#9'212'#9#9'212'#9#9'0xD4'#9#9#9'U+00D4'#9'&Ocirc;'#9#9'Latin capital letter O with c' +
            'ircumflex'#9'Latin-1 Supplement'
          
            #213#9'213'#9#9'213'#9#9'0xD5'#9#9#9'U+00D5'#9'&Otilde;'#9#9'Latin capital letter O with ' +
            'tilde'#9'Latin-1 Supplement'
          
            #214#9'214'#9#9'214'#9#9'0xD6'#9#9#9'U+00D6'#9'&Ouml;'#9#9'Latin capital letter O with di' +
            'aeresis'#9'Latin-1 Supplement'
          
            #215#9'215'#9#9'215'#9#9'0xD7'#9#9#9'U+00D7'#9'&times;'#9#9'multiplication sign'#9#9#9'Latin-1' +
            ' Supplement'
          
            #216#9'216'#9#9'216'#9#9'0xD8'#9#9#9'U+00D8'#9'&Oslash;'#9#9'Latin capital letter O with ' +
            'stroke'#9'Latin-1 Supplement'
          
            #217#9'217'#9#9'217'#9#9'0xD9'#9#9#9'U+00D9'#9'&Ugrave;'#9#9'Latin capital letter U with ' +
            'grave'#9'Latin-1 Supplement'
          
            #218#9'218'#9#9'218'#9#9'0xDA'#9#9#9'U+00DA'#9'&Uacute;'#9#9'Latin capital letter U with ' +
            'acute'#9'Latin-1 Supplement'
          
            #219#9'219'#9#9'219'#9#9'0xDB'#9#9#9'U+00DB'#9'&Ucirc;'#9#9'Latin capital letter U with c' +
            'ircumflex'#9'Latin-1 Supplement'
          
            #220#9'220'#9#9'220'#9#9'0xDC'#9#9#9'U+00DC'#9'&Uuml;'#9#9'Latin capital letter U with di' +
            'aeresis'#9'Latin-1 Supplement'
          
            #221#9'221'#9#9'221'#9#9'0xDD'#9#9#9'U+00DD'#9'&Yacute;'#9#9'Latin capital letter Y with ' +
            'acute'#9'Latin-1 Supplement'
          
            #222#9'222'#9#9'222'#9#9'0xDE'#9#9#9'U+00DE'#9'&THORN;'#9#9'Latin capital letter Thorn'#9#9'L' +
            'atin-1 Supplement'
          
            #223#9'223'#9#9'223'#9#9'0xDF'#9#9#9'U+00DF'#9'&szlig;'#9#9'Latin small letter sharp s'#9#9'L' +
            'atin-1 Supplement'
          
            #224#9'224'#9#9'224'#9#9'0xE0'#9#9#9'U+00E0'#9'&agrave;'#9#9'Latin small letter a with gr' +
            'ave'#9'Latin-1 Supplement'
          
            #225#9'225'#9#9'225'#9#9'0xE1'#9#9#9'U+00E1'#9'&aacute;'#9#9'Latin small letter a with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #226#9'226'#9#9'226'#9#9'0xE2'#9#9#9'U+00E2'#9'&acirc;'#9#9'Latin small letter a with cir' +
            'cumflex'#9'Latin-1 Supplement'
          
            #227#9'227'#9#9'227'#9#9'0xE3'#9#9#9'U+00E3'#9'&atilde;'#9#9'Latin small letter a with ti' +
            'lde'#9'Latin-1 Supplement'
          
            #228#9'228'#9#9'228'#9#9'0xE4'#9#9#9'U+00E4'#9'&auml;'#9#9'Latin small letter a with diae' +
            'resis'#9'Latin-1 Supplement'
          
            #229#9'229'#9#9'229'#9#9'0xE5'#9#9#9'U+00E5'#9'&aring;'#9#9'Latin small letter a with rin' +
            'g above'#9'Latin-1 Supplement'
          
            #230#9'230'#9#9'230'#9#9'0xE6'#9#9#9'U+00E6'#9'&aelig;'#9#9'Latin small letter ae'#9#9'Latin-' +
            '1 Supplement'
          
            #231#9'231'#9#9'231'#9#9'0xE7'#9#9#9'U+00E7'#9'&ccedil;'#9#9'Latin small letter c with ce' +
            'dilla'#9'Latin-1 Supplement'
          
            #232#9'232'#9#9'232'#9#9'0xE8'#9#9#9'U+00E8'#9'&egrave;'#9#9'Latin small letter e with gr' +
            'ave'#9'Latin-1 Supplement'
          
            #233#9'233'#9#9'233'#9#9'0xE9'#9#9#9'U+00E9'#9'&eacute;'#9#9'Latin small letter e with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #234#9'234'#9#9'234'#9#9'0xEA'#9#9#9'U+00EA'#9'&ecirc;'#9#9'Latin small letter e with cir' +
            'cumflex'#9'Latin-1 Supplement'
          
            #235#9'235'#9#9'235'#9#9'0xEB'#9#9#9'U+00EB'#9'&euml;'#9#9'Latin small letter e with diae' +
            'resis'#9'Latin-1 Supplement'
          
            #236#9'236'#9#9'236'#9#9'0xEC'#9#9#9'U+00EC'#9'&igrave;'#9#9'Latin small letter i with gr' +
            'ave'#9'Latin-1 Supplement'
          
            #237#9'237'#9#9'237'#9#9'0xED'#9#9#9'U+00ED'#9'&iacute;'#9#9'Latin small letter i with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #238#9'238'#9#9'238'#9#9'0xEE'#9#9#9'U+00EE'#9'&icirc;'#9#9'Latin small letter i with cir' +
            'cumflex'#9'Latin-1 Supplement'
          
            #239#9'239'#9#9'239'#9#9'0xEF'#9#9#9'U+00EF'#9'&iuml;'#9#9'Latin small letter i with diae' +
            'resis'#9'Latin-1 Supplement'
          
            #240#9'240'#9#9'240'#9#9'0xF0'#9#9#9'U+00F0'#9'&eth;'#9#9#9'Latin small letter eth'#9#9'Latin-' +
            '1 Supplement'
          
            #241#9'241'#9#9'241'#9#9'0xF1'#9#9#9'U+00F1'#9'&ntilde;'#9#9'Latin small letter n with ti' +
            'lde'#9'Latin-1 Supplement'
          
            #242#9'242'#9#9'242'#9#9'0xF2'#9#9#9'U+00F2'#9'&ograve;'#9#9'Latin small letter o with gr' +
            'ave'#9'Latin-1 Supplement'
          
            #243#9'243'#9#9'243'#9#9'0xF3'#9#9#9'U+00F3'#9'&oacute;'#9#9'Latin small letter o with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #244#9'244'#9#9'244'#9#9'0xF4'#9#9#9'U+00F4'#9'&ocirc;'#9#9'Latin small letter o with cir' +
            'cumflex'#9'Latin-1 Supplement'
          
            #245#9'245'#9#9'245'#9#9'0xF5'#9#9#9'U+00F5'#9'&otilde;'#9#9'Latin small letter o with ti' +
            'lde'#9'Latin-1 Supplement'
          
            #246#9'246'#9#9'246'#9#9'0xF6'#9#9#9'U+00F6'#9'&ouml;'#9#9'Latin small letter o with diae' +
            'resis'#9'Latin-1 Supplement'
          
            #247#9'247'#9#9'247'#9#9'0xF7'#9#9#9'U+00F7'#9'&divide;'#9#9'division sign'#9#9#9#9'Latin-1 Sup' +
            'plement'
          
            #248#9'248'#9#9'248'#9#9'0xF8'#9#9#9'U+00F8'#9'&oslash;'#9#9'Latin small letter o with st' +
            'roke'#9'Latin-1 Supplement'
          
            #249#9'249'#9#9'249'#9#9'0xF9'#9#9#9'U+00F9'#9'&ugrave;'#9#9'Latin small letter u with gr' +
            'ave'#9'Latin-1 Supplement'
          
            #250#9'250'#9#9'250'#9#9'0xFA'#9#9#9'U+00FA'#9'&uacute;'#9#9'Latin small letter u with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #251#9'251'#9#9'251'#9#9'0xFB'#9#9#9'U+00FB'#9'&ucirc;'#9#9'Latin small letter with circu' +
            'mflex'#9'Latin-1 Supplement'
          
            #252#9'252'#9#9'252'#9#9'0xFC'#9#9#9'U+00FC'#9'&uuml;'#9#9'Latin small letter u with diae' +
            'resis'#9'Latin-1 Supplement'
          
            #253#9'253'#9#9'253'#9#9'0xFD'#9#9#9'U+00FD'#9'&yacute;'#9#9'Latin small letter y with ac' +
            'ute'#9'Latin-1 Supplement'
          
            #254#9'254'#9#9'254'#9#9'0xFE'#9#9#9'U+00FE'#9'&thorn;'#9#9'Latin small letter thorn'#9'Lati' +
            'n-1 Supplement'
          
            #255#9'255'#9#9'255'#9#9'0xFF'#9#9#9'U+00FF'#9'&yuml;'#9#9'Latin small letter y with diae' +
            'resis'#9'Latin-1 Supplement')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Overview'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 625
        Height = 389
        Align = alLeft
        TabOrder = 0
        object Memo4: TMemo
          Left = 1
          Top = 18
          Width = 623
          Height = 370
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = OEM_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Terminal'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object HeaderControl1: THeaderControl
          Left = 1
          Top = 1
          Width = 623
          Height = 17
          Sections = <
            item
              ImageIndex = -1
              Width = 150
            end>
        end
      end
      object TPanel
        Left = 625
        Top = 0
        Width = 329
        Height = 389
        Align = alClient
        TabOrder = 1
        object Memo3: TMemo
          Left = 1
          Top = 18
          Width = 327
          Height = 370
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = OEM_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Terminal'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object HeaderControl2: THeaderControl
          Left = 1
          Top = 1
          Width = 327
          Height = 17
          Sections = <
            item
              ImageIndex = -1
              Width = 150
            end>
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Textdocument (*.txt)|*.txt'
    Left = 504
    Top = 104
  end
end
