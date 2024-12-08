//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "libxl_functions.h"
#include "common_functions.h"
#include "SocketUtil.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxCore"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBasic"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkroom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinOffice2016Colorful"
#pragma link "dxSkinOffice2016Dark"
#pragma link "dxSkinOffice2019Black"
#pragma link "dxSkinOffice2019Colorful"
#pragma link "dxSkinOffice2019DarkGray"
#pragma link "dxSkinOffice2019White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringtime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinTheBezier"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinWXI"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "AdvToggle"
#pragma link "AdvUtil"
#pragma link "BaseGrid"
#pragma link "cxButtons"
#pragma resource "*.dfm"
#pragma link "libxl32.lib"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// DEFAULT NOTEBOOK PAGE SETTING
	Notebook_Main->PageIndex = 0; // SERVER



	// INIT LIBXL
	if(InitLibxl()) {
		if(LoadConfigFile() == false) {
			PrintMsg(L"Fail to Load Config File");
			return;
		}

		LoadProtocol(0, L"R_0x20", 33, TYPE_SEND);
		LoadProtocol(1, L"R_0x20", 33, TYPE_RECV);
	}


	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
    UnicodeString tempStr = L"";
	TDateTime t_DateTime = Now();
	tempStr = t_DateTime.FormatString(L"[yyyy.mm.dd hh:nn:ss'zzz]  ");
	tempStr += _str;
	memo_Client->Lines->Add(tempStr);
}
//---------------------------------------------------------------------------


void __fastcall TFormMain::ClickMenuButton(TObject *Sender)
{
	TdxBarLargeButton* p_Btn = (TdxBarLargeButton*)Sender;
	int t_Tag = p_Btn->Tag;

	Notebook_Main->PageIndex = t_Tag;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintSendLog(UnicodeString _str) {

}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintRecvLog(UnicodeString _str) {

}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitLibxl() {
    m_Book = xlCreateXMLBook();
	if(m_Book) {
		m_Book->setKey(L"ÁØÈ£ ¾ç", L"windows-2d20200d03c0ed046aba6867a7o0n2j0");
		PrintMsg(L"Libxl Init Complete");
		return true;
	}
	return false;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadConfigFile() {

    // LOAD CONFIG FILE
	if(m_Book->load(CONFIG_FILE_PATH)) {
		PrintMsg(L"Load Complete Config File");
		return true;
	} else {
		PrintMsg(L"Fail to Load Config File");
		return false;
	}
}
//---------------------------------------------------------------------------



bool __fastcall TFormMain::LoadProtocol(int _Index, UnicodeString _Name, int _Size, int _Type) {

	// COMMON
	TAdvStringGrid *p_Grid = NULL;
	UnicodeString tempStr = L"";
	libxl::Sheet* t_sheet = NULL;

	// GET TARGET SHEET
	t_sheet = getSheetByName(m_Book, _Name);

	// PRE-RETURN
	if(t_sheet == NULL) {
		tempStr.sprintf(L"There is no sheet (%s)", _Name.c_str());
		ShowMessage(tempStr);
		return false;
	}

	// SET PROTOCOL GRID POINTER
	if(_Type == TYPE_SEND) {
		p_Grid = grid_Send_Protocol;
	} else if(_Type == TYPE_RECV) {
		p_Grid = grid_Recv_Protocol;
	} else {
		PrintMsg(L"Wrong Protocol Type..");
		return false;
	}

	// LOAD PROTOCOL ROUTINE
    int t_LastRow = t_sheet->lastFilledRow();
	int t_DefaultRowCnt = 7; // UESR DEFINE
	int t_ColIdx = 3; // EXCEL COL INDEX START
	int t_RowIdx = 7; // EXCEL ROW INDEX START
	int t_GridRow = 1;
	int t_GridCol = 1;
	bool t_bIsMerged = false;
	int t_MergedRowIdx_S = 0; // S==START
	int t_MergedRowIdx_E = 0; // E==END
	int t_MergedColIdx_S = 0; // S==START
	int t_MergedColIdx_E = 0; // E==END
	int t_V_gap = 0; // Vertical Gap
	int t_H_gap = 0; // Horizontal Gap
	int t_TotalByteCount = t_LastRow - t_DefaultRowCnt;
	int t_ByteIdx = 0;

	// CLEAR PROTOCOL GRID
	p_Grid->ClearNormalCells();
	p_Grid->RowCount = 2;
	p_Grid->RowCount = t_TotalByteCount + 1;

	// PRINT BYTE INDEX
	for(int i = 0 ; i < p_Grid->RowCount ; i++) {
		p_Grid->Cells[0][i + 1] = i;
	}

	// LOAD SIGNAL WITH MERGE
	while(t_ByteIdx < t_TotalByteCount) {
    	t_GridCol = 1;
    	for(int i = 0 ; i < 8 ; i++) {
			tempStr = getCellValue(t_sheet, t_RowIdx, t_ColIdx + i);
			p_Grid->Cells[t_GridCol][t_GridRow] = tempStr;

        	t_bIsMerged = t_sheet->getMerge(t_RowIdx, t_ColIdx + i, &t_MergedRowIdx_S, &t_MergedRowIdx_E, &t_MergedColIdx_S, &t_MergedColIdx_E);
            if(t_bIsMerged) {
            	t_H_gap = t_MergedColIdx_E - t_MergedColIdx_S + 1; // +1 is essential
				t_V_gap = t_MergedRowIdx_E - t_MergedRowIdx_S;
				p_Grid->MergeCells(t_GridCol, t_GridRow, t_H_gap, t_V_gap + 1);
				i += (t_H_gap - 1);
				t_ByteIdx += t_V_gap;
				t_GridRow += t_V_gap;
                t_GridCol += (t_H_gap - 1);
                if(t_V_gap >= 1) t_RowIdx += t_V_gap;
            }
            t_GridCol++;
		}

        t_RowIdx++;
        t_ByteIdx++;
        t_GridRow++;
	}


	// SET INFO
	if(_Type == TYPE_SEND) {
		m_SendProtocolIndexCurrentSelected = _Index;
		tempStr.sprintf(L"%s (%d BYTE)", _Name.c_str(), _Size);
		lb_Send_ProtocolName->Caption = tempStr;
		//Toggle_Send_Auto->On = m_Send_Protocol[_Index].AutoSendOn;
	} else if(_Type == TYPE_RECV) {
		m_RecvProtocolIndexCurrentSelected = _Index;
		tempStr.sprintf(L"%s (%d BYTE)", _Name.c_str(), _Size);
		lb_Recv_ProtocolName->Caption = tempStr;
	}



	return true;
}
//---------------------------------------------------------------------------


