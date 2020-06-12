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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$deleteMethod

$prototype=virtual void start(QIODevice *device) = 0
$internalVirtualMethod=|void|start,start1|QIODevice *

$prototype=virtual QIODevice* start() = 0
$internalVirtualMethod=|QIODevice *|start,start2|

/*
[1]virtual void start(QIODevice *device) = 0
[2]virtual QIODevice* start() = 0
*/

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QAbstractAudioInput_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QAbstractAudioInput_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=virtual void stop() = 0

$prototypeV2=virtual void reset() = 0

$prototypeV2=virtual void suspend()  = 0

$prototypeV2=virtual void resume() = 0

$prototypeV2=virtual int bytesReady() const = 0

$prototypeV2=virtual int periodSize() const = 0

$prototype=virtual void setBufferSize(int value) = 0
$virtualMethod=|void|setBufferSize|int

$prototypeV2=virtual int bufferSize() const = 0

$prototype=virtual void setNotifyInterval(int milliSeconds) = 0
$virtualMethod=|void|setNotifyInterval|int

$prototypeV2=virtual int notifyInterval() const = 0

$prototypeV2=virtual qint64 processedUSecs() const = 0

$prototypeV2=virtual qint64 elapsedUSecs() const = 0

$prototypeV2=virtual QAudio::Error error() const = 0

$prototypeV2=virtual QAudio::State state() const = 0

$prototype=virtual void setFormat(const QAudioFormat& fmt) = 0
$virtualMethod=|void|setFormat|const QAudioFormat &

$prototypeV2=virtual QAudioFormat format() const = 0

$prototype=virtual void setVolume(qreal) = 0
$virtualMethod=|void|setVolume|qreal

$prototypeV2=virtual qreal volume() const = 0

%%
%% SIGNALS
%%

$prototype=void errorChanged( QAudio::Error error )
$signalMethod=|void|errorChanged|QAudio::Error

$prototype=void stateChanged( QAudio::State state )
$signalMethod=|void|stateChanged|QAudio::State

$prototype=void notify()
$signalMethod=|void|notify|

#pragma ENDDUMP
