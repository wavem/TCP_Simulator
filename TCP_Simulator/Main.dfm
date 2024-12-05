object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 932
  ClientWidth = 1637
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1637
    Height = 124
    BarManager = BarMgr
    ColorSchemeName = 'DevExpressDarkStyle'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 1402
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'MENU'
      Groups = <
        item
          ToolbarName = 'BarMgrBar1'
        end
        item
          ToolbarName = 'BarMgrBar2'
        end>
      Index = 0
    end
  end
  object __________pnBase: TPanel
    Left = 0
    Top = 124
    Width = 1637
    Height = 808
    Align = alClient
    BevelOuter = bvNone
    Color = 3947580
    ParentBackground = False
    TabOrder = 5
    ExplicitWidth = 1402
    ExplicitHeight = 830
    object Notebook_Main: TNotebook
      Left = 0
      Top = 0
      Width = 1637
      Height = 808
      Align = alClient
      PageIndex = 1
      TabOrder = 0
      ExplicitWidth = 1402
      ExplicitHeight = 830
      object TPage
        Left = 0
        Top = 0
        Caption = 'SERVER'
        ExplicitWidth = 1402
        ExplicitHeight = 830
        object _____pnBase_00_SERVER: TPanel
          Left = 0
          Top = 0
          Width = 1637
          Height = 808
          Align = alClient
          BevelOuter = bvNone
          Color = 3947580
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1402
          ExplicitHeight = 830
        end
      end
      object TPage
        Left = 0
        Top = 0
        HelpContext = 1
        Caption = 'CLIENT'
        ExplicitWidth = 1402
        ExplicitHeight = 830
        object _____pnBase_01_CLIENT: TPanel
          Left = 0
          Top = 0
          Width = 1637
          Height = 808
          Align = alClient
          BevelOuter = bvNone
          Color = 3947580
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1402
          ExplicitHeight = 830
          object __pnBase_Send_01_Content: TPanel
            Left = 8
            Top = 6
            Width = 800
            Height = 600
            BevelOuter = bvNone
            Color = 2894892
            ParentBackground = False
            TabOrder = 0
            object lb_Send_Title_ProtocolName: TLabel
              Left = 24
              Top = 16
              Width = 133
              Height = 20
              Caption = 'PROTOCOL NAME :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Send_ProtocolName: TLabel
              Left = 162
              Top = 16
              Width = 54
              Height = 20
              Caption = 'Caption'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Send_Title_AutoSend: TLabel
              Left = 538
              Top = 28
              Width = 49
              Height = 20
              Caption = 'AUTO :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btn_Send_BackToList: TcxButton
              Left = 728
              Top = 16
              Width = 57
              Height = 49
              Caption = 'btn_Send_BackToList'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'DevExpressDarkStyle'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
                462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
                61796572312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F
                323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777
                772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D22
                307078222076696577426F783D2230203020333220333222207374796C653D22
                656E61626C652D6261636B67726F756E643A6E6577203020302033322033323B
                2220786D6C3A73706163653D227072657365727665223E262331333B26233130
                3B20203C7374796C6520747970653D22746578742F6373732220786D6C3A7370
                6163653D227072657365727665223E2E426C61636B262331333B262331303B20
                2020207B262331333B262331303B20202020202066696C6C3A23373237323732
                3B262331333B262331303B202020202020666F6E742D66616D696C793A266170
                6F733B64782D666F6E742D69636F6E732661706F733B3B262331333B26233130
                3B202020202020666F6E742D73697A653A333270783B262331333B262331303B
                202020207D262331333B262331303B20203C2F7374796C653E0D0A3C74657874
                20783D22302220793D2233322220636C6173733D22426C61636B223EEF83953C
                2F746578743E0D0A3C2F7376673E0D0A}
              OptionsImage.Layout = blGlyphTop
              PaintStyle = bpsGlyph
              TabOrder = 0
            end
            object grid_Send_Protocol: TAdvStringGrid
              Left = 24
              Top = 80
              Width = 753
              Height = 497
              ColCount = 9
              Ctl3D = True
              DefaultRowHeight = 44
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              RowCount = 31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowDefAlign]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              ActiveRowColor = 4429536
              GridLineColor = 13948116
              GridFixedLineColor = 11250603
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = 4474440
              ActiveCellFont.Height = -12
              ActiveCellFont.Name = 'Segoe UI'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 11565130
              ActiveCellColorTo = 11565130
              BorderColor = 11250603
              ColumnHeaders.Strings = (
                'BYTE'
                'Bit 7'
                'Bit 6'
                'Bit 5'
                'Bit 4'
                'Bit 3'
                'Bit 2'
                'Bit 1'
                'Bit 0')
              ControlLook.FixedGradientFrom = clWhite
              ControlLook.FixedGradientTo = clWhite
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientHoverMirrorFrom = clWhite
              ControlLook.FixedGradientHoverMirrorTo = clWhite
              ControlLook.FixedGradientHoverBorder = 11645361
              ControlLook.FixedGradientDownFrom = clWhite
              ControlLook.FixedGradientDownTo = clWhite
              ControlLook.FixedGradientDownMirrorFrom = clWhite
              ControlLook.FixedGradientDownMirrorTo = clWhite
              ControlLook.FixedGradientDownBorder = 11250603
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
              ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
              ControlLook.ToggleSwitch.CaptionFont.Height = -12
              ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
              ControlLook.ToggleSwitch.CaptionFont.Style = []
              ControlLook.ToggleSwitch.Shadow = False
              DefaultAlignment = taCenter
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -12
              FilterDropDown.Font.Name = 'Segoe UI'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 40
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              IntelliZoom = False
              Look = glCustom
              MouseActions.WheelActive = waMouseOver
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -12
              PrintSettings.Font.Name = 'Segoe UI'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -12
              PrintSettings.FixedFont.Name = 'Segoe UI'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -12
              PrintSettings.HeaderFont.Name = 'Segoe UI'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -12
              PrintSettings.FooterFont.Name = 'Segoe UI'
              PrintSettings.FooterFont.Style = []
              PrintSettings.PageNumSep = '/'
              ScrollBarAlways = saVert
              ScrollSynch = True
              SearchFooter.ColorTo = clNone
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -12
              SearchFooter.Font.Name = 'Segoe UI'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionColor = 13744549
              SelectionTextColor = clWindowText
              ShowSelection = False
              SortSettings.HeaderColor = clWhite
              SortSettings.HeaderColorTo = clWhite
              SortSettings.HeaderMirrorColor = clWhite
              SortSettings.HeaderMirrorColorTo = clWhite
              VAlignment = vtaCenter
              Version = '9.0.0.10'
              ColWidths = (
                40
                87
                87
                87
                86
                87
                87
                87
                84)
              RowHeights = (
                22
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44)
            end
            object btn_Send: TcxButton
              Left = 665
              Top = 16
              Width = 57
              Height = 49
              Caption = 'btn_Send_BackToList'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'DevExpressDarkStyle'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
                462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
                61796572312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F
                323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777
                772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D22
                307078222076696577426F783D2230203020333220333222207374796C653D22
                656E61626C652D6261636B67726F756E643A6E6577203020302033322033323B
                2220786D6C3A73706163653D227072657365727665223E262331333B26233130
                3B20203C7374796C6520747970653D22746578742F6373732220786D6C3A7370
                6163653D227072657365727665223E2E426C61636B262331333B262331303B20
                2020207B262331333B262331303B20202020202066696C6C3A23373237323732
                3B262331333B262331303B202020202020666F6E742D66616D696C793A266170
                6F733B64782D666F6E742D69636F6E732661706F733B3B262331333B26233130
                3B202020202020666F6E742D73697A653A333270783B262331333B262331303B
                202020207D262331333B262331303B20203C2F7374796C653E0D0A3C74657874
                20783D22302220793D2233322220636C6173733D22426C61636B223EEEA29C3C
                2F746578743E0D0A3C2F7376673E0D0A}
              OptionsImage.Layout = blGlyphTop
              PaintStyle = bpsGlyph
              TabOrder = 2
            end
            object Toggle_Send_Auto: TAdvToggleSwitch
              Left = 593
              Top = 24
              Width = 60
              Height = 32
              Animated = True
              BackgroundBorderWidth = 1.000000000000000000
              ButtonOnBorder = clBlack
              ButtonOffBorder = clBlack
              On = False
              TabOrder = 3
              Version = '1.0.0.1'
            end
          end
          object __pnBase_Recv_01_Content: TPanel
            Left = 824
            Top = 6
            Width = 800
            Height = 600
            BevelOuter = bvNone
            Color = 2894892
            ParentBackground = False
            TabOrder = 1
            object lb_Recv_Title_ProtocolName: TLabel
              Left = 24
              Top = 16
              Width = 133
              Height = 20
              Caption = 'PROTOCOL NAME :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lb_Recv_ProtocolName: TLabel
              Left = 162
              Top = 16
              Width = 54
              Height = 20
              Caption = 'Caption'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Toggle_Recv_Auto: TLabel
              Left = 480
              Top = 28
              Width = 107
              Height = 20
              Caption = 'AUTO REPEAT :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object btn_Recv_BackToList: TcxButton
              Left = 728
              Top = 16
              Width = 57
              Height = 49
              Caption = 'btn_Send_BackToList'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'DevExpressDarkStyle'
              OptionsImage.Glyph.SourceDPI = 96
              OptionsImage.Glyph.Data = {
                3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
                462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
                61796572312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F
                323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777
                772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D22
                307078222076696577426F783D2230203020333220333222207374796C653D22
                656E61626C652D6261636B67726F756E643A6E6577203020302033322033323B
                2220786D6C3A73706163653D227072657365727665223E262331333B26233130
                3B20203C7374796C6520747970653D22746578742F6373732220786D6C3A7370
                6163653D227072657365727665223E2E426C61636B262331333B262331303B20
                2020207B262331333B262331303B20202020202066696C6C3A23373237323732
                3B262331333B262331303B202020202020666F6E742D66616D696C793A266170
                6F733B64782D666F6E742D69636F6E732661706F733B3B262331333B26233130
                3B202020202020666F6E742D73697A653A333270783B262331333B262331303B
                202020207D262331333B262331303B20203C2F7374796C653E0D0A3C74657874
                20783D22302220793D2233322220636C6173733D22426C61636B223EEF83953C
                2F746578743E0D0A3C2F7376673E0D0A}
              OptionsImage.Layout = blGlyphTop
              PaintStyle = bpsGlyph
              TabOrder = 0
            end
            object grid_Recv_Protocol: TAdvStringGrid
              Left = 24
              Top = 80
              Width = 753
              Height = 497
              ColCount = 9
              Ctl3D = True
              DefaultRowHeight = 44
              DrawingStyle = gdsClassic
              FixedColor = clWhite
              RowCount = 31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowDefAlign]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              ActiveRowColor = 4429536
              GridLineColor = 13948116
              GridFixedLineColor = 11250603
              ActiveCellFont.Charset = DEFAULT_CHARSET
              ActiveCellFont.Color = 4474440
              ActiveCellFont.Height = -12
              ActiveCellFont.Name = 'Segoe UI'
              ActiveCellFont.Style = [fsBold]
              ActiveCellColor = 11565130
              ActiveCellColorTo = 11565130
              BorderColor = 11250603
              ColumnHeaders.Strings = (
                'BYTE'
                'Bit 7'
                'Bit 6'
                'Bit 5'
                'Bit 4'
                'Bit 3'
                'Bit 2'
                'Bit 1'
                'Bit 0')
              ControlLook.FixedGradientFrom = clWhite
              ControlLook.FixedGradientTo = clWhite
              ControlLook.FixedGradientHoverFrom = clGray
              ControlLook.FixedGradientHoverTo = clWhite
              ControlLook.FixedGradientHoverMirrorFrom = clWhite
              ControlLook.FixedGradientHoverMirrorTo = clWhite
              ControlLook.FixedGradientHoverBorder = 11645361
              ControlLook.FixedGradientDownFrom = clWhite
              ControlLook.FixedGradientDownTo = clWhite
              ControlLook.FixedGradientDownMirrorFrom = clWhite
              ControlLook.FixedGradientDownMirrorTo = clWhite
              ControlLook.FixedGradientDownBorder = 11250603
              ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownHeader.Font.Color = clWindowText
              ControlLook.DropDownHeader.Font.Height = -11
              ControlLook.DropDownHeader.Font.Name = 'Segoe UI'
              ControlLook.DropDownHeader.Font.Style = []
              ControlLook.DropDownHeader.Visible = True
              ControlLook.DropDownHeader.Buttons = <>
              ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
              ControlLook.DropDownFooter.Font.Color = clWindowText
              ControlLook.DropDownFooter.Font.Height = -11
              ControlLook.DropDownFooter.Font.Name = 'Segoe UI'
              ControlLook.DropDownFooter.Font.Style = []
              ControlLook.DropDownFooter.Visible = True
              ControlLook.DropDownFooter.Buttons = <>
              ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
              ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
              ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
              ControlLook.ToggleSwitch.CaptionFont.Height = -12
              ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
              ControlLook.ToggleSwitch.CaptionFont.Style = []
              ControlLook.ToggleSwitch.Shadow = False
              DefaultAlignment = taCenter
              Filter = <>
              FilterDropDown.Font.Charset = DEFAULT_CHARSET
              FilterDropDown.Font.Color = clWindowText
              FilterDropDown.Font.Height = -12
              FilterDropDown.Font.Name = 'Segoe UI'
              FilterDropDown.Font.Style = []
              FilterDropDown.TextChecked = 'Checked'
              FilterDropDown.TextUnChecked = 'Unchecked'
              FilterDropDownClear = '(All)'
              FilterEdit.TypeNames.Strings = (
                'Starts with'
                'Ends with'
                'Contains'
                'Not contains'
                'Equal'
                'Not equal'
                'Larger than'
                'Smaller than'
                'Clear')
              FixedColWidth = 40
              FixedRowHeight = 22
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Segoe UI'
              FixedFont.Style = [fsBold]
              FloatFormat = '%.2f'
              HoverButtons.Buttons = <>
              HTMLSettings.ImageFolder = 'images'
              HTMLSettings.ImageBaseName = 'img'
              IntelliZoom = False
              Look = glCustom
              MouseActions.WheelActive = waMouseOver
              PrintSettings.DateFormat = 'dd/mm/yyyy'
              PrintSettings.Font.Charset = DEFAULT_CHARSET
              PrintSettings.Font.Color = clWindowText
              PrintSettings.Font.Height = -12
              PrintSettings.Font.Name = 'Segoe UI'
              PrintSettings.Font.Style = []
              PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
              PrintSettings.FixedFont.Color = clWindowText
              PrintSettings.FixedFont.Height = -12
              PrintSettings.FixedFont.Name = 'Segoe UI'
              PrintSettings.FixedFont.Style = []
              PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
              PrintSettings.HeaderFont.Color = clWindowText
              PrintSettings.HeaderFont.Height = -12
              PrintSettings.HeaderFont.Name = 'Segoe UI'
              PrintSettings.HeaderFont.Style = []
              PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
              PrintSettings.FooterFont.Color = clWindowText
              PrintSettings.FooterFont.Height = -12
              PrintSettings.FooterFont.Name = 'Segoe UI'
              PrintSettings.FooterFont.Style = []
              PrintSettings.PageNumSep = '/'
              ScrollBarAlways = saVert
              ScrollSynch = True
              SearchFooter.ColorTo = clNone
              SearchFooter.FindNextCaption = 'Find &next'
              SearchFooter.FindPrevCaption = 'Find &previous'
              SearchFooter.Font.Charset = DEFAULT_CHARSET
              SearchFooter.Font.Color = clWindowText
              SearchFooter.Font.Height = -12
              SearchFooter.Font.Name = 'Segoe UI'
              SearchFooter.Font.Style = []
              SearchFooter.HighLightCaption = 'Highlight'
              SearchFooter.HintClose = 'Close'
              SearchFooter.HintFindNext = 'Find next occurrence'
              SearchFooter.HintFindPrev = 'Find previous occurrence'
              SearchFooter.HintHighlight = 'Highlight occurrences'
              SearchFooter.MatchCaseCaption = 'Match case'
              SearchFooter.ResultFormat = '(%d of %d)'
              SelectionColor = 13744549
              SelectionTextColor = clWindowText
              ShowSelection = False
              SortSettings.HeaderColor = clWhite
              SortSettings.HeaderColorTo = clWhite
              SortSettings.HeaderMirrorColor = clWhite
              SortSettings.HeaderMirrorColorTo = clWhite
              VAlignment = vtaCenter
              Version = '9.0.0.10'
              ColWidths = (
                40
                87
                87
                87
                86
                87
                87
                87
                84)
              RowHeights = (
                22
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44
                44)
            end
            object AdvToggleSwitch2: TAdvToggleSwitch
              Left = 593
              Top = 24
              Width = 60
              Height = 32
              Animated = True
              BackgroundBorderWidth = 1.000000000000000000
              ButtonOnBorder = clBlack
              ButtonOffBorder = clBlack
              On = False
              TabOrder = 2
              Version = '1.0.0.1'
              Visible = False
            end
          end
          object Log_Send: TMemo
            Left = 8
            Top = 612
            Width = 483
            Height = 187
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 2434341
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCoral
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Lines.Strings = (
              'SEND MESSAGE')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object memo_Client: TMemo
            Left = 497
            Top = 612
            Width = 645
            Height = 187
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 2434341
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCoral
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object Log_Recv: TMemo
            Left = 1141
            Top = 612
            Width = 483
            Height = 187
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 2434341
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clCoral
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Lines.Strings = (
              'RECEIVED MESSAGE')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 4
          end
        end
      end
    end
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 888
    PixelsPerInch = 96
    object BarMgrBar1: TdxBar
      Caption = 'Mode'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1430
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuBtn_00_SERVER'
        end
        item
          Visible = True
          ItemName = 'MenuBtn_00_CLIENT'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarMgrBar2: TdxBar
      Caption = 'Command'
      CaptionButtons = <>
      DockedLeft = 121
      DockedTop = 0
      FloatLeft = 1665
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MenuBtn_00_SERVER: TdxBarLargeButton
      Caption = 'SERVER'
      Category = 0
      Hint = 'SERVER'
      Visible = ivAlways
      OnClick = ClickMenuButton
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000020744558745469746C650057692D66693B576966693B57
        6972656C6573733B526164696F3B491D3C9A0000037549444154785EED96ED4F
        9B6514C66F6061A67FC1BEF81F682689C66E1A8C9BCC8C8160C87408A2213366
        6F51070E4D598ABA611F43979640E9CAB6B64C2A63EB2C505A5E6C09519B3215
        18AC14170381D0C15EC06C1A3E2C4B8FE77AF2600894F94862FDD23BF92527E7
        5CE73A5793A6A920A2FF95BF8B54805480540035CF1928D3329F31FD4C8C7908
        50A38799A2112BD803A5A2C99F2F2CBEBCD5A80F70AEAFF409E62873D3133E49
        E15F2FD2CDF920DDFA7D84EEFE390950A327CFA081163BCAAEB0FAF70B7367EE
        6AD405B07A8B0F30B1E0750B4DDF0951ECFE4F3475EF3B8A2E7C4B63B1561A9D
        7302D4E861068DACC50E769962469C71EF157557F6ACF0F800C6F6FC6DF557DF
        F079C3068ACCFA68EA6E808FB8686042A2CBA10FC9D17F90AC5D25D4E0390050
        A3871934D0CA3B13B37EF2862582173C6B5B770B858D03E82FBCA4955CAFCD07
        46AC6C12A4915907B9439564E928A1BAB6A25F183DF32AF324A301A8959E1E1A
        68B1835D78C0EB2B57C12DF67E9E112061804F9B5E2C609607C72EF0A7686793
        13F4654B619C6963B2C49AC7BD8DC85276E2EED0C7B2D7E0F87982B772637D80
        E3266D11F330386AA1A1E9B364EB2EA79AE6BC096687D8E0F1EC9FD8010F78C1
        13DEB8815BEB021C959E739EF51C26FFF56AAA771793AE31B785D188C73C9EAB
        41C35C84A78FBD7103B7D60578FF8BAC0CC6A9B3655385F1E5D3274C7BD2D61E
        7404CAB630858C8B9966968152BB30838677C51AD22A8DBB4EC11B37702BE177
        A05CBF3D9D795D2478367F490E33E9FFD940E3335E9A5B1AA63B7F44016AB987
        1934D01EAF7B45ACE648ED4E016FE586FA1FA206CF9BE98C81898F4E77D0E47C
        0F79AF7D4EF6DEF7A8A9F32D801A3D79060DB48C84DD0F0CBB04283FF98C7847
        F7F40AEA02182F1565300EDFD019FAED76802E7F5F45DC9B61AA98A7180D408D
        1E66D040CB3BD03AE191C05A5D8053F6FC46CF0F12FD186DA65A67419C9198AD
        62838799A28987A2E709BBEC61D974800AD30B358E9E8F486FDBF78829152A1F
        6BDF65E2D885C7A603806392B6A6CA9C7348FCCBC73B9F6017B5DA00AAB107DE
        CE64CCCC22B3841ABD44DAFF244063D77ED3C0988516EE47E8F68308A1E69E21
        69014E7FBD7BF146CC4DC3B3E76450A397B400D5CDD98BBD3774D43D7E4CA62F
        524DE8252D4085596B325EC9A36F864A6550734F4A5A80238667331933B30494
        7A535FC2D4DFF25480BF0001550276A15A27EB0000000049454E44AE426082}
    end
    object MenuBtn_00_CLIENT: TdxBarLargeButton
      Tag = 1
      Caption = 'CLIENT'
      Category = 0
      Hint = 'CLIENT'
      Visible = ivAlways
      OnClick = ClickMenuButton
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000020744558745469746C650057692D66693B576966693B57
        6972656C6573733B526164696F3B491D3C9A0000037549444154785EED96ED4F
        9B6514C66F6061A67FC1BEF81F682689C66E1A8C9BCC8C8160C87408A2213366
        6F51070E4D598ABA611F43979640E9CAB6B64C2A63EB2C505A5E6C09519B3215
        18AC14170381D0C15EC06C1A3E2C4B8FE77AF2600894F94862FDD23BF92527E7
        5CE73A5793A6A920A2FF95BF8B54805480540035CF1928D3329F31FD4C8C7908
        50A38799A2112BD803A5A2C99F2F2CBEBCD5A80F70AEAFF409E62873D3133E49
        E15F2FD2CDF920DDFA7D84EEFE390950A327CFA081163BCAAEB0FAF70B7367EE
        6AD405B07A8B0F30B1E0750B4DDF0951ECFE4F3475EF3B8A2E7C4B63B1561A9D
        7302D4E861068DACC50E769962469C71EF157557F6ACF0F800C6F6FC6DF557DF
        F079C3068ACCFA68EA6E808FB8686042A2CBA10FC9D17F90AC5D25D4E0390050
        A3871934D0CA3B13B37EF2862582173C6B5B770B858D03E82FBCA4955CAFCD07
        46AC6C12A4915907B9439564E928A1BAB6A25F183DF32AF324A301A8959E1E1A
        68B1835D78C0EB2B57C12DF67E9E112061804F9B5E2C609607C72EF0A7686793
        13F4654B619C6963B2C49AC7BD8DC85276E2EED0C7B2D7E0F87982B772637D80
        E3266D11F330386AA1A1E9B364EB2EA79AE6BC096687D8E0F1EC9FD8010F78C1
        13DEB8815BEB021C959E739EF51C26FFF56AAA771793AE31B785D188C73C9EAB
        41C35C84A78FBD7103B7D60578FF8BAC0CC6A9B3655385F1E5D3274C7BD2D61E
        7404CAB630858C8B9966968152BB30838677C51AD22A8DBB4EC11B37702BE177
        A05CBF3D9D795D2478367F490E33E9FFD940E3335E9A5B1AA63B7F44016AB987
        1934D01EAF7B45ACE648ED4E016FE586FA1FA206CF9BE98C81898F4E77D0E47C
        0F79AF7D4EF6DEF7A8A9F32D801A3D79060DB48C84DD0F0CBB04283FF98C7847
        F7F40AEA02182F1565300EDFD019FAED76802E7F5F45DC9B61AA98A7180D408D
        1E66D040CB3BD03AE191C05A5D8053F6FC46CF0F12FD186DA65A67419C9198AD
        62838799A28987A2E709BBEC61D974800AD30B358E9E8F486FDBF78829152A1F
        6BDF65E2D885C7A603806392B6A6CA9C7348FCCBC73B9F6017B5DA00AAB107DE
        CE64CCCC22B3841ABD44DAFF244063D77ED3C0988516EE47E8F68308A1E69E21
        69014E7FBD7BF146CC4DC3B3E76450A397B400D5CDD98BBD3774D43D7E4CA62F
        524DE8252D4085596B325EC9A36F864A6550734F4A5A80238667331933B30494
        7A535FC2D4DFF25480BF0001550276A15A27EB0000000049454E44AE426082}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
end
