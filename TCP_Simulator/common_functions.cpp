//---------------------------------------------------------------------------

#pragma hdrstop

#include "common_functions.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

extern bool _BitCheck(BYTE _src, int _bit) {
	if(_bit < 8 && _bit >= 0)	return (_src >> _bit) & 0x01;
	return false;
}
//---------------------------------------------------------------------------

extern BYTE _BitSetting(BYTE _src, int _bitIdx, bool _bool) {
	BYTE t_byte = _src;
	BYTE t_01 = 0x01;
	t_01 <<= _bitIdx;
	if(_bool) t_byte |= t_01;
	else t_byte &= ~t_01; // if toggle : t_byte ^= t_01
	return t_byte;
}
//---------------------------------------------------------------------------

extern BYTE _BitToggle(BYTE _src, int _bitIdx) {
	BYTE t_byte = _src;
	BYTE t_01 = 0x01;
	t_01 <<= _bitIdx;
	t_byte ^= t_01;
	return t_byte;
}
//---------------------------------------------------------------------------

std::string _WideCharToMultiByte(const wchar_t *lpwstr)
{
	int size = WideCharToMultiByte(CP_ACP, 0, lpwstr, -1, NULL, 0, NULL, NULL);
	std::string str(size, 0);
	WideCharToMultiByte(CP_ACP, 0, lpwstr, -1, &str[0], size, NULL, NULL );
	return str;
}
//---------------------------------------------------------------------------

std::wstring _MultiByteToWideChar(const char *lpstr)
{
	int size = MultiByteToWideChar(CP_ACP, 0, lpstr, strlen(lpstr), NULL, NULL);
	std::wstring wstr(size, 0);
	MultiByteToWideChar(CP_ACP, 0, lpstr, strlen(lpstr), &wstr[0], size);
	return wstr;
}
//---------------------------------------------------------------------------

extern BYTE _GetDecFromBCD(BYTE _hex) {
	return _hex / 16 * 10 + _hex % 16;
}
//---------------------------------------------------------------------------
