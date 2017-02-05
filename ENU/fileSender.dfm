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
  object grpbx_Start: TGroupBox
    Left = 416
    Top = 68
    Width = 337
    Height = 328
    Caption = 'Start'
    TabOrder = 1
    object btn_Receive: TButton
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Receive'
      TabOrder = 1
      OnClick = btn_ReceiveClick
    end
    object btn_Send: TButton
      Left = 216
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Send'
      TabOrder = 2
      OnClick = btn_SendClick
    end
    object grpbx_Receive: TGroupBox
      Left = 3
      Top = 17
      Width = 331
      Height = 249
      Caption = 'Receive'
      TabOrder = 0
      Visible = False
      object statBar_Receive: TStatusBar
        Left = 2
        Top = 228
        Width = 327
        Height = 19
        Panels = <
          item
            Width = 50
          end>
      end
    end
    object grpbx_Send: TGroupBox
      Left = 3
      Top = 17
      Width = 331
      Height = 249
      Caption = 'Send'
      TabOrder = 4
      Visible = False
      object lbledt_ReceiverIP: TLabeledEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 56
        EditLabel.Height = 13
        EditLabel.Caption = 'Receivers IP'
        TabOrder = 0
        OnKeyPress = OnlyDigitChars
      end
      object lbledt_ReceiverPass: TLabeledEdit
        Left = 24
        Top = 92
        Width = 121
        Height = 21
        EditLabel.Width = 71
        EditLabel.Height = 13
        EditLabel.Caption = 'Receivers Password'
        MaxLength = 4
        TabOrder = 1
        OnKeyPress = OnlyDigitChars
      end
      object btn_SendConfirm: TButton
        Left = 239
        Top = 189
        Width = 89
        Height = 33
        Caption = 'Confirm'
        TabOrder = 2
        OnClick = btn_SendConfirmClick
      end
      object btn_OpenFile: TButton
        Left = 24
        Top = 136
        Width = 113
        Height = 25
        Caption = 'Choose file...'
        TabOrder = 3
        OnClick = btn_OpenFileClick
      end
      object statBar_Send: TStatusBar
        Left = 2
        Top = 228
        Width = 327
        Height = 19
        Panels = <
          item
            Width = 50
          end>
      end
    end
    object btn_NewTransfer: TButton
      Left = 120
      Top = 284
      Width = 97
      Height = 41
      Caption = 'New file transfer'
      TabOrder = 3
      OnClick = btn_NewTransferClick
    end
  end
  object grpbx_ParamUser: TGroupBox
    Left = 24
    Top = 68
    Width = 289
    Height = 328
    Caption = 'Users parameters'
    TabOrder = 0
    object lbledt_IP: TLabeledEdit
      Left = 32
      Top = 76
      Width = 233
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Your IP'
      TabOrder = 0
    end
    object lbledt_Password: TLabeledEdit
      Left = 32
      Top = 116
      Width = 233
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Your password'
      ReadOnly = True
      TabOrder = 1
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
      Caption = 'File'
      object menuFileNewTransfer: TMenuItem
        Caption = 'New file transfer'
        OnClick = menuFileNewTransferClick
      end
      object menuFileClose: TMenuItem
        Caption = 'Close'
        OnClick = menuFileCloseClick
      end
    end
    object menuProgram: TMenuItem
      Caption = 'Program'
      object menuProgramNewPass: TMenuItem
        Caption = 'Generate new password'
        OnClick = menuProgramNewPassClick
      end
    end
    object menuHelp: TMenuItem
      Caption = 'Help'
      object menuHelpHelp: TMenuItem
        Caption = 'Help'
      end
      object menuHelpAbout: TMenuItem
        Caption = 'Authors'
      end
    end
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    OnRead = ClientSocket1Read
    Left = 584
    Top = 16
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 512
    Top = 16
  end
  object saveDlg_Receive: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 448
    Top = 16
  end
end
