object Form1: TForm1
  Left = 1616
  Top = 156
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'BeRo Compressor GUi'
  ClientHeight = 489
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 307
    Height = 33
    Caption = 'xPack Compressor GUi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 100
    Height = 13
    Caption = 'EXE Path Compress :'
  end
  object Label3: TLabel
    Left = 24
    Top = 443
    Width = 12
    Height = 13
    Caption = '...'
  end
  object Label5: TLabel
    Left = 24
    Top = 424
    Width = 62
    Height = 13
    Caption = 'Parameters :'
  end
  object Label6: TLabel
    Left = 24
    Top = 40
    Width = 408
    Height = 13
    Caption = 
      'BeRoEXEPacker, or short BEP, is a executable packer for 32-bit w' +
      'indows executables'
  end
  object Edit1: TEdit
    Left = 16
    Top = 80
    Width = 425
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 447
    Top = 80
    Width = 33
    Height = 21
    Caption = '...'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 599
    Top = 421
    Width = 73
    Height = 21
    Caption = 'Compress'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 470
    Width = 697
    Height = 19
    Panels = <
      item
        Text = 'Size :'
        Width = 50
      end
      item
        Text = '0'
        Width = 100
      end
      item
        Text = 'New Size :'
        Width = 70
      end
      item
        Text = '0'
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 120
    Width = 49
    Height = 17
    Caption = ' Force'
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 136
    Width = 123
    Height = 17
    Caption = ' Bruteforce (SLOW!)'
    TabOrder = 5
  end
  object CheckBox3: TCheckBox
    Left = 24
    Top = 152
    Width = 195
    Height = 17
    Caption = ' Compress all Resources (DANGER).'
    TabOrder = 6
  end
  object CheckBox4: TCheckBox
    Left = 24
    Top = 168
    Width = 59
    Height = 17
    Caption = ' Full Up'
    TabOrder = 7
  end
  object CheckBox5: TCheckBox
    Left = 24
    Top = 184
    Width = 130
    Height = 17
    Caption = ' Import Table by Hash'
    TabOrder = 8
  end
  object CheckBox6: TCheckBox
    Left = 24
    Top = 200
    Width = 142
    Height = 17
    Caption = ' Import Table by Original'
    TabOrder = 9
  end
  object CheckBox7: TCheckBox
    Left = 24
    Top = 216
    Width = 81
    Height = 17
    Caption = ' Strip Debug'
    TabOrder = 10
  end
  object CheckBox8: TCheckBox
    Left = 24
    Top = 232
    Width = 113
    Height = 17
    Caption = ' Strip Export Table'
    TabOrder = 11
  end
  object CheckBox9: TCheckBox
    Left = 24
    Top = 248
    Width = 90
    Height = 17
    Caption = ' Strip Overlay'
    TabOrder = 12
  end
  object CheckBox10: TCheckBox
    Left = 24
    Top = 264
    Width = 75
    Height = 17
    Caption = ' Special PE'
    TabOrder = 13
  end
  object CheckBox11: TCheckBox
    Left = 24
    Top = 280
    Width = 101
    Height = 17
    Caption = ' Special PE Stuff'
    TabOrder = 14
  end
  object CheckBox12: TCheckBox
    Left = 24
    Top = 296
    Width = 102
    Height = 17
    Caption = ' Strip Resources'
    TabOrder = 15
  end
  object CheckBox13: TCheckBox
    Left = 24
    Top = 312
    Width = 130
    Height = 17
    Caption = ' Strip Relocation Table'
    TabOrder = 16
  end
  object CheckBox14: TCheckBox
    Left = 24
    Top = 328
    Width = 68
    Height = 17
    Caption = ' Strip TLS'
    TabOrder = 17
  end
  object CheckBox15: TCheckBox
    Left = 24
    Top = 344
    Width = 108
    Height = 17
    Caption = ' Make Backup File'
    TabOrder = 18
  end
  object CheckBox19: TCheckBox
    Left = 489
    Top = 423
    Width = 90
    Height = 17
    Caption = 'Show Console'
    Checked = True
    State = cbChecked
    TabOrder = 19
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.exe'
    Filter = 'Programme EXE|*.exe'
    Options = [ofHideReadOnly]
    Title = 'Programme EXE - UPX GUI'
    Left = 600
    Top = 24
  end
end
