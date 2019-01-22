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

#include <QBluetoothTransferReply>

$prototype=QBluetoothTransferManager(QObject *parent = nullptr)
$constructor=5,2,0|new|QObject *=nullptr

$deleteMethod=5,2,0

$prototype=QBluetoothTransferReply *put(const QBluetoothTransferRequest &request, QIODevice *data)
$method=5,2,0|QBluetoothTransferReply *|put|const QBluetoothTransferRequest &,QIODevice *

%%
%% SIGNALS
%%

$prototype=void finished( QBluetoothTransferReply * reply )
$signalMethod=5,2,0|void|finished|QBluetoothTransferReply *

#pragma ENDDUMP
