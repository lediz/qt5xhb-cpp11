%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTreeView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=QModelIndex indexOf ( const QUrl & link )
$method=|QModelIndex|indexOf|const QUrl &

%% $beginSignals
%% $signal=|linkActivated(QUrl)
%% $endSignals

$prototype=void linkActivated( const QUrl & link )
$signalMethod=|void|linkActivated|QUrl

#pragma ENDDUMP
