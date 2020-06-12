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

$prototype=explicit QSoundEffect(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=~QSoundEffect()
$deleteMethod

%%
%% Q_PROPERTY(QUrl source READ source WRITE setSource NOTIFY sourceChanged)
%%

$prototypeV2=QUrl source() const

$prototype=void setSource(const QUrl &url)
$method=|void|setSource|const QUrl &

%%
%% Q_PROPERTY(int loops READ loopCount WRITE setLoopCount NOTIFY loopCountChanged)
%%

$prototypeV2=int loopCount() const

$prototype=void setLoopCount(int loopCount)
$method=|void|setLoopCount|int

%%
%% Q_PROPERTY(int loopsRemaining READ loopsRemaining NOTIFY loopsRemainingChanged)
%%

$prototypeV2=int loopsRemaining() const

%%
%% Q_PROPERTY(qreal volume READ volume WRITE setVolume NOTIFY volumeChanged)
%%

$prototypeV2=qreal volume() const

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

%%
%% Q_PROPERTY(bool muted READ isMuted WRITE setMuted NOTIFY mutedChanged)
%%

$prototypeV2=bool isMuted() const

$prototype=void setMuted(bool muted)
$method=|void|setMuted|bool

%%
%% Q_PROPERTY(bool playing READ isPlaying NOTIFY playingChanged)
%%

$prototypeV2=bool isPlaying() const

%%
%% Q_PROPERTY(Status status READ status NOTIFY statusChanged)
%%

$prototypeV2=QSoundEffect::Status status() const

%%
%% Q_PROPERTY(QString category READ category WRITE setCategory NOTIFY categoryChanged)
%%

$prototypeV2=QString category() const

$prototype=void setCategory(const QString &category)
$method=|void|setCategory|const QString &

%%
%%
%%

$prototypeV2=bool isLoaded() const

$prototypeV2=void play()

$prototypeV2=void stop()

$prototypeV2=static QStringList supportedMimeTypes()

%%
%% SIGNALS
%%

$prototype=void sourceChanged()
$signalMethod=|void|sourceChanged|

$prototype=void loopCountChanged()
$signalMethod=|void|loopCountChanged|

$prototype=void loopsRemainingChanged()
$signalMethod=|void|loopsRemainingChanged|

$prototype=void volumeChanged()
$signalMethod=|void|volumeChanged|

$prototype=void mutedChanged()
$signalMethod=|void|mutedChanged|

$prototype=void loadedChanged()
$signalMethod=|void|loadedChanged|

$prototype=void playingChanged()
$signalMethod=|void|playingChanged|

$prototype=void statusChanged()
$signalMethod=|void|statusChanged|

$prototype=void categoryChanged()
$signalMethod=|void|categoryChanged|

#pragma ENDDUMP
