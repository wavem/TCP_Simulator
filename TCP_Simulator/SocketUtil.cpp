//---------------------------------------------------------------------------

#pragma hdrstop

#include "SocketUtil.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

bool xGetIPAddressEx(std::vector<std::wstring>& vIPAddrs)
{
	PIP_ADAPTER_INFO pAdapterInfo;
	PIP_ADAPTER_INFO pAdapter = NULL;
	DWORD dwRetVal = 0;
	bool bResult = false;
	ULONG ulOutBufLen = sizeof(IP_ADAPTER_INFO);
	pAdapterInfo = new IP_ADAPTER_INFO[ulOutBufLen];

	if (pAdapterInfo == NULL)
		return bResult;

	if (GetAdaptersInfo(pAdapterInfo, &ulOutBufLen) == ERROR_BUFFER_OVERFLOW)
	{
		delete pAdapterInfo;
		pAdapterInfo = new IP_ADAPTER_INFO[ulOutBufLen];
		if (pAdapterInfo == NULL)
			return bResult;
	}

	if ((dwRetVal = GetAdaptersInfo(pAdapterInfo, &ulOutBufLen)) == NO_ERROR)
	{
		pAdapter = pAdapterInfo;
		while (pAdapter)
		{
			IP_ADDR_STRING *pIPAddr = &pAdapter->IpAddressList;
			std::wstring sIPAddress;
			while (pIPAddr)
			{
				std::wstring sIPAddress = _MultiByteToWideChar((char*)&pIPAddr->IpAddress.String[0]);

				if (0 != sIPAddress.compare(_T("0.0.0.0"))) {
					vIPAddrs.push_back(sIPAddress.c_str());
					bResult = true;
				}

				pIPAddr = pIPAddr->Next;
			}

			pAdapter = pAdapter->Next;
		}
	}

	delete pAdapterInfo;
	pAdapterInfo = NULL;
	return bResult;
}
//---------------------------------------------------------------------------
