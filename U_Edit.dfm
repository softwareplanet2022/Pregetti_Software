object FrmEdit: TFrmEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Modifica Dati in Fattura'
  ClientHeight = 514
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 378
    Height = 514
    Align = alClient
    BevelOuter = bvNone
    Color = 16643823
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '2.4.2.0'
    BorderColor = 13087391
    Caption.Color = 16643823
    Caption.ColorTo = 15784647
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clNone
    CollapsDelay = 0
    ColorTo = 15784647
    DoubleBuffered = True
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = 16643823
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = 5978398
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 16643823
    StatusBar.ColorTo = 15784647
    StatusBar.GradientDirection = gdVertical
    Text = ''
    FullHeight = 300
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 57
      Height = 13
      Caption = 'N'#176' Fattura'
      FocusControl = cxDBCalcEdit2
    end
    object Label3: TLabel
      Left = 109
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Data'
      FocusControl = cxDBDateEdit1
    end
    object Label4: TLabel
      Left = 24
      Top = 65
      Width = 155
      Height = 13
      Caption = 'Cognome e Nome Paziente'
      FocusControl = cxDBTextEdit1
    end
    object Label5: TLabel
      Left = 231
      Top = 111
      Width = 95
      Height = 13
      Caption = 'Data Pagamento'
      FocusControl = cxDBDateEdit2
    end
    object Label1: TLabel
      Left = 24
      Top = 111
      Width = 81
      Height = 13
      Caption = 'Codice Fiscale'
      FocusControl = cxDBTextEdit2
    end
    object cxDBCalcEdit2: TcxDBCalcEdit
      Left = 24
      Top = 35
      DataBinding.DataField = 'NumFattura'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 79
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 109
      Top = 35
      DataBinding.DataField = 'Data'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 116
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 84
      DataBinding.DataField = 'RagioneSociale'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 328
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 24
      Top = 190
      Caption = 'Pagamento Tracciato'
      DataBinding.DataField = 'pagamento_tracciato'
      DataBinding.DataSource = DataSource1
      TabOrder = 6
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 24
      Top = 163
      Caption = 'Pagata'
      DataBinding.DataField = 'pagata'
      DataBinding.DataSource = DataSource1
      TabOrder = 5
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 231
      Top = 130
      DataBinding.DataField = 'data_pagamento'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 24
      Top = 217
      Caption = 'Accettazione Invio'
      DataBinding.DataField = 'accettazione_invio'
      DataBinding.DataSource = DataSource1
      TabOrder = 7
    end
    object BtnEsci: TAdvGlowButton
      Left = 92
      Top = 465
      Width = 95
      Height = 37
      Caption = 'Conferma'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      OnClick = BtnEsciClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 193
      Top = 465
      Width = 95
      Height = 37
      Caption = 'Annulla'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 9
      OnClick = AdvGlowButton1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 24
      Top = 130
      DataBinding.DataField = 'CodFisc'
      DataBinding.DataSource = DataSource1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 201
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 289
      Width = 353
      Height = 129
      DataSource = DsDETTAGLI
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'AliquotaIva'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NATURA_IVA'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_SPESA'
          Width = 99
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 421
      Width = 351
      Height = 25
      VisibleButtons = [nbEdit, nbPost, nbCancel]
      TabOrder = 11
      Visible = False
    end
    object cxCheckBox1: TcxCheckBox
      Left = 24
      Top = 244
      AutoSize = False
      Caption = 'Mostra Righe di Dettaglio'
      TabOrder = 12
      OnClick = cxCheckBox1Click
      Height = 21
      Width = 179
    end
  end
  object DataSource1: TDataSource
    DataSet = FrmTS.Fatture
    Left = 240
    Top = 8
  end
  object DETTAGLI: TMyTable
    TableName = 'DettFatture'
    MasterFields = 'Id_Fattura'
    DetailFields = 'Id_Fattura'
    MasterSource = DataSource1
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 270
    Top = 40
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Id_Fattura'
        ParamType = ptInput
        Value = 2067
      end>
    object DETTAGLIId_Dettaglio: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id_Dettaglio'
      ReadOnly = True
    end
    object DETTAGLIId_Fattura: TFloatField
      FieldName = 'Id_Fattura'
    end
    object DETTAGLIQta: TFloatField
      Alignment = taCenter
      FieldName = 'Qta'
    end
    object DETTAGLIDescrizione: TStringField
      FieldName = 'Descrizione'
      Size = 255
    end
    object DETTAGLIPrezzoUnitario: TCurrencyField
      FieldName = 'PrezzoUnitario'
    end
    object DETTAGLISconto: TFloatField
      Alignment = taCenter
      FieldName = 'Sconto'
    end
    object DETTAGLIAliquotaIva: TFloatField
      Alignment = taCenter
      FieldName = 'AliquotaIva'
    end
    object DETTAGLINATURA_IVA: TStringField
      Alignment = taCenter
      FieldName = 'NATURA_IVA'
      Size = 2
    end
    object DETTAGLITIPO_SPESA: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_SPESA'
      Size = 2
    end
    object DETTAGLICalcImporto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImporto'
      Calculated = True
    end
    object DETTAGLICalcImportoSconto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoSconto'
      Calculated = True
    end
    object DETTAGLICalcImportoScontato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoScontato'
      Calculated = True
    end
    object DETTAGLICalcImportoIva: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImportoIva'
      Calculated = True
    end
    object DETTAGLICalcImpScontatoIvato: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcImpScontatoIvato'
      Calculated = True
    end
  end
  object DsDETTAGLI: TDataSource
    DataSet = DETTAGLI
    Left = 238
    Top = 40
  end
end
