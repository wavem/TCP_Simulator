//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
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

		// LOAD PROTOCOL LIST
		if(LoadProtocolList() == false) {
			PrintMsg(L"Fail to Load Protocol List Sheet");
			return false;
		}
	}

	PrintMsg(L"Load Complete Config File");
	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadProtocolList() {

	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadProtocol(int _Index, UnicodeString _Name, int _Size, int _Type) {

    return true;
}
//---------------------------------------------------------------------------


