//---------------------------------------------------------------------------

#ifndef common_functionsH
#define common_functionsH
//---------------------------------------------------------------------------
#include <Windows.h>
#include <String>
extern bool _BitCheck(BYTE _src, int _bit);
extern BYTE _BitSetting(BYTE _src, int _bitIdx, bool _bool);
extern BYTE _BitToggle(BYTE _src, int _bitIdx);

extern std::string _WideCharToMultiByte(const wchar_t *lpwstr);
extern std::wstring _MultiByteToWideChar(const char *lpstr);

extern BYTE _GetDecFromBCD(BYTE _hex);
//---------------------------------------------------------------------------
#endif
