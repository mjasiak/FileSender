program fileSenderProject;

uses
  Vcl.Forms,
  fileSender in 'fileSender.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
