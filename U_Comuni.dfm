object FrmComuni: TFrmComuni
  Left = 723
  Top = 279
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '  Lista Comuni'
  ClientHeight = 381
  ClientWidth = 473
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
  PixelsPerInch = 96
  TextHeight = 13
  object suiDBNavigator1: TDBNavigator
    Left = 0
    Top = 351
    Width = 473
    Height = 30
    DataSource = DM.DsComuni
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Align = alBottom
    Hints.Strings = (
      'Prima Riga'
      'Riga Precedente'
      'Riga Successiva'
      'Ultima Riga'
      'Inserisci Nuovo Comune'
      'Elimina Comune'
      'Modifica Comune'
      'Conferma Modifiche'
      'Annulla Modifiche'
      '')
    TabOrder = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 473
    Height = 351
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DM.DsComuni
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.PercentWildcard = '*'
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Clicca qui per cercare un Comune'
      FilterRow.Visible = True
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Header = FrmTS.cxStyle11
      object cxGrid1DBTableView1Comune: TcxGridDBColumn
        Caption = 'COMUNE'
        DataBinding.FieldName = 'Comune'
        HeaderAlignmentHorz = taCenter
        Width = 244
      end
      object cxGrid1DBTableView1Prov: TcxGridDBColumn
        Caption = 'PROV'
        DataBinding.FieldName = 'Prov'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 46
      end
      object cxGrid1DBTableView1Cap: TcxGridDBColumn
        Caption = 'CAP'
        DataBinding.FieldName = 'Cap'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 62
      end
      object cxGrid1DBTableView1CodFisc: TcxGridDBColumn
        Caption = 'COD. FISC.'
        DataBinding.FieldName = 'CodFisc'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 102
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
