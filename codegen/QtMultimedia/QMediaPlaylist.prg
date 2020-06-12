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

$beginClassFrom=QObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaPlaylist(QObject * parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QMediaPlaylist()
$deleteMethod

%%
%% Q_PROPERTY(QMediaPlaylist::PlaybackMode playbackMode READ playbackMode WRITE setPlaybackMode NOTIFY playbackModeChanged)
%%

$prototypeV2=QMediaPlaylist::PlaybackMode playbackMode() const

$prototype=void setPlaybackMode(PlaybackMode mode)
$method=|void|setPlaybackMode|QMediaPlaylist::PlaybackMode

%%
%% Q_PROPERTY(QMediaContent currentMedia READ currentMedia NOTIFY currentMediaChanged)
%%

$prototypeV2=QMediaContent currentMedia() const

%%
%% Q_PROPERTY(int currentIndex READ currentIndex WRITE setCurrentIndex NOTIFY currentIndexChanged)
%%

$prototypeV2=int currentIndex() const

$prototype=void setCurrentIndex(int index)
$method=|void|setCurrentIndex|int

%%
%%
%%

$prototype=bool addMedia(const QMediaContent & content)
$internalMethod=|bool|addMedia,addMedia1|const QMediaContent &

$prototype=bool addMedia(const QList<QMediaContent> & items)
$internalMethod=|bool|addMedia,addMedia2|const QList<QMediaContent> &

/*
[1]bool addMedia(const QMediaContent & content)
[2]bool addMedia(const QList<QMediaContent> & items)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_addMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_addMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addMedia

$prototypeV2=bool clear()

$prototypeV2=QMediaPlaylist::Error error() const

$prototypeV2=QString errorString() const

$prototype=bool insertMedia(int pos, const QMediaContent & content)
$internalMethod=|bool|insertMedia,insertMedia1|int,const QMediaContent &

$prototype=bool insertMedia(int pos, const QList<QMediaContent> & items)
$internalMethod=|bool|insertMedia,insertMedia2|int,const QList<QMediaContent> &

/*
bool insertMedia(int pos, const QMediaContent & content)
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_insertMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_insertMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertMedia

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isReadOnly() const

$prototype=void load(const QNetworkRequest & request, const char * format = nullptr)
$internalMethod=|void|load,load1|const QNetworkRequest &,const char *=nullptr

$prototype=void load(const QUrl & location, const char * format = nullptr)
$internalMethod=|void|load,load2|const QUrl &,const char *=nullptr

$prototype=void load(QIODevice * device, const char * format = nullptr)
$internalMethod=|void|load,load3|QIODevice *,const char *=nullptr

/*
[1]void load(const QNetworkRequest & request, const char * format = nullptr)
[2]void load(const QUrl & location, const char * format = nullptr)
[3]void load(QIODevice * device, const char * format = nullptr)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD )
{
  if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load2();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototype=QMediaContent media(int index) const
$method=|QMediaContent|media|int

$prototypeV2=int mediaCount() const

$prototype=int nextIndex(int steps = 1) const
$method=|int|nextIndex|int=1

$prototype=int previousIndex(int steps = 1) const
$method=|int|previousIndex|int=1

$prototype=bool removeMedia(int pos)
$internalMethod=|bool|removeMedia,removeMedia1|int

$prototype=bool removeMedia(int start, int end)
$internalMethod=|bool|removeMedia,removeMedia2|int,int

/*
[1]bool removeMedia(int pos)
[2]bool removeMedia(int start, int end)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMediaPlaylist_removeMedia1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaPlaylist_removeMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=removeMedia

$prototype=bool save(const QUrl & location, const char * format = nullptr)
$internalMethod=|bool|save,save1|const QUrl &,const char *=nullptr

$prototype=bool save(QIODevice * device, const char * format)
$internalMethod=|bool|save,save2|QIODevice *,const char *

/*
[1]bool save(const QUrl & location, const char * format = nullptr)
[2]bool save(QIODevice * device, const char * format)
*/

HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE )
{
  if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_save1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QMediaPlaylist_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=save

$prototype=virtual QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototypeV2=void next()

$prototypeV2=void previous()

$prototypeV2=void shuffle()

$prototype=bool moveMedia(int from, int to)
$method=5,7,0|bool|moveMedia|int,int

$prototype=bool setMediaObject(QMediaObject *object) override [protected]

%%
%% SIGNALS
%%

$prototype=void currentIndexChanged( int position )
$signalMethod=|void|currentIndexChanged|int

$prototype=void currentMediaChanged( const QMediaContent & content )
$signalMethod=|void|currentMediaChanged|const QMediaContent &

$prototype=void loadFailed()
$signalMethod=|void|loadFailed|

$prototype=void loaded()
$signalMethod=|void|loaded|

$prototype=void mediaAboutToBeInserted( int start, int end )
$signalMethod=|void|mediaAboutToBeInserted|int,int

$prototype=void mediaAboutToBeRemoved( int start, int end )
$signalMethod=|void|mediaAboutToBeRemoved|int,int

$prototype=void mediaChanged( int start, int end )
$signalMethod=|void|mediaChanged|int,int

$prototype=void mediaInserted( int start, int end )
$signalMethod=|void|mediaInserted|int,int

$prototype=void mediaRemoved( int start, int end )
$signalMethod=|void|mediaRemoved|int,int

$prototype=void playbackModeChanged( QMediaPlaylist::PlaybackMode mode )
$signalMethod=|void|playbackModeChanged|QMediaPlaylist::PlaybackMode

#pragma ENDDUMP
