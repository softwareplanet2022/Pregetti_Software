object FrmFirma: TFrmFirma
  Left = 418
  Top = 206
  BorderStyle = bsDialog
  Caption = '  Firma'
  ClientHeight = 743
  ClientWidth = 1190
  Color = clBtnFace
  Constraints.MinHeight = 55
  Constraints.MinWidth = 46
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1190
    Height = 694
    Align = alClient
    AutoSize = True
    Center = True
    Stretch = True
    OnMouseDown = Image1MouseDown
    OnMouseMove = Image1MouseMove
    OnMouseUp = Image1MouseUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 694
    Width = 1190
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    Color = 15584691
    TabOrder = 0
    DesignSize = (
      1190
      49)
    object suiButton1: TButton
      Left = 24
      Top = 8
      Width = 80
      Height = 32
      Anchors = [akLeft, akBottom]
      Caption = '&Salva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = suitempsuiButton1Click
    end
    object suiButton3: TButton
      Left = 1016
      Top = 8
      Width = 80
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = '&Pulisci'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = suitempsuiButton3Click
    end
    object suiButton2: TButton
      Left = 1104
      Top = 8
      Width = 80
      Height = 32
      Anchors = [akRight, akBottom]
      Caption = '&Chiudi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = suitempsuiButton2Click
    end
  end
end
