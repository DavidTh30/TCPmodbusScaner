unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, tcp_udpport, ModBusTCP, PLCTagNumber, HMILabel, HMIEdit, commtypes,
  Tag, StrUtils, typinfo;

type

  { TForm1 }

  TForm1 = class(TForm)
    AutoScanCoil: TPLCTagNumber;
    AutoScanHoldingRegister: TPLCTagNumber;
    AutoScanInput: TPLCTagNumber;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    ComboBox10: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    CustomAddress: TPLCTagNumber;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    HMIEdit5: THMIEdit;
    HMILabel6: THMILabel;
    HMILabel8: THMILabel;
    HMILabel7: THMILabel;
    HMILabel5: THMILabel;
    HMILabel9: THMILabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    ModBusTCPDriver1: TModBusTCPDriver;
    AutoScanInputRegister: TPLCTagNumber;
    PageControl1: TPageControl;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TCP_UDPPort1: TTCP_UDPPort;
    Timer3: TTimer;
    Timer2: TTimer;
    Timer1: TTimer;
    Timer4: TTimer;
    procedure AutoScanCoilUpdate(Sender: TObject);
    procedure AutoScanHoldingRegisterUpdate(Sender: TObject);
    procedure AutoScanInputRegisterUpdate(Sender: TObject);
    procedure AutoScanInputUpdate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox10EditingDone(Sender: TObject);
    procedure CheckBox11EditingDone(Sender: TObject);
    procedure CheckBox12EditingDone(Sender: TObject);
    procedure CheckBox13EditingDone(Sender: TObject);
    procedure CheckBox14EditingDone(Sender: TObject);
    procedure CheckBox15EditingDone(Sender: TObject);
    procedure CheckBox1EditingDone(Sender: TObject);
    procedure CheckBox2EditingDone(Sender: TObject);
    procedure CheckBox3EditingDone(Sender: TObject);
    procedure CheckBox4EditingDone(Sender: TObject);
    procedure CheckBox5EditingDone(Sender: TObject);
    procedure CheckBox6EditingDone(Sender: TObject);
    procedure CheckBox7EditingDone(Sender: TObject);
    procedure CheckBox8EditingDone(Sender: TObject);
    procedure CheckBox9EditingDone(Sender: TObject);
    procedure ComboBox10EditingDone(Sender: TObject);
    procedure ComboBox6EditingDone(Sender: TObject);
    procedure ComboBox7EditingDone(Sender: TObject);
    procedure ComboBox8EditingDone(Sender: TObject);
    procedure ComboBox9EditingDone(Sender: TObject);
    procedure Edit12EditingDone(Sender: TObject);
    procedure Edit15EditingDone(Sender: TObject);
    procedure Edit16EditingDone(Sender: TObject);
    procedure Edit17EditingDone(Sender: TObject);
    procedure Edit18EditingDone(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure Edit4EditingDone(Sender: TObject);
    procedure Edit5EditingDone(Sender: TObject);
    procedure Edit6EditingDone(Sender: TObject);
    procedure Edit9EditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure TCP_UDPPort1CommErrorReading(Error: TIOResult);
    procedure TCP_UDPPort1CommErrorWriting(Error: TIOResult);
    procedure TCP_UDPPort1CommPortClosed(Sender: TObject);
    procedure TCP_UDPPort1CommPortCloseError(Sender: TObject);
    procedure TCP_UDPPort1CommPortDisconnected(Sender: TObject);
    procedure TCP_UDPPort1CommPortOpened(Sender: TObject);
    procedure TCP_UDPPort1CommPortOpenError(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private
    function RepairIPAddress(s: string):string;
  public

  end;

var
  Form1: TForm1;

  b_AutoScanCoil:integer;  //begin
  e_AutoScanCoil:integer;  //end
  c_AutoScanCoil:integer;  //current
  OldCoil:String;

  b_AutoScanInput:integer;  //begin
  e_AutoScanInput:integer;  //end
  c_AutoScanInput:integer;  //current
  OldInput:string;

  b_AutoScanHoldingRegister:integer;  //begin
  e_AutoScanHoldingRegister:integer;  //end
  c_AutoScanHoldingRegister:integer;  //current
  OldHoldingRegister:String;

  b_AutoScanInputRegister:integer;  //begin
  e_AutoScanInputRegister:integer;  //end
  c_AutoScanInputRegister:integer;  //current
  OldInputRegister:String;

implementation

{$R *.lfm}

{ TForm1 }
function TForm1.RepairIPAddress(s: string):string;
var
  i:integer;
  k:integer;
  s2:string;
  c:integer;
  A_s: TStringArray;
begin

  //Edit1.Text:=chr(ord('0'));
  //Edit1.Text:=IntToStr(ord('9');

  s:=Trim(s);
  //s:=leftstr(s,15);

  s2:='';
  for i:=1 to length(s) do
  begin
    if (((ord(s[i]) >= 48) and (ord(s[i]) <= 57)) or (s[i] = '.')) then s2:=s2+s[i];
  end;
  s:=s2;

  if length(s) = 0 then s:=s+'0.0.0.0';

  if (s[1] = '.') then s:='0'+s;

  k:=0;
  for i:=1 to length(s) do
  begin
    if(s[i] = '.') then k:=k+1;
  end;
  if k=0 then s:=s+'.0.0.0';
  if k=1 then s:=s+'.0.0';
  if k=2 then s:=s+'.0';
  if s[length(s)]='.' then s:=s+'0';

  k:=0;
  c:=0;
  s2:='';
  for i:=1 to length(s) do
  begin
    if(s[i] = '.') then begin k:=k+1; c:=0; end;
    if (k>3) then
      begin
        s2:=s2;
      end
    else
      begin
        if not(s[i] = '.')then c:=c+1;
        if (c<=3) then s2:=s2+s[i];
      end;
  end;
  s:=s2;

  A_s:=SplitString(s,'.');

  k:=0;
  Try
    k:=StrToInt(A_s[0]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[1]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[2]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  k:=0;
  Try
    k:=StrToInt(A_s[3]);
  except
    On E : EConvertError do
      k:=0;
  end;
  if (k>255) then k:=255;
  if (k<0) then k:=0;
  s:=s+'.'+IntToStr(k);

  result := s;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit6.Caption:=RepairIPAddress(Edit6.Caption);
  TCP_UDPPort1.Host:=Edit6.Caption;
  Memo1.Append('TCP_UDPPort1 = Active');
  Edit5.Enabled:=false;
  Edit6.Enabled:=false;
  //RadioButton1.Enabled:=false;
  //RadioButton2.Enabled:=false;
  //RadioButton3.Enabled:=false;
  //RadioButton4.Enabled:=false;
  TCP_UDPPort1.Active:=true;
end;

procedure TForm1.AutoScanInputUpdate(Sender: TObject);
var
  s:string;
begin
  s:='UpdateAddress: '+ IntToStr(AutoScanInput.MemAddress) + ' Result: ' + AutoScanInput.Value.ToString;
  if ((OldInput<>s) and (AutoScanInput.Value <> 0)) then
  begin
    OldInput:=s;
    Memo4.Append(OldInput);
  end;
end;

procedure TForm1.AutoScanHoldingRegisterUpdate(Sender: TObject);
var
  s:string;
begin
  s:='UpdateAddress: '+ IntToStr(AutoScanHoldingRegister.MemAddress) + ' Result: ' + AutoScanHoldingRegister.Value.ToString;
  if ((OldHoldingRegister<>s) and (AutoScanHoldingRegister.Value <> 0)) then
  begin
    OldHoldingRegister:=s;
    Memo2.Append(OldHoldingRegister);
  end;
end;

procedure TForm1.AutoScanInputRegisterUpdate(Sender: TObject);
var
  s:string;
begin
  s:='UpdateAddress: '+ IntToStr(AutoScanInputRegister.MemAddress) + ' Result: ' + AutoScanInputRegister.Value.ToString;
  if ((OldInputRegister<>s) and (AutoScanInputRegister.Value <> 0)) then
  begin
    OldInputRegister:=s;
    Memo5.Append(OldInputRegister);
  end;
end;

procedure TForm1.AutoScanCoilUpdate(Sender: TObject);
var
  s:string;
begin
  s:='UpdateAddress: '+ IntToStr(AutoScanCoil.MemAddress) + ' Result: ' + AutoScanCoil.Value.ToString;
  if ((OldCoil<>s) and (AutoScanCoil.Value <> 0)) then
  begin
    OldCoil:=s;
    Memo3.Append(OldCoil);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Append('TCP_UDPPort1 = Deactive');
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
  Timer3.Enabled:=false;
  Timer4.Enabled:=false;
  Button3.Caption:='Start';
  Button4.Caption:='Start';
  Button5.Caption:='Start';
  Button6.Caption:='Start';
  Edit5.Enabled:=true;
  Edit6.Enabled:=true;
  RadioButton1.Enabled:=true;
  RadioButton2.Enabled:=true;
  RadioButton3.Enabled:=true;
  RadioButton4.Enabled:=true;
  TCP_UDPPort1.Active:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if Timer3.Enabled then
  begin
    Timer3.Enabled:=false;
    Button3.Caption:='Start';
  end
  else
  begin
    b_AutoScanHoldingRegister:=StrToInt(Edit2.Caption);
    e_AutoScanHoldingRegister:=StrToInt(Edit3.Caption);
    c_AutoScanHoldingRegister:=b_AutoScanHoldingRegister;
    AutoScanHoldingRegister.MemAddress:=c_AutoScanHoldingRegister;
    Label12.Caption:='Address: '+ IntToStr(AutoScanHoldingRegister.MemAddress);
    Timer3.Enabled:=true;
    Button3.Caption:='Stop';
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Timer1.Enabled then
  begin
    Timer1.Enabled:=false;
    Button4.Caption:='Start';
  end
  else
  begin
    b_AutoScanCoil:=StrToInt(Edit7.Caption);
    e_AutoScanCoil:=StrToInt(Edit8.Caption);
    c_AutoScanCoil:=b_AutoScanCoil;
    AutoScanCoil.MemAddress:=c_AutoScanCoil;
    Label19.Caption:='Address: '+ IntToStr(AutoScanCoil.MemAddress);
    Timer1.Enabled:=true;
    Button4.Caption:='Stop';
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  if Timer2.Enabled then
  begin
    Timer2.Enabled:=false;
    Button5.Caption:='Start';
  end
  else
  begin
    b_AutoScanInput:=StrToInt(Edit10.Caption);
    e_AutoScanInput:=StrToInt(Edit11.Caption);
    c_AutoScanInput:=b_AutoScanInput;
    AutoScanInput.MemAddress:=c_AutoScanInput;
    Label24.Caption:='Address: '+ IntToStr(AutoScanInput.MemAddress);
    Timer2.Enabled:=true;
    Button5.Caption:='Stop';
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Timer4.Enabled then
  begin
    Timer4.Enabled:=false;
    Button6.Caption:='Start';
  end
  else
  begin
    b_AutoScanInputRegister:=StrToInt(Edit13.Caption);
    e_AutoScanInputRegister:=StrToInt(Edit14.Caption);
    c_AutoScanInputRegister:=b_AutoScanInputRegister;
    AutoScanInputRegister.MemAddress:=c_AutoScanInputRegister;
    Label29.Caption:='Address: '+ IntToStr(AutoScanInputRegister.MemAddress);
    Timer4.Enabled:=true;
    Button6.Caption:='Stop';
  end;
end;

procedure TForm1.CheckBox10EditingDone(Sender: TObject);
begin
  AutoScanCoil.SwapBytes:=CheckBox10.Checked;
end;

procedure TForm1.CheckBox11EditingDone(Sender: TObject);
begin
  AutoScanCoil.SwapWords:=CheckBox11.Checked;
end;

procedure TForm1.CheckBox12EditingDone(Sender: TObject);
begin
  AutoScanCoil.SwapDWords:=CheckBox12.Checked;
end;

procedure TForm1.CheckBox13EditingDone(Sender: TObject);
begin
  CustomAddress.SwapBytes:=CheckBox13.Checked;
end;

procedure TForm1.CheckBox14EditingDone(Sender: TObject);
begin
  CustomAddress.SwapWords:=CheckBox14.Checked;
end;

procedure TForm1.CheckBox15EditingDone(Sender: TObject);
begin
  CustomAddress.SwapDWords:=CheckBox15.Checked;
end;

procedure TForm1.CheckBox1EditingDone(Sender: TObject);
begin
  AutoScanInputRegister.SwapBytes:=CheckBox1.Checked;
end;

procedure TForm1.CheckBox2EditingDone(Sender: TObject);
begin
  AutoScanInputRegister.SwapWords:=CheckBox2.Checked;
end;

procedure TForm1.CheckBox3EditingDone(Sender: TObject);
begin
  AutoScanInputRegister.SwapDWords:=CheckBox3.Checked;
end;

procedure TForm1.CheckBox4EditingDone(Sender: TObject);
begin
  AutoScanHoldingRegister.SwapBytes:=CheckBox4.Checked;
end;

procedure TForm1.CheckBox5EditingDone(Sender: TObject);
begin
  AutoScanHoldingRegister.SwapWords:=CheckBox5.Checked;
end;

procedure TForm1.CheckBox6EditingDone(Sender: TObject);
begin
  AutoScanHoldingRegister.SwapDWords:=CheckBox6.Checked;
end;

procedure TForm1.CheckBox7EditingDone(Sender: TObject);
begin
  AutoScanInput.SwapBytes:=CheckBox7.Checked;
end;

procedure TForm1.CheckBox8EditingDone(Sender: TObject);
begin
  AutoScanInput.SwapWords:=CheckBox8.Checked;
end;

procedure TForm1.CheckBox9EditingDone(Sender: TObject);
begin
  AutoScanInput.SwapDWords:=CheckBox9.Checked;
end;

procedure TForm1.ComboBox10EditingDone(Sender: TObject);
var
  i: integer;
begin
  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    if GetEnumName(TypeInfo(TTagType), i) = ComboBox10.Text then begin
      CustomAddress.TagType:= TTagType(i);
      exit;
    end;
  end;
end;

procedure TForm1.ComboBox6EditingDone(Sender: TObject);
var
  i: integer;
begin
  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    if GetEnumName(TypeInfo(TTagType), i) = ComboBox6.Text then begin
      AutoScanInputRegister.TagType:= TTagType(i);
      exit;
    end;
  end;
end;

procedure TForm1.ComboBox7EditingDone(Sender: TObject);
var
  i: integer;
begin
  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    if GetEnumName(TypeInfo(TTagType), i) = ComboBox7.Text then begin
      AutoScanHoldingRegister.TagType:= TTagType(i);
      exit;
    end;
  end;
end;

procedure TForm1.ComboBox8EditingDone(Sender: TObject);
var
  i: integer;
begin
  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    if GetEnumName(TypeInfo(TTagType), i) = ComboBox8.Text then begin
      AutoScanInput.TagType:= TTagType(i);
      exit;
    end;
  end;
end;

procedure TForm1.ComboBox9EditingDone(Sender: TObject);
var
  i: integer;
begin
  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    if GetEnumName(TypeInfo(TTagType), i) = ComboBox9.Text then begin
      AutoScanCoil.TagType:= TTagType(i);
      exit;
    end;
  end;
end;

procedure TForm1.Edit12EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:= StrToInt(Edit12.Caption);
  Timer2.Interval:=i;
end;

procedure TForm1.Edit15EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:= StrToInt(Edit15.Caption);
  Timer4.Interval:=i;
end;

procedure TForm1.Edit16EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Try
    i:=StrToInt(Edit16.Caption);
  except
    On E : EConvertError do
      i:=0;
  end;
  Edit16.Caption:= IntToStr(i);
  CustomAddress.MemSubElement:=i;
end;

procedure TForm1.Edit17EditingDone(Sender: TObject);
var
  i:longint;
begin
  if TryStrToInt(Edit17.Text,i) then
  begin
    if i < 0 then i:=0;
    if i > 255 then i:=255;
    Edit17.Text:=IntToStr(i);
  end
  else
  begin
    i:=0;
    Edit17.Text:=IntToStr(i);
  end;
  CustomAddress.MemReadFunction:=i;
end;

procedure TForm1.Edit18EditingDone(Sender: TObject);
var
  i:longint;
begin
  if TryStrToInt(Edit18.Text,i) then
  begin
    if i < 0 then i:=0;
    if i > 255 then i:=255;
    Edit18.Text:=IntToStr(i);
  end
  else
  begin
    i:=0;
    Edit18.Text:=IntToStr(i);
  end;
  CustomAddress.MemWriteFunction:=i;
end;

procedure TForm1.Edit1EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Try
    i:=StrToInt(Edit1.Caption);
  except
    On E : EConvertError do
      i:=0;
  end;
  Edit1.Caption:= IntToStr(i);
  CustomAddress.MemAddress:=i;
end;

procedure TForm1.Edit4EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:= StrToInt(Edit4.Caption);
  Timer3.Interval:=i;
end;

procedure TForm1.Edit5EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:=0;
  Try
    i:=StrToInt(Edit5.Caption);
  except
    On E : EConvertError do
      i:=502;
  end;
  Edit5.Caption:= IntToStr(i);
  TCP_UDPPort1.Port:=i;
end;

procedure TForm1.Edit6EditingDone(Sender: TObject);
begin
  Edit6.Caption:=RepairIPAddress(Edit6.Caption);
  TCP_UDPPort1.Host:=Edit6.Caption;
end;

procedure TForm1.Edit9EditingDone(Sender: TObject);
var
  i:integer;
begin
  i:= StrToInt(Edit9.Caption);
  Timer1.Interval:=i;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  Timer1.Enabled:=false;
  Timer2.Enabled:=false;
  Timer3.Enabled:=false;
  Timer4.Enabled:=false;
  TCP_UDPPort1.Active:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin

  CheckBox1.Checked:=AutoScanInputRegister.SwapBytes;
  CheckBox2.Checked:=AutoScanInputRegister.SwapWords;
  CheckBox3.Checked:=AutoScanInputRegister.SwapDWords;

  CheckBox4.Checked:=AutoScanHoldingRegister.SwapBytes;
  CheckBox5.Checked:=AutoScanHoldingRegister.SwapWords;
  CheckBox6.Checked:=AutoScanHoldingRegister.SwapDWords;

  CheckBox7.Checked:=AutoScanInput.SwapBytes;
  CheckBox8.Checked:=AutoScanInput.SwapWords;
  CheckBox9.Checked:=AutoScanInput.SwapDWords;

  CheckBox10.Checked:=AutoScanCoil.SwapBytes;
  CheckBox11.Checked:=AutoScanCoil.SwapWords;
  CheckBox12.Checked:=AutoScanCoil.SwapDWords;

  CheckBox13.Checked:=CustomAddress.SwapBytes;
  CheckBox14.Checked:=CustomAddress.SwapWords;
  CheckBox15.Checked:=CustomAddress.SwapDWords;


  for i := Ord(Low(TTagType)) to Ord(High(TTagType)) do
  begin
    ComboBox6.Items.Append(GetEnumName(typeInfo(TTagType), i));
    ComboBox7.Items.Append(GetEnumName(typeInfo(TTagType), i));
    ComboBox8.Items.Append(GetEnumName(typeInfo(TTagType), i));
    ComboBox9.Items.Append(GetEnumName(typeInfo(TTagType), i));
    ComboBox10.Items.Append(GetEnumName(typeInfo(TTagType), i));
  end;
  ComboBox6.ItemIndex:= Ord(AutoScanInputRegister.TagType);
  ComboBox7.ItemIndex:= Ord(AutoScanHoldingRegister.TagType);
  ComboBox8.ItemIndex:= Ord(AutoScanInput.TagType);
  ComboBox9.ItemIndex:= Ord(AutoScanCoil.TagType);
  ComboBox10.ItemIndex:= Ord(CustomAddress.TagType);

  b_AutoScanCoil:=StrToInt(Edit7.Caption);
  e_AutoScanCoil:=StrToInt(Edit8.Caption);
  c_AutoScanCoil:=b_AutoScanCoil;
  OldCoil:='';

  b_AutoScanInput:=StrToInt(Edit10.Caption);
  e_AutoScanInput:=StrToInt(Edit11.Caption);
  c_AutoScanInput:=b_AutoScanInput;
  OldInput:='';

  b_AutoScanHoldingRegister:=StrToInt(Edit2.Caption);
  e_AutoScanHoldingRegister:=StrToInt(Edit3.Caption);
  c_AutoScanHoldingRegister:=b_AutoScanHoldingRegister;
  OldHoldingRegister:='';

  b_AutoScanInputRegister:=0;
  e_AutoScanInputRegister:=0;
  c_AutoScanInputRegister:=b_AutoScanInputRegister;
  OldInputRegister:='';
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  CustomAddress.MemReadFunction:=1;
  CustomAddress.MemWriteFunction:=15;
  Edit17.Text:=IntToStr(1);
  Edit18.Text:=IntToStr(15);
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  CustomAddress.MemReadFunction:=2;
  CustomAddress.MemWriteFunction:=0;
  Edit17.Text:=IntToStr(2);
  Edit18.Text:=IntToStr(0);
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  CustomAddress.MemReadFunction:=3;
  CustomAddress.MemWriteFunction:=16;
  Edit17.Text:=IntToStr(3);
  Edit18.Text:=IntToStr(16);
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  CustomAddress.MemReadFunction:=4;
  CustomAddress.MemWriteFunction:=0;
  Edit17.Text:=IntToStr(4);
  Edit18.Text:=IntToStr(0);
end;

procedure TForm1.TCP_UDPPort1CommErrorReading(Error: TIOResult);
begin
  Memo1.Append('CommErrorReading');
end;

procedure TForm1.TCP_UDPPort1CommErrorWriting(Error: TIOResult);
begin
  Memo1.Append('CommErrorWriting');
end;

procedure TForm1.TCP_UDPPort1CommPortClosed(Sender: TObject);
begin
  Memo1.Append('CommPortClosed');
end;

procedure TForm1.TCP_UDPPort1CommPortCloseError(Sender: TObject);
begin
  Memo1.Append('CommPortCloseError');
end;

procedure TForm1.TCP_UDPPort1CommPortDisconnected(Sender: TObject);
begin
  Memo1.Append('CommPortDisconnected');
end;

procedure TForm1.TCP_UDPPort1CommPortOpened(Sender: TObject);
begin
  Memo1.Append('CommPortOpened');
end;

procedure TForm1.TCP_UDPPort1CommPortOpenError(Sender: TObject);
begin
  Memo1.Append('CommPortOpenError');
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if c_AutoScanCoil < b_AutoScanCoil then
  begin
    c_AutoScanCoil:=b_AutoScanCoil;
    AutoScanCoil.MemAddress:=c_AutoScanCoil;
    Label19.Caption:='Address: '+ IntToStr(AutoScanCoil.MemAddress);
    exit;
  end;

  if c_AutoScanCoil > e_AutoScanCoil then
  begin
    c_AutoScanCoil:=e_AutoScanCoil;
    AutoScanCoil.MemAddress:=c_AutoScanCoil;
    Label19.Caption:='Address: '+ IntToStr(AutoScanCoil.MemAddress);
    exit;
  end;

  if c_AutoScanCoil >= e_AutoScanCoil then
  begin
    Timer1.Enabled:=false;
    Button4.Caption:='Start';
    exit;
  end;

  c_AutoScanCoil:=c_AutoScanCoil+1;
  AutoScanCoil.MemAddress:=c_AutoScanCoil;
  Label19.Caption:='Address: '+ IntToStr(AutoScanCoil.MemAddress);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  if c_AutoScanInput < b_AutoScanInput then
  begin
    c_AutoScanInput:=b_AutoScanInput;
    AutoScanInput.MemAddress:=c_AutoScanInput;
    Label24.Caption:='Address: '+ IntToStr(AutoScanInput.MemAddress);
    exit;
  end;

  if c_AutoScanInput > e_AutoScanInput then
  begin
    c_AutoScanInput:=e_AutoScanInput;
    AutoScanInput.MemAddress:=c_AutoScanInput;
    Label24.Caption:='Address: '+ IntToStr(AutoScanInput.MemAddress);
    exit;
  end;

  if c_AutoScanInput >= e_AutoScanInput then
  begin
    Timer2.Enabled:=false;
    Button5.Caption:='Start';
    exit;
  end;

  c_AutoScanInput:=c_AutoScanInput+1;
  AutoScanInput.MemAddress:=c_AutoScanInput;
  Label24.Caption:='Address: '+ IntToStr(AutoScanInput.MemAddress);
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  if c_AutoScanHoldingRegister < b_AutoScanHoldingRegister then
  begin
    c_AutoScanHoldingRegister:=b_AutoScanHoldingRegister;
    AutoScanHoldingRegister.MemAddress:=c_AutoScanHoldingRegister;
    Label12.Caption:='Address: '+ IntToStr(AutoScanHoldingRegister.MemAddress);
    exit;
  end;

  if c_AutoScanHoldingRegister > e_AutoScanHoldingRegister then
  begin
    c_AutoScanHoldingRegister:=e_AutoScanHoldingRegister;
    AutoScanHoldingRegister.MemAddress:=c_AutoScanHoldingRegister;
    Label12.Caption:='Address: '+ IntToStr(AutoScanHoldingRegister.MemAddress);
    exit;
  end;

  if c_AutoScanHoldingRegister >= e_AutoScanHoldingRegister then
  begin
    Timer3.Enabled:=false;
    Button3.Caption:='Start';
    exit;
  end;

  c_AutoScanHoldingRegister:=c_AutoScanHoldingRegister+1;
  AutoScanHoldingRegister.MemAddress:=c_AutoScanHoldingRegister;
  Label12.Caption:='Address: '+ IntToStr(AutoScanHoldingRegister.MemAddress);

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  if c_AutoScanInputRegister < b_AutoScanInputRegister then
  begin
    c_AutoScanInputRegister:=b_AutoScanInputRegister;
    AutoScanInputRegister.MemAddress:=c_AutoScanInputRegister;
    Label29.Caption:='Address: '+ IntToStr(AutoScanInputRegister.MemAddress);
    exit;
  end;

  if c_AutoScanInputRegister > e_AutoScanInputRegister then
  begin
    c_AutoScanInputRegister:=e_AutoScanInputRegister;
    AutoScanInputRegister.MemAddress:=c_AutoScanInputRegister;
    Label29.Caption:='Address: '+ IntToStr(AutoScanInputRegister.MemAddress);
    exit;
  end;

  if c_AutoScanInputRegister >= e_AutoScanInputRegister then
  begin
    Timer4.Enabled:=false;
    Button6.Caption:='Start';
    exit;
  end;

  c_AutoScanInputRegister:=c_AutoScanInputRegister+1;
  AutoScanInputRegister.MemAddress:=c_AutoScanInputRegister;
  Label29.Caption:='Address: '+ IntToStr(AutoScanInputRegister.MemAddress);

end;

end.

