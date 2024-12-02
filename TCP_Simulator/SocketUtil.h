//---------------------------------------------------------------------------

#ifndef SocketUtilH
#define SocketUtilH
//---------------------------------------------------------------------------

//#include "Main.h"

//#include <winbase.h>

#include "common_functions.h"
//#include <Windows.h>

#include <vector>
#include <string>
#include <iphlpapi.h>
#pragma comment(lib, "IPHLPAPI.lib")


#include <winsock2.h>
#include <Ws2tcpip.h>
#include <mswsock.h>
#pragma link "Ws2_32.lib"

//#include <shlwapi.h>
//#pragma comment(lib, "shlwapi.lib")

#define ntohll(x) ((((unsigned __int64)ntohl(x)) << 32) + ntohl(x >> 32))
//#define ntohll(x) ((((unsigned __int64)htonl(x)) << 32) + htonl(x >> 32)) // 위에처럼 해도 상관없더라.. 나중에 자세히 봐보자.


extern bool xGetIPAddressEx(std::vector<std::wstring>& vIPAddrs);
std::wstring xGetPTULocalIP();




//---------------------------------------------------------------------------
#endif
