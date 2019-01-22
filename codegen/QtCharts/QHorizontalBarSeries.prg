%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractBarSeries

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QHorizontalBarSeries(QObject *parent = nullptr)
$constructor=5,7,0|new|QObject *=nullptr

$prototype=~QHorizontalBarSeries()
$deleteMethod=5,7,0

$prototype=QAbstractSeries::SeriesType type() const
$method=5,7,0|QAbstractSeries::SeriesType|type|

#pragma ENDDUMP
