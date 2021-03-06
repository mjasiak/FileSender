program fileSenderProject;

uses
  Vcl.Forms,
  Windows,
  Vcl.Themes,
  Vcl.Styles,
  fileSender in 'fileSender.pas' {Form1},
  u_SplashScreen in 'u_SplashScreen.pas' {frmSplashScreen};

{$R *.res}


var
splash : tfrmSplashScreen;
begin
  Application.Initialize;
  splash := TfrmSplashScreen.Create(nil);
  try

      Application.MainFormOnTaskbar := True;
      splash.ProgressBar1.Max := 100;
      splash.Show;
      splash.Update;

      Application.HelpFile := 'C:\Users\Sebastian\Documents\Embarcadero\Studio\Projects\fileSender-git\File Sender.chm';
      splash.ProgressBar1.StepBy(40);
      splash.label2.Caption := '�aduj� plik pomocy';
      splash.Update;
      Sleep(1000);

      Application.CreateForm(TfrmMain, frmMain);
      splash.ProgressBar1.StepBy(50);
      splash.label2.Caption := '�aduj� okno g��wne';
      splash.Update;
      Sleep(2000);

      splash.ProgressBar1.StepBy(10);
      splash.label2.Caption := '�aduj� obrazki';
      splash.Update;
      Sleep(500);


  finally
      splash.Free;
  end;
  Application.Run;
end.
