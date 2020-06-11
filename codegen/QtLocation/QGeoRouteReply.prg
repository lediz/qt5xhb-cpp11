%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGeoRouteReply(Error error, const QString &errorString, QObject *parent = nullptr)
$constructor=|new|QGeoRouteReply::Error,const QString &,QObject *=nullptr

$deleteMethod

$prototypeV2=bool isFinished() const

$prototypeV2=QGeoRouteReply::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=QGeoRouteRequest request() const

$prototype=QList<QGeoRoute> routes() const
$method=|QList<QGeoRoute>|routes|

$prototypeV2=virtual void abort()

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=|void|finished|

$prototype=void error( QGeoRouteReply::Error error, const QString & errorString = QString() )
$signalMethod=|void|error,error,QOverload<QGeoRouteReply::Error COMMA const QString &>|QGeoRouteReply::Error,const QString &

#pragma ENDDUMP
