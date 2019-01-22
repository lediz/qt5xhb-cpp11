%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtBluetooth

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QBluetoothServiceDiscoveryAgent(QObject *parent = nullptr)
$internalConstructor=5,2,0|new1|QObject *=nullptr

$prototype=QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)
$internalConstructor=5,2,0|new2|const QBluetoothAddress &,QObject *=nullptr

//[1]QBluetoothServiceDiscoveryAgent(QObject *parent = nullptr)
//[2]QBluetoothServiceDiscoveryAgent(const QBluetoothAddress &deviceAdapter, QObject *parent = nullptr)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBluetoothServiceDiscoveryAgent_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBLUETOOTHADDRESS(1) && ISOPTQOBJECT(2) )
  {
    QBluetoothServiceDiscoveryAgent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isActive() const
$method=5,2,0|bool|isActive|

$prototype=Error error() const
$method=5,2,0|QBluetoothDeviceDiscoveryAgent::Error|error|

$prototype=QString errorString() const
$method=5,2,0|QString|errorString|

$prototype=QList<QBluetoothServiceInfo> discoveredServices() const
$method=5,2,0|QList<QBluetoothServiceInfo>|discoveredServices|

$prototype=void setUuidFilter(const QList<QBluetoothUuid> &uuids)
$internalMethod=5,2,0|void|setUuidFilter,setUuidFilter1|const QList<QBluetoothUuid> &

$prototype=void setUuidFilter(const QBluetoothUuid &uuid)
$internalMethod=5,2,0|void|setUuidFilter,setUuidFilter2|const QBluetoothUuid &

//[1]void setUuidFilter(const QList<QBluetoothUuid> &uuids)
//[2]void setUuidFilter(const QBluetoothUuid &uuid)

HB_FUNC_STATIC( QBLUETOOTHSERVICEDISCOVERYAGENT_SETUUIDFILTER )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHUUID(1) )
  {
    QBluetoothServiceDiscoveryAgent_setUuidFilter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUuidFilter

$prototype=QList<QBluetoothUuid> uuidFilter() const
$method=5,2,0|QList<QBluetoothUuid>|uuidFilter|

$prototype=bool setRemoteAddress(const QBluetoothAddress &address)
$method=5,2,0|bool|setRemoteAddress|const QBluetoothAddress &

$prototype=QBluetoothAddress remoteAddress() const
$method=5,2,0|QBluetoothAddress|remoteAddress|

$prototype=void start(DiscoveryMode mode = MinimalDiscovery)
$method=5,2,0|void|start|QBluetoothServiceDiscoveryAgent::DiscoveryMode=QBluetoothServiceDiscoveryAgent::MinimalDiscovery

$prototype=void stop()
$method=5,2,0|void|stop|

$prototype=void clear()
$method=5,2,0|void|clear|

%%
%% SIGNALS
%%

$prototype=void serviceDiscovered( const QBluetoothServiceInfo & info )
$signalMethod=5,2,0|void|serviceDiscovered|const QBluetoothServiceInfo &

$prototype=void finished()
$signalMethod=5,2,0|void|finished|

$prototype=void canceled()
$signalMethod=5,2,0|void|canceled|

$prototype=void error( QBluetoothServiceDiscoveryAgent::Error error )
$signalMethod=5,2,0|void|error,error,QOverload<QBluetoothServiceDiscoveryAgent::Error>|QBluetoothServiceDiscoveryAgent::Error

#pragma ENDDUMP
