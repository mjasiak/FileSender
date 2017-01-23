object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 404
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenu
  OldCreateOrder = False
  OnCreate = onCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grpbx_ParamUser: TGroupBox
    Left = 24
    Top = 68
    Width = 289
    Height = 328
    Caption = 'Parametry u'#380'ytkownika'
    TabOrder = 0
    object lbledt_IP: TLabeledEdit
      Left = 32
      Top = 76
      Width = 233
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Twoje IP'
      ReadOnly = True
      TabOrder = 0
    end
    object lbledt_Password: TLabeledEdit
      Left = 32
      Top = 116
      Width = 233
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Has'#322'o'
      ReadOnly = True
      TabOrder = 1
    end
  end
  object grpbx_Start: TGroupBox
    Left = 416
    Top = 68
    Width = 337
    Height = 328
    Caption = 'Start'
    TabOrder = 1
    object btn_NewTransfer: TButton
      Left = 120
      Top = 284
      Width = 97
      Height = 41
      Caption = 'Nowy transfer'
      TabOrder = 3
      OnClick = btn_NewTransferClick
    end
    object btn_Send: TButton
      Left = 216
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Wy'#347'lij'
      TabOrder = 2
      OnClick = btn_SendClick
    end
    object btn_Receive: TButton
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Odbierz'
      TabOrder = 1
      OnClick = btn_ReceiveClick
    end
    object grpbx_Receive: TGroupBox
      Left = 3
      Top = 17
      Width = 331
      Height = 249
      Caption = 'Odbierz'
      TabOrder = 0
      Visible = False
    end
    object grpbx_Send: TGroupBox
      Left = 3
      Top = 17
      Width = 331
      Height = 249
      Caption = 'Wy'#347'lij'
      TabOrder = 4
      Visible = False
      object lbledt_ReceiverIP: TLabeledEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 56
        EditLabel.Height = 13
        EditLabel.Caption = 'IP Odbiorcy'
        TabOrder = 0
      end
      object lbledt_ReceiverPass: TLabeledEdit
        Left = 24
        Top = 92
        Width = 121
        Height = 21
        EditLabel.Width = 71
        EditLabel.Height = 13
        EditLabel.Caption = 'Has'#322'o odbiorcy'
        TabOrder = 1
      end
      object btn_SendConfirm: TButton
        Left = 200
        Top = 200
        Width = 89
        Height = 33
        Caption = 'Wy'#347'lij'
        TabOrder = 2
        OnClick = btn_SendConfirmClick
      end
      object btn_OpenFile: TButton
        Left = 24
        Top = 136
        Width = 113
        Height = 25
        Caption = 'Wybierz plik...'
        TabOrder = 3
        OnClick = btn_OpenFileClick
      end
    end
  end
  object filedlg_Send: TOpenTextFileDialog
    Left = 744
    Top = 12
  end
  object mainMenu: TMainMenu
    Left = 680
    Top = 16
    object menuFile: TMenuItem
      Caption = 'Plik'
      object menuFileNewTransfer: TMenuItem
        Caption = 'Nowy Transfer'
        OnClick = menuFileNewTransferClick
      end
      object menuFileClose: TMenuItem
        Caption = 'Zako'#324'cz'
        OnClick = menuFileCloseClick
      end
    end
    object menuProgram: TMenuItem
      Caption = 'Program'
      object menuProgramNewPass: TMenuItem
        Caption = 'Generuj nowe has'#322'o'
        OnClick = menuProgramNewPassClick
      end
    end
    object menuHelp: TMenuItem
      Caption = 'Pomoc'
      object menuHelpHelp: TMenuItem
        Caption = 'Pomoc'
      end
      object menuHelpAbout: TMenuItem
        Caption = 'Autorzy'
      end
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 584
    Top = 16
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    Left = 512
    Top = 16
  end
end
