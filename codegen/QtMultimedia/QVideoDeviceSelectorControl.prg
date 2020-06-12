%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVideoDeviceSelectorControl(QObject *parent = nullptr) [protected]

$prototype=virtual ~QVideoDeviceSelectorControl()
$deleteMethod

$prototypeV2=virtual int defaultDevice() const = 0

$prototypeV2=virtual int deviceCount() const = 0

$prototype=virtual QString deviceDescription(int index) const = 0
$virtualMethod=|QString|deviceDescription|int

$prototype=virtual QString deviceName(int index) const = 0
$virtualMethod=|QString|deviceName|int

$prototypeV2=virtual int selectedDevice() const = 0

$prototype=virtual void setSelectedDevice(int index) = 0
$virtualSlotMethod=|void|setSelectedDevice|int

%%
%% SIGNALS
%%

$prototype=void devicesChanged()
$signalMethod=|void|devicesChanged|

$prototype=void selectedDeviceChanged( int index )
$signalMethod=|void|selectedDeviceChanged,selectedDeviceChanged1,QOverload<int>|int

$prototype=void selectedDeviceChanged( const QString & name )
$signalMethod=|void|selectedDeviceChanged,selectedDeviceChanged2,QOverload<const QString &>|const QString &

#pragma ENDDUMP
