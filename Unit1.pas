unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellAPI, XPMan, ComCtrls, Spin;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CheckBox19: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  app: String;

implementation

{$R *.dfm}
procedure FileCopy(von,nach:string);
var src,dest : tFilestream;
begin
  src := tFilestream.create(von,fmShareDenyNone or fmOpenRead);
  try
    dest := tFilestream.create(nach,fmCreate);
    try
      dest.copyfrom(src,src.size);
    finally
      dest.free;
    end;
  finally
  src.free;
  end;
end;

function Get_File_Size4(const S: string): Int64;
var
  FD: TWin32FindData;
  FH: THandle;
begin
  FH := FindFirstFile(PChar(S), FD);
  if FH = INVALID_HANDLE_VALUE then Result := 0
  else
    try
      Result := FD.nFileSizeHigh;
      Result := Result shl 32;
      Result := Result + FD.nFileSizeLow;
    finally
      //CloseHandle(FH);
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    begin
      Edit1.Text := OpenDialog1.FileName;
      Button2.Enabled := True;
    end;
    StatusBar1.Panels[1].Text := IntToStr( Get_File_Size4(OpenDialog1.FileName)) + ' Kb';
end;

procedure TForm1.Button2Click(Sender: TObject);

begin
  Screen.Cursor := crHourGlass;
  Label3.Caption := '';

  //if CheckBox1.Checked = true then Label3.Caption := Label3.Caption + ' +f';
  //if CheckBox2.Checked = true then Label3.Caption := Label3.Caption + ' +B';
  //if CheckBox3.Checked = true then Label3.Caption := Label3.Caption + ' +CRS';
  //if CheckBox4.Checked = true then Label3.Caption := Label3.Caption + ' +FULS';
  //if CheckBox5.Checked = true then Label3.Caption := Label3.Caption + ' +IBH';
  //if CheckBox6.Checked = true then Label3.Caption := Label3.Caption + ' +IBO';
  //if CheckBox7.Checked = true then Label3.Caption := Label3.Caption + ' +SD';
  //if CheckBox8.Checked = true then Label3.Caption := Label3.Caption + ' +SET';
  //if CheckBox9.Checked = true then Label3.Caption := Label3.Caption + ' +SO';
  //if CheckBox10.Checked = true then Label3.Caption := Label3.Caption + ' +SPH';
  //if CheckBox11.Checked = true then Label3.Caption := Label3.Caption + ' +SPHE';
  //if CheckBox12.Checked = true then Label3.Caption := Label3.Caption + ' +SRS';
  //if CheckBox13.Checked = true then Label3.Caption := Label3.Caption + ' +SRT';
  //if CheckBox14.Checked = true then Label3.Caption := Label3.Caption + ' +STLS';

  

  app := ExtractFilePath(Application.ExeName)+'BeRo\bep.exe';
  try
   if CheckBox19.Checked = true then begin
    ShellExecute(Handle, 'open', PChar(app),
               PChar(' ' + Edit1.Text + Label3.Caption), nil, SW_SHOWNORMAL);
    end else begin
    ShellExecute(Handle, 'open', PChar(app),
               PChar(' ' + Edit1.Text + Label3.Caption), nil, SW_HIDE);
    end;

  finally
  end;
  Sleep(2000);
  Screen.Cursor := crDefault;
  StatusBar1.Panels[3].Text := IntToStr( Get_File_Size4(Edit1.Text)) + ' Kb';
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

end.
