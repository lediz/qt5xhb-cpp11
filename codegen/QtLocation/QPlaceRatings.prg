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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlaceRatings()
$internalConstructor=|new1|

$prototype=QPlaceRatings(const QPlaceRatings &other)
$internalConstructor=|new2|const QPlaceRatings &

/*
[1]QPlaceRatings()
[2]QPlaceRatings(const QPlaceRatings &other)
*/

HB_FUNC_STATIC( QPLACERATINGS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceRatings_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACERATINGS(1) )
  {
    QPlaceRatings_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=qreal average() const

$prototype=void setAverage(qreal average)
$method=|void|setAverage|qreal

$prototypeV2=int count() const

$prototype=void setCount(int count)
$method=|void|setCount|int

$prototypeV2=qreal maximum() const

$prototype=void setMaximum(qreal max)
$method=|void|setMaximum|qreal

$prototypeV2=bool isEmpty() const

$extraMethods

#pragma ENDDUMP
