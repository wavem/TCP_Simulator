//---------------------------------------------------------------------------

#ifndef DefineH
#define DefineH
//---------------------------------------------------------------------------
#define SW_VERSION  L"(Ver 0.0.1)"
#define SW_UPDATE_DATE  L"2024. 12. 06  PM 12:18"

#define CONFIG_FILE_PATH    L".\\Config\\Config.xlsx"

#define TYPE_SEND   1
#define TYPE_RECV   2

#define UDP_LOCAL_PORT  14759

#define UDP_SEND_BUF_SIZE	65536
#define UDP_RECV_BUF_SIZE	65536

#define TCP_SEND_BUF_SIZE   65536
#define TCP_RECV_BUF_SIZE   65536

#define COLOR_GRID_SIGNAL_OFF	0x3C3C3C
#define COLOR_GRID_SIGNAL_ON    0x207DBB

// COMM
#define IP_SERVER "10.128.9.200"
#define TCP_SERVER_PORT 6001

// MESSAGE MAP
#define MSG_LOG_FROM_THREAD     33000
#define MSG_SERVER_DATA			40002



typedef struct st_Protocol_Info {
    UnicodeString ProtocolName;
	UINT32 Size;
	bool IsPeriodic;
	UINT32 Period;
	UnicodeString Remark;
} ST_PROTOCOL_INFO;


class CLS_PROTOCOL {
public:
	CLS_PROTOCOL();
	~CLS_PROTOCOL();

public:
	void Init(ST_PROTOCOL_INFO _Info);

public:
	ST_PROTOCOL_INFO Info;
	BYTE* Buffer = NULL;
	bool AutoSendOn;
    bool AutoRepeatOn;
};

// Received Packet Struct From Server
typedef struct ST_SERVERDATA {
	BYTE Data[TCP_RECV_BUF_SIZE];
} SERVERDATA;


//---------------------------------------------------------------------------
#endif

