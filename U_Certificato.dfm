object FrmCertificato: TFrmCertificato
  Left = 570
  Top = 228
  ClientHeight = 608
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WPRichText1: TWPRichText
    Left = 26
    Top = 83
    Width = 858
    Height = 525
    RTFVariables = <>
    WPToolBar = WPToolbar1
    WPRuler = WPRuler1
    VRuler = WPVertRuler1
    EditOptions = [wpTableResizing, wpTableColumnResizing, wpObjectMoving, wpObjectResizingWidth, wpObjectResizingHeight, wpObjectResizingKeepRatio, wpObjectSelecting, wpObjectDeletion, wpSpreadsheetCursorMovement, wpActivateUndo, wpActivateUndoHotkey, wpMoveCPOnPageUpDown]
    ProtectedProp = []
    InsertPointAttr.TextColor = clRed
    InsertPointAttr.UseTextColor = True
    HyperlinkTextAttr.Underline = tsTRUE
    HyperlinkTextAttr.UnderlineColor = clBlue
    HyperlinkTextAttr.UseUnderlineColor = True
    HyperlinkTextAttr.HotUnderlineColor = clRed
    HyperlinkTextAttr.HotTextColor = clRed
    HyperlinkTextAttr.HotUnderline = tsTRUE
    HyperlinkTextAttr.HotStyleIsActive = True
    HiddenTextAttr.Hidden = True
    Align = alClient
    TabOrder = 0
  end
  object WPToolbar1: TWPToolbar
    Left = 0
    Top = 0
    Width = 884
    Height = 57
    ImageStretch = False
    ColorTo = 15790316
    UseDockManager = False
    ShowAllElements = wpSelectedElements
    Align = alTop
    BevelLines = []
    AutoEnabling = True
    WidthBetweenGroups = 4
    MarginBottom = 0
    MarginTop = 0
    sel_DatabaseIcons = []
    FlatButtons = False
    ButtonHeight = 22
    object WPToolButton1: TWPToolButton
      Left = 6
      Top = 29
      Width = 189
      Height = 23
      Cursor = crHandPoint
      Hint = 'Salva Documento nella cartella del paziente'
      Caption = 'Salva nella cartella del paziente'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF5068782830302830302830302830302830302830302830302830302830
        30283030506878FFFFFFFFFFFFFFFFFFFFFFFF283030D0E0E2D0E0E2C8DCD8BC
        D5D8BCD5D8B0CCD0A3C2CBA3C2CB8EB4BC8EB4BC283030FFFFFFFFFFFFFFFFFF
        FFFFFF283030D0E0E2D0E0E2D0E0E2C8DCD8C8DCD8BCD5D8B0CCD0A3C2CBA3C2
        CB8EB4BC283030FFFFFFFFFFFFFFFFFFFFFFFF283030D0E0E2D0E0E2D0E0E2D0
        E0E2C8DCD8C8DCD8BCD5D8B0CCD0A3C2CBA3C2CB283030FFFFFFFFFFFFFFFFFF
        FFFFFF283030E0ECEAD0E0E2D0E0E2D0E0E2D0E0E2D0E0E2C8DCD8BCD5D8B0CC
        D0B0CCD0283030FFFFFFFFFFFFFFFFFFFFFFFF283030E0ECEAE0ECEA90909080
        8080757575606060606060606060606060BCD5D8283030FFFFFFFFFFFFFFFFFF
        FFFFFF283030E0ECEAE0ECEAE0ECEAD0E0E2D0E0E2D0E0E2D0E0E2D0E0E2C8DC
        D8C8DCD8283030FFFFFFFFFFFFFFFFFFFFFFFF283030F0F7F4E0ECEA90909075
        7575606060606060606060D0E0E2D0E0E2C8DCD8283030FFFFFFFFFFFFFFFFFF
        FFFFFF283030F0F7F4F0F7F4E0ECEAE0ECEAE0ECEAE0ECEAD0E0E2D0E0E2D0E0
        E2D0E0E2283030FFFFFFFFFFFFFFFFFFFFFFFF283030F0F7F4F0F7F490909075
        7575606060606060606060606060D0E0E2D0E0E2283030FFFFFFFFFFFFFFFFFF
        FFFFFF283030F0F7F4F0F7F4F0F7F4F0F7F4E0ECEAE0ECEAE0ECEAE0ECEAD0E0
        E2D0E0E2283030FFFFFFFFFFFFFFFFFFFFFFFF283030F0F7F4F0F7F4F0F7F4F0
        F7F4F0F7F4E0ECEA181818181818181818181818181818FFFFFFFFFFFFFFFFFF
        FFFFFF283030F0F7F4F0F7F4F0F7F4F0F7F4F0F7F4F0F7F4506878D0E0E2F0F7
        F4181818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF283030F0F7F4F0F7F4F0F7F4F0
        F7F4F0F7F4F0F7F4506878D0E0E2181818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF283030F0F7F4F0F7F4F0F7F4F0F7F4F0F7F4F0F7F4506878181818FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50687828303028303028303028
        3030283030283030181818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = WPToolButton1Click
      StyleGroup = 0
      StyleNumber = 0
      UseOwnGylph = False
    end
  end
  object WPVertRuler1: TWPVertRuler
    Left = 0
    Top = 83
    Width = 26
    Height = 525
    DrawOptions = []
    ColorMargin = clAppWorkSpace
    ColorBack = clBtnFace
  end
  object WPRuler1: TWPRuler
    Left = 0
    Top = 57
    Width = 884
    Height = 26
    DrawOptions = []
    ColorMargin = clAppWorkSpace
    ColorBack = clBtnFace
    Align = alTop
  end
end
