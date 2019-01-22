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

$beginClassFrom=QAbstractSeries

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

#include <QBarSet>

$prototype=explicit QAbstractBarSeries(QAbstractBarSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QAbstractBarSeries()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(qreal barWidth READ barWidth WRITE setBarWidth)
%%

$prototype=qreal barWidth() const
$method=5,7,0|qreal|barWidth|

$prototype=void setBarWidth(qreal width)
$method=5,7,0|void|setBarWidth|qreal

%%
%% Q_PROPERTY(int count READ count NOTIFY countChanged)
%%

$prototype=int count() const
$method=5,7,0|int|count|

%%
%% Q_PROPERTY(bool labelsVisible READ isLabelsVisible WRITE setLabelsVisible NOTIFY labelsVisibleChanged)
%%

$prototype=bool isLabelsVisible() const
$method=5,7,0|bool|isLabelsVisible|

$prototype=void setLabelsVisible(bool visible = true)
$method=5,7,0|void|setLabelsVisible|bool=true

%%
%% Q_PROPERTY(QString labelsFormat READ labelsFormat WRITE setLabelsFormat NOTIFY labelsFormatChanged)
%%

$prototype=QString labelsFormat() const
$method=5,7,0|QString|labelsFormat|

$prototype=void setLabelsFormat(const QString &format)
$method=5,7,0|void|setLabelsFormat|const QString &

%%
%% Q_PROPERTY(qreal labelsAngle READ labelsAngle WRITE setLabelsAngle NOTIFY labelsAngleChanged)
%%

$prototype=qreal labelsAngle() const
$method=5,7,0|qreal|labelsAngle|

$prototype=void setLabelsAngle(qreal angle)
$method=5,7,0|void|setLabelsAngle|qreal

%%
%% Q_PROPERTY(LabelsPosition labelsPosition READ labelsPosition WRITE setLabelsPosition NOTIFY labelsPositionChanged)
%%

$prototype=QAbstractBarSeries::LabelsPosition labelsPosition() const
$method=5,7,0|QAbstractBarSeries::LabelsPosition|labelsPosition|

$prototype=void setLabelsPosition(QAbstractBarSeries::LabelsPosition position)
$method=5,7,0|void|setLabelsPosition|QAbstractBarSeries::LabelsPosition

%%
%%
%%

$prototype=bool append(QBarSet *set)
$internalMethod=5,7,0|bool|append,append1|QBarSet *

$prototype=bool append(QList<QBarSet *> sets)
$internalMethod=5,7,0|bool|append,append2|QList<QBarSet *>

//[1]bool append(QBarSet *set)
//[2]bool append(QList<QBarSet *> sets)

HB_FUNC_STATIC( QABSTRACTBARSERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQBARSET(1) )
  {
    QAbstractBarSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAbstractBarSeries_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=append

$prototype=bool remove(QBarSet *set)
$method=5,7,0|bool|remove|QBarSet *

$prototype=bool take(QBarSet *set)
$method=5,7,0|bool|take|QBarSet *

$prototype=bool insert(int index, QBarSet *set)
$method=5,7,0|bool|insert|int,QBarSet *

$prototype=QList<QBarSet *> barSets() const
$method=5,7,0|QList<QBarSet *>|barSets|

$prototype=void clear()
$method=5,7,0|void|clear|

%%
%% SIGNALS
%%

using namespace QtCharts;

$prototype=void barsetsAdded( QList<QBarSet*> sets )
$signalMethod=5,7,0|void|barsetsAdded|QList<QBarSet*>

$prototype=void barsetsRemoved( QList<QBarSet*> sets )
$signalMethod=5,7,0|void|barsetsRemoved|QList<QBarSet*>

$prototype=void clicked( int index, QBarSet * barset )
$signalMethod=5,7,0|void|clicked|int,QBarSet *

$prototype=void countChanged()
$signalMethod=5,7,0|void|countChanged|

$prototype=void doubleClicked( int index, QBarSet * barset )
$signalMethod=5,7,0|void|doubleClicked|int,QBarSet *

$prototype=void hovered( bool status, int index, QBarSet * barset )
$signalMethod=5,7,0|void|hovered|bool,int,QBarSet *

$prototype=void labelsAngleChanged( qreal angle )
$signalMethod=5,7,0|void|labelsAngleChanged|qreal

$prototype=void labelsFormatChanged( const QString & format )
$signalMethod=5,7,0|void|labelsFormatChanged|const QString &

$prototype=void labelsPositionChanged( QAbstractBarSeries::LabelsPosition position )
$signalMethod=5,7,0|void|labelsPositionChanged|QAbstractBarSeries::LabelsPosition

$prototype=void labelsVisibleChanged()
$signalMethod=5,7,0|void|labelsVisibleChanged|

$prototype=void pressed( int index, QBarSet * barset )
$signalMethod=5,7,0|void|pressed|int,QBarSet *

$prototype=void released( int index, QBarSet * barset )
$signalMethod=5,7,0|void|released|int,QBarSet *

#pragma ENDDUMP
