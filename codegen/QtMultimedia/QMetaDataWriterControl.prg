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

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMetaDataWriterControl(QObject *parent = nullptr) [protected]

$prototype=~QMetaDataWriterControl()
$deleteMethod

$prototypeV2=virtual bool isWritable() const = 0

$prototypeV2=virtual bool isMetaDataAvailable() const = 0

$prototype=virtual QVariant metaData(const QString &key) const = 0
$virtualMethod=|QVariant|metaData|const QString &

$prototype=virtual void setMetaData(const QString &key, const QVariant &value) = 0
$virtualMethod=|void|setMetaData|const QString &,const QVariant &

$prototypeV2=virtual QStringList availableMetaData() const = 0

%%
%% SIGNALS
%%

$prototype=void metaDataChanged()
$signalMethod=|void|metaDataChanged,metaDataChanged1,QOverload<>|

$prototype=void metaDataChanged( const QString & key, const QVariant & value )
$signalMethod=|void|metaDataChanged,metaDataChanged2,QOverload<const QString & COMMA const QVariant &>|const QString &,const QVariant &

$prototype=void writableChanged( bool writable )
$signalMethod=|void|writableChanged|bool

$prototype=void metaDataAvailableChanged( bool available )
$signalMethod=|void|metaDataAvailableChanged|bool

#pragma ENDDUMP
