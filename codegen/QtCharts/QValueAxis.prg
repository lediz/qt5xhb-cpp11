%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QValueAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=QValueAxis(QValueAxisPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QValueAxis()
$deleteMethod=

%%
%% Q_PROPERTY(int tickCount READ tickCount WRITE setTickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=|int|tickCount|

$prototype=void setTickCount(int count)
$method=|void|setTickCount|int

%%
%% Q_PROPERTY(qreal min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=qreal min() const
$method=|qreal|min|

$prototype=void setMin(qreal min)
$method=|void|setMin|qreal

%%
%% Q_PROPERTY(qreal max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=qreal max() const
$method=|qreal|max|

$prototype=void setMax(qreal max)
$method=|void|setMax|qreal

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototype=QString labelFormat() const
$method=|QString|labelFormat|

$prototype=void setLabelFormat(const QString &format)
$method=|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(int minorTickCount READ minorTickCount WRITE setMinorTickCount NOTIFY minorTickCountChanged)
%%

$prototype=int minorTickCount() const
$method=|int|minorTickCount|

$prototype=void setMinorTickCount(int count)
$method=|void|setMinorTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=|QAbstractAxis::AxisType|type|

$prototype=void setRange(qreal min, qreal max)
$method=|void|setRange|qreal,qreal

$prototype=void applyNiceNumbers()
$slotMethod=|void|applyNiceNumbers|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void labelFormatChanged( const QString & format )
$signalMethod=|void|labelFormatChanged|const QString &

$prototype=void maxChanged( qreal max )
$signalMethod=|void|maxChanged|qreal

$prototype=void minChanged( qreal min )
$signalMethod=|void|minChanged|qreal

$prototype=void minorTickCountChanged( int tickCount )
$signalMethod=|void|minorTickCountChanged|int

$prototype=void rangeChanged( qreal min, qreal max )
$signalMethod=|void|rangeChanged|qreal,qreal

$prototype=void tickCountChanged( int tickCount )
$signalMethod=|void|tickCountChanged|int

#pragma ENDDUMP
