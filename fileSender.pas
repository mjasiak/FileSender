unit fileSender;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Menus, IdTCPConnection, IdTCPClient, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdTCPServer;

type
  TfrmMain = class(TForm)
    lbledt_IP: TLabeledEdit;
    lbledt_Password: TLabeledEdit;
    grpbx_ParamUser: TGroupBox;
    grpbx_Start: TGroupBox;
    grpbx_Receive: TGroupBox;
    btn_Receive: TButton;
    btn_Send: TButton;
    btn_NewTransfer: TButton;
    grpbx_Send: TGroupBox;
    lbledt_ReceiverIP: TLabeledEdit;
    lbledt_ReceiverPass: TLabeledEdit;
    btn_SendConfirm: TButton;
    filedlg_Send: TOpenTextFileDialog;
    btn_OpenFile: TButton;
    mainMenu: TMainMenu;
    menuFile: TMenuItem;
    menuFileNewTransfer: TMenuItem;
    menuFileClose: TMenuItem;
    menuProgram: TMenuItem;
    menuProgramNewPass: TMenuItem;
    menuHelp: TMenuItem;
    menuHelpHelp: TMenuItem;
    menuHelpAbout: TMenuItem;
    TCPServer: TIdTCPServer;
    TCPClient: TIdTCPClient;
    procedure btn_ReceiveClick(Sender: TObject);
    procedure btn_SendClick(Sender: TObject);
    procedure btn_NewTransferClick(Sender: TObject);
    procedure btn_OpenFileClick(Sender: TObject);
    procedure btn_SendConfirmClick(Sender: TObject);
    procedure menuFileCloseClick(Sender: TObject);
    procedure menuFileNewTransferClick(Sender: TObject);
    procedure onCreate(Sender: TObject);
    procedure menuProgramNewPassClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
function RandomPassword(passLen: Integer): string;
var
  str: string;
begin
  Randomize;
  //we should change this to only four-digit code like 0000;1234;9999
  //string with all possible chars
  str    := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()';
  Result := '';
  repeat
    Result := Result + str[Random(Length(str)) + 1];
  until (Length(Result) = passLen)
end;


procedure TfrmMain.btn_NewTransferClick(Sender: TObject);
begin
   grpbx_Send.Visible := False;
   grpbx_Receive.Visible := False;
end;

procedure TfrmMain.btn_OpenFileClick(Sender: TObject);
begin
filedlg_Send.Execute();
end;

procedure TfrmMain.btn_ReceiveClick(Sender: TObject);
begin
grpbx_Receive.Visible := True;
end;

procedure TfrmMain.btn_SendClick(Sender: TObject);
begin
grpbx_Send.Visible := True;
end;

procedure TfrmMain.btn_SendConfirmClick(Sender: TObject);
begin
lbledt_ReceiverPass.Text := filedlg_Send.FileName;
end;

procedure TfrmMain.menuFileCloseClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmMain.menuFileNewTransferClick(Sender: TObject);
begin
btn_NewTransfer.Click();
end;

procedure TfrmMain.menuProgramNewPassClick(Sender: TObject);
begin
lbledt_Password.Text := RandomPassword(20);
end;

procedure TfrmMain.onCreate(Sender: TObject);
begin
lbledt_Password.Text := RandomPassword(20);
end;

end.
