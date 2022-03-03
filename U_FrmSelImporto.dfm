object FrmSelImporto: TFrmSelImporto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Seleziona Importo'
  ClientHeight = 268
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 386
    Height = 268
    Align = alClient
    BevelOuter = bvNone
    Color = 16445929
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7485192
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.4.2.0'
    AutoHideChildren = False
    BorderColor = 16765615
    Caption.Color = 16773091
    Caption.ColorTo = 16765615
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clBlack
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15587527
    ColorMirror = 15587527
    ColorMirrorTo = 16773863
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16765615
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 7485192
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16245715
    StatusBar.ColorTo = 16109747
    StatusBar.GradientDirection = gdVertical
    Styler = FrmMain.AdvPanelStyler1
    Text = ''
    ExplicitHeight = 255
    FullHeight = 200
    object Label99: TLabel
      Left = 34
      Top = 52
      Width = 57
      Height = 13
      Caption = '* Causale'
      Color = 16445929
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label98: TLabel
      Left = 34
      Top = 100
      Width = 103
      Height = 13
      Caption = '* Tipo Pagamento'
      Color = 16445929
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label57: TLabel
      Left = 34
      Top = 147
      Width = 129
      Height = 13
      Caption = 'Modalit'#224' di Pagamento'
      Color = 16445929
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object EdImporto: TcxCurrencyEdit
      Left = 237
      Top = 17
      EditValue = 1000000c
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = #8364' ,0.00 ;- '#8364' ,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 121
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 34
      Top = 200
      Width = 321
      Height = 33
      Caption = 'Conferma'
      Default = True
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object StaticText3: TStaticText
      Left = 34
      Top = 18
      Width = 198
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Caption = 'Importo da Fatturare   '#8364': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Transparent = False
    end
    object CmbCausale: TcxComboBox
      Left = 34
      Top = 68
      ParentFont = False
      Properties.Items.Strings = (
        'PRESTAZIONI MEDICHE'
        'TERAPIA CONSERVATIVA')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 324
    end
    object CmbTipoPag: TcxComboBox
      Left = 34
      Top = 117
      ParentFont = False
      Properties.Sorted = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 324
    end
    object CmbModPag: TcxComboBox
      Left = 34
      Top = 165
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 324
    end
  end
  object TipoPagamento: TMyTable
    TableName = 'codifiche'
    Connection = DM.MyConnection1
    Active = True
    Filtered = True
    Filter = 'TIPO='#39'MP'#39
    Options.FieldOrigins = foNone
    Left = 272
    Top = 115
    object TipoPagamentocod_codifica: TStringField
      FieldName = 'cod_codifica'
      Size = 5
    end
    object TipoPagamentotipo: TStringField
      FieldName = 'tipo'
      Size = 2
    end
    object TipoPagamentodescrizione: TStringField
      FieldName = 'descrizione'
      Size = 255
    end
  end
  object ModPag: TMyTable
    TableName = 'modalitapagamento'
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 274
    Top = 163
    object ModPagId_ModPag: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_ModPag'
      Origin = 'modalitapagamento.Id_ModPag'
      ReadOnly = True
    end
    object ModPagDescrizione: TStringField
      FieldName = 'Descrizione'
      Origin = 'modalitapagamento.Descrizione'
      Size = 100
    end
    object ModPagDF_FM: TStringField
      FieldName = 'DF_FM'
      Origin = 'modalitapagamento.DF_FM'
      Size = 2
    end
    object ModPagNumeroRate: TFloatField
      FieldName = 'NumeroRate'
      Origin = 'modalitapagamento.NumeroRate'
    end
    object ModPagUsaInFornitori: TBooleanField
      FieldName = 'UsaInFornitori'
      Origin = 'modalitapagamento.UsaInFornitori'
    end
    object ModPagUsaBancaCliente: TBooleanField
      FieldName = 'UsaBancaCliente'
      Origin = 'modalitapagamento.UsaBancaCliente'
    end
    object ModPagCOD_TIPO_PAGAMENTO: TStringField
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'modalitapagamento.COD_TIPO_PAGAMENTO'
      Size = 4
    end
    object ModPagtipo_pagamento_descr: TStringField
      FieldName = 'tipo_pagamento_descr'
      Origin = 'modalitapagamento.tipo_pagamento_descr'
      Size = 50
    end
    object ModPagtracciato: TSmallintField
      FieldName = 'tracciato'
      Origin = 'modalitapagamento.tracciato'
    end
  end
  object DsTipoPagamento: TDataSource
    DataSet = TipoPagamento
    Left = 240
    Top = 115
  end
  object DsModPag: TDataSource
    DataSet = ModPag
    Left = 240
    Top = 163
  end
end
