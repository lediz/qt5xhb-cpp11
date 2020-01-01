%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

/*
enum QBluetoothDeviceDiscoveryAgent::Error
*/
#define QBluetoothDeviceDiscoveryAgent_NoError                       0
#define QBluetoothDeviceDiscoveryAgent_InputOutputError              1
#define QBluetoothDeviceDiscoveryAgent_PoweredOffError               2
#define QBluetoothDeviceDiscoveryAgent_UnknownError                  100

/*
enum QBluetoothDeviceDiscoveryAgent::InquiryType
*/
#define QBluetoothDeviceDiscoveryAgent_GeneralUnlimitedInquiry       0
#define QBluetoothDeviceDiscoveryAgent_LimitedInquiry                1
