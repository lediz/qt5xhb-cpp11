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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual ~QMediaServiceSupportedFormatsInterface()
$deleteMethod

$prototype=virtual QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs) const = 0
$virtualMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &

$prototypeV2=virtual QStringList supportedMimeTypes() const = 0

$extraMethods

#pragma ENDDUMP
