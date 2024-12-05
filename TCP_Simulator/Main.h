//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include "libxl.h"
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxBar.hpp"
#include "dxCore.h"
#include "dxRibbon.hpp"
#include "dxRibbonCustomizationForm.hpp"
#include "dxRibbonSkins.hpp"
#include "dxSkinBasic.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkroom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinOffice2016Colorful.hpp"
#include "dxSkinOffice2016Dark.hpp"
#include "dxSkinOffice2019Black.hpp"
#include "dxSkinOffice2019Colorful.hpp"
#include "dxSkinOffice2019DarkGray.hpp"
#include "dxSkinOffice2019White.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringtime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinTheBezier.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinVisualStudio2013Blue.hpp"
#include "dxSkinVisualStudio2013Dark.hpp"
#include "dxSkinVisualStudio2013Light.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include "dxSkinWXI.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include <Vcl.ExtCtrls.hpp>
#include "dxSkinsLookAndFeelPainter.hpp"
#include "AdvGrid.hpp"
#include "AdvObj.hpp"
#include "AdvToggle.hpp"
#include "AdvUtil.hpp"
#include "BaseGrid.hpp"
#include "cxButtons.hpp"
#include <Vcl.Grids.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TdxRibbonTab *dxRibbon1Tab1;
	TdxRibbon *dxRibbon1;
	TdxBarManager *BarMgr;
	TdxBar *BarMgrBar1;
	TdxBarLargeButton *MenuBtn_00_SERVER;
	TdxBarLargeButton *MenuBtn_00_CLIENT;
	TPanel *__________pnBase;
	TNotebook *Notebook_Main;
	TPanel *_____pnBase_00_SERVER;
	TPanel *_____pnBase_01_CLIENT;
	TPanel *__pnBase_Send_01_Content;
	TLabel *lb_Send_Title_ProtocolName;
	TLabel *lb_Send_ProtocolName;
	TLabel *lb_Send_Title_AutoSend;
	TcxButton *btn_Send_BackToList;
	TAdvStringGrid *grid_Send_Protocol;
	TcxButton *btn_Send;
	TAdvToggleSwitch *Toggle_Send_Auto;
	TPanel *__pnBase_Recv_01_Content;
	TLabel *lb_Recv_Title_ProtocolName;
	TLabel *lb_Recv_ProtocolName;
	TLabel *Toggle_Recv_Auto;
	TcxButton *btn_Recv_BackToList;
	TAdvStringGrid *grid_Recv_Protocol;
	TAdvToggleSwitch *AdvToggleSwitch2;
	TMemo *Log_Send;
	TMemo *memo_Client;
	TMemo *Log_Recv;
	TdxBar *BarMgrBar2;
	TdxBarLargeButton *dxBarLargeButton1;
	void __fastcall ClickMenuButton(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);

public: // DEFAULT MEMBER FUNCTIONS
	void __fastcall InitProgram();
	void __fastcall ExitProgram();
	void __fastcall PrintMsg(UnicodeString _str);



};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
