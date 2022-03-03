object FrmEtichette: TFrmEtichette
  Left = 695
  Top = 289
  BorderStyle = bsDialog
  Caption = '    Stampa Etichette Appuntamenti'
  ClientHeight = 451
  ClientWidth = 670
  Color = clBtnFace
  Constraints.MinHeight = 32
  Constraints.MinWidth = 130
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 451
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
    FullHeight = 200
    object Label89: TLabel
      Left = 14
      Top = 10
      Width = 48
      Height = 13
      Caption = 'Paziente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label150: TLabel
      Left = 326
      Top = 9
      Width = 61
      Height = 13
      Caption = 'Dal Giorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label152: TLabel
      Left = 440
      Top = 9
      Width = 53
      Height = 13
      Caption = 'Al Giorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdInizio: TcxDateEdit
      Left = 326
      Top = 26
      AutoSize = False
      EditValue = 44197d
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = EdInizioPropertiesEditValueChanged
      Properties.OnValidate = EdInizioPropertiesValidate
      Style.BorderColor = 10513231
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 8404992
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.ButtonStyle = btsDefault
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 1
      Height = 22
      Width = 110
    end
    object EdFine: TcxDateEdit
      Left = 440
      Top = 26
      AutoSize = False
      EditValue = 44197d
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = EdFinePropertiesEditValueChanged
      Properties.OnValidate = EdFinePropertiesValidate
      Style.BorderColor = 10513231
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.ButtonStyle = btsDefault
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Height = 22
      Width = 110
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 236
      Top = 407
      Width = 96
      Height = 28
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 338
      Top = 407
      Width = 96
      Height = 28
      Caption = 'ANNULLA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = AdvGlowButton2Click
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
    object AdvGlowButton3: TAdvGlowButton
      Left = 556
      Top = 26
      Width = 96
      Height = 23
      Caption = 'FILTRA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = AdvGlowButton3Click
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
    object CmbPazienti: TcxComboBox
      Left = 13
      Top = 26
      ParentFont = False
      Properties.OnChange = CmbPazientiPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 3487029
      Style.Font.Height = -11
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 3487029
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 0
      Width = 306
    end
    object cxGrid2: TcxGrid
      Left = 15
      Top = 64
      Width = 637
      Height = 328
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopEtichette
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = DSPlanner
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.NoDataToDisplayInfoText = 'Nessun Appuntamento da mostrare'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.Indicator = True
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        Styles.Header = FrmMain.cxStyle12
        object cxGrid2DBTableView1PAZIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'PAZIENTE'
          HeaderAlignmentHorz = taCenter
          Width = 350
        end
        object cxGrid2DBTableView1DATA: TcxGridDBColumn
          DataBinding.FieldName = 'DATA'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGrid2DBTableView1STARTTIME: TcxGridDBColumn
          Caption = 'INIZIO'
          DataBinding.FieldName = 'STARTTIME'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object cxGrid2DBTableView1ENDTIME: TcxGridDBColumn
          Caption = 'FINE'
          DataBinding.FieldName = 'ENDTIME'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
      end
      object cxGrid2DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DetailKeyFieldNames = 'Id_Fattura'
        DataController.KeyFieldNames = 'Id_Fattura'
        DataController.MasterKeyFieldNames = 'Id_Fattura'
        DataController.MultiThreadedOptions.Filtering = bTrue
        DataController.MultiThreadedOptions.Sorting = bTrue
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.EditMode = emInplaceEditForm
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object cxGrid2DBTableView2Qta: TcxGridDBColumn
          DataBinding.FieldName = 'Qta'
          Width = 40
        end
        object cxGrid2DBTableView2Descrizione: TcxGridDBColumn
          DataBinding.FieldName = 'Descrizione'
          Width = 400
        end
        object cxGrid2DBTableView2PrezzoUnitario: TcxGridDBColumn
          DataBinding.FieldName = 'PrezzoUnitario'
          Width = 89
        end
        object cxGrid2DBTableView2Sconto: TcxGridDBColumn
          DataBinding.FieldName = 'Sconto'
          Width = 74
        end
        object cxGrid2DBTableView2AliquotaIva: TcxGridDBColumn
          DataBinding.FieldName = 'AliquotaIva'
          Width = 74
        end
        object cxGrid2DBTableView2NATURA_IVA: TcxGridDBColumn
          DataBinding.FieldName = 'NATURA_IVA'
          Width = 69
        end
        object cxGrid2DBTableView2TIPO_SPESA: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_SPESA'
          Width = 79
        end
        object cxGrid2DBTableView2CalcImpScontatoIvato: TcxGridDBColumn
          DataBinding.FieldName = 'CalcImpScontatoIvato'
          Width = 112
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object QryPazienti: TMyQuery
    Connection = DM.MyConnection1
    SQL.Strings = (
      'SELECT CONCAT(Cognome,'#39' '#39',Nome)As Nominativo, Cod_Paziente'
      'FROM pazienti'
      'Order By Nominativo, Cod_Paziente')
    Options.FieldOrigins = foNone
    Active = True
    Left = 104
    Top = 143
    object QryPazientiCod_Paziente: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Cod_Paziente'
      Origin = 'Pazienti.cod_paziente'
    end
    object QryPazientiNominativo: TStringField
      FieldName = 'Nominativo'
      Origin = '.Nominativo'
      Size = 301
    end
  end
  object PlannerTable: TMyTable
    TableName = 'agenda'
    Connection = DM.MyConnection1
    Active = True
    Options.FieldOrigins = foNone
    Left = 136
    Top = 175
    object PlannerTableSTARTTIME: TDateTimeField
      Alignment = taCenter
      FieldName = 'STARTTIME'
      Origin = 'Agenda.STARTTIME'
      DisplayFormat = 'HH:MM'
    end
    object PlannerTableENDTIME: TDateTimeField
      Alignment = taCenter
      FieldName = 'ENDTIME'
      Origin = 'Agenda.ENDTIME'
      DisplayFormat = 'HH:MM'
    end
    object PlannerTableNOTES: TMemoField
      FieldName = 'NOTES'
      Origin = 'Agenda.NOTES'
      BlobType = ftMemo
    end
    object PlannerTableSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Origin = 'Agenda.SUBJECT'
      Size = 50
    end
    object PlannerTableFROMCOLOR: TFloatField
      FieldName = 'FROMCOLOR'
      Origin = 'Agenda.FROMCOLOR'
    end
    object PlannerTableTOCOLOR: TFloatField
      FieldName = 'TOCOLOR'
      Origin = 'Agenda.TOCOLOR'
    end
    object PlannerTableTRACKCOLOR: TFloatField
      FieldName = 'TRACKCOLOR'
      Origin = 'Agenda.TRACKCOLOR'
    end
    object PlannerTableSELECTCOLOR: TFloatField
      FieldName = 'SELECTCOLOR'
      Origin = 'Agenda.SELECTCOLOR'
    end
    object PlannerTableSELECTCOLORTO: TFloatField
      FieldName = 'SELECTCOLORTO'
      Origin = 'Agenda.SELECTCOLORTO'
    end
    object PlannerTableCAPTION: TBooleanField
      FieldName = 'CAPTION'
      Origin = 'Agenda.CAPTION'
    end
    object PlannerTableSHAPE: TFloatField
      FieldName = 'SHAPE'
      Origin = 'Agenda.SHAPE'
    end
    object PlannerTablePRINTCOLOR: TFloatField
      FieldName = 'PRINTCOLOR'
      Origin = 'Agenda.PRINTCOLOR'
    end
    object PlannerTableFONTSIZE: TFloatField
      FieldName = 'FONTSIZE'
      Origin = 'Agenda.FONTSIZE'
    end
    object PlannerTableFONTNAME: TStringField
      FieldName = 'FONTNAME'
      Origin = 'Agenda.FONTNAME'
      Size = 50
    end
    object PlannerTableDATA: TDateField
      Alignment = taCenter
      FieldName = 'DATA'
      Origin = 'Agenda.DATA'
    end
    object PlannerTablePLANNERKEY: TStringField
      FieldName = 'PLANNERKEY'
      Origin = 'Agenda.PLANNERKEY'
      Size = 40
    end
    object PlannerTablePAZIENTE: TStringField
      FieldName = 'PAZIENTE'
      Origin = 'Agenda.PAZIENTE'
      Size = 150
    end
    object PlannerTableID_PAZIENTE: TFloatField
      FieldName = 'ID_PAZIENTE'
      Origin = 'Agenda.ID_PAZIENTE'
    end
    object PlannerTableID_DOTTORE: TFloatField
      FieldName = 'ID_DOTTORE'
      Origin = 'Agenda.ID_DOTTORE'
    end
    object PlannerTableALARM: TBooleanField
      FieldName = 'ALARM'
      Origin = 'Agenda.ALARM'
    end
    object PlannerTableALARM_MESSAGE: TStringField
      FieldName = 'ALARM_MESSAGE'
      Origin = 'Agenda.ALARM_MESSAGE'
      Size = 255
    end
    object PlannerTableTIMEBEFORE: TTimeField
      FieldName = 'TIMEBEFORE'
      Origin = 'Agenda.TIMEBEFORE'
    end
  end
  object DSPlanner: TDataSource
    DataSet = PlannerTable
    Left = 104
    Top = 175
  end
  object DsMemSel: TDataSource
    DataSet = MemSel
    Left = 104
    Top = 203
  end
  object PopEtichette: TPopupMenu
    Left = 168
    Top = 176
    object SelezionaTutti: TMenuItem
      Caption = 'Seleziona Tutti'
      ImageIndex = 8
      OnClick = SelezionaTuttiClick
    end
    object DeselezionaTutti1: TMenuItem
      Caption = 'Deseleziona Tutti'
      OnClick = DeselezionaTutti1Click
    end
  end
  object MemSel: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'PAZIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DATA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INIZIO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'FINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PLANNERKEY'
        DataType = ftString
        Size = 100
      end>
    Left = 136
    Top = 204
    object MemSelPAZIENTE: TStringField
      FieldName = 'PAZIENTE'
      Size = 100
    end
    object MemSelDATA: TStringField
      FieldName = 'DATA'
      Size = 10
    end
    object MemSelINIZIO: TStringField
      FieldName = 'INIZIO'
      Size = 5
    end
    object MemSelFINE: TStringField
      FieldName = 'FINE'
      Size = 5
    end
    object MemSelPLANNERKEY: TStringField
      FieldName = 'PLANNERKEY'
      Size = 100
    end
  end
end
