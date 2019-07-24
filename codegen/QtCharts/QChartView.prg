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

$beginClassFrom=QGraphicsView

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QChartView(QWidget *parent = nullptr)
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QChartView(QChart *chart, QWidget *parent = nullptr)
$internalConstructor=|new2|QChart *,QWidget *=nullptr

//[1]explicit QChartView(QWidget *parent = nullptr)
//[2]explicit QChartView(QChart *chart, QWidget *parent = nullptr)

HB_FUNC_STATIC( QCHARTVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QChartView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQCHART(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QChartView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QChartView()
$deleteMethod

$prototype=void setRubberBand(const RubberBands &rubberBands)
%% TODO: const QChartView::RubberBands &
%% $method=|void|setRubberBand|const QChartView::RubberBands &

$prototype=RubberBands rubberBand() const
$method=|QChartView::RubberBands|rubberBand|

$prototype=QChart *chart() const
$method=|QChart *|chart|

$prototype=void setChart(QChart *chart)
$method=|void|setChart|QChart *

$prototype=void resizeEvent(QResizeEvent *event) [protected]

$prototype=void mousePressEvent(QMouseEvent *event) [protected]

$prototype=void mouseMoveEvent(QMouseEvent *event) [protected]

$prototype=void mouseReleaseEvent(QMouseEvent *event) [protected]

#pragma ENDDUMP
