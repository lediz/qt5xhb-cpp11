%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QPlaceSearchReply>

$deleteMethod=5,4,0

$prototype=QString managerName() const
$method=5,4,0|QString|managerName|

$prototype=int managerVersion() const
$method=5,4,0|int|managerVersion|

$prototype=QPlaceDetailsReply *getPlaceDetails(const QString &placeId) const
$method=5,4,0|QPlaceDetailsReply *|getPlaceDetails|const QString &

$prototype=QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request) const
$method=5,4,0|QPlaceContentReply *|getPlaceContent|const QPlaceContentRequest &

$prototype=QPlaceSearchReply *search(const QPlaceSearchRequest &query) const
$method=5,4,0|QPlaceSearchReply *|search|const QPlaceSearchRequest &

$prototype=QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request) const
$method=5,4,0|QPlaceSearchSuggestionReply *|searchSuggestions|const QPlaceSearchRequest &

$prototype=QPlaceIdReply *savePlace(const QPlace &place)
$method=5,4,0|QPlaceIdReply *|savePlace|const QPlace &

$prototype=QPlaceIdReply *removePlace(const QString &placeId)
$method=5,4,0|QPlaceIdReply *|removePlace|const QString &

$prototype=QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId = QString())
$method=5,4,0|QPlaceIdReply *|saveCategory|const QPlaceCategory &,const QString &=QString()

$prototype=QPlaceIdReply *removeCategory(const QString &categoryId)
$method=5,4,0|QPlaceIdReply *|removeCategory|const QString &

$prototype=QPlaceReply *initializeCategories()
$method=5,4,0|QPlaceReply *|initializeCategories|

$prototype=QString parentCategoryId(const QString &categoryId) const
$method=5,4,0|QString|parentCategoryId|const QString &

$prototype=QStringList childCategoryIds(const QString &parentId = QString()) const
$method=5,4,0|QStringList|childCategoryIds|const QString &=QString()

$prototype=QPlaceCategory category(const QString &categoryId) const
$method=5,4,0|QPlaceCategory|category|const QString &

$prototype=QList<QPlaceCategory> childCategories(const QString &parentId = QString()) const
$method=5,4,0|QList<QPlaceCategory>|childCategories|const QString &=QString()

$prototype=QList<QLocale> locales() const
$method=5,4,0|QList<QLocale>|locales|

$prototype=void setLocales(const QList<QLocale> &locale)
$method=5,4,0|void|setLocales|const QList<QLocale> &

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=QPlace compatiblePlace(const QPlace &place)
$method=5,4,0|QPlace|compatiblePlace|const QPlace &

$prototype=QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request) const
$method=5,4,0|QPlaceMatchReply *|matchingPlaces|const QPlaceMatchRequest &

%%
%% SIGNALS
%%

$prototype=void finished( QPlaceReply * reply )
$signalMethod=5,4,0|void|finished|QPlaceReply *

$prototype=void error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString = QString() )
$signalMethod=5,4,0|void|error|QPlaceReply *,QPlaceReply::Error,const QString &

$prototype=void placeAdded( const QString & placeId )
$signalMethod=5,4,0|void|placeAdded|const QString &

$prototype=void placeUpdated( const QString & placeId )
$signalMethod=5,4,0|void|placeUpdated|const QString &

$prototype=void placeRemoved( const QString & placeId )
$signalMethod=5,4,0|void|placeRemoved|const QString &

$prototype=void categoryAdded( const QPlaceCategory & category, const QString & parentId )
$signalMethod=5,4,0|void|categoryAdded|const QPlaceCategory &,const QString &

$prototype=void categoryUpdated( const QPlaceCategory & category, const QString & parentId )
$signalMethod=5,4,0|void|categoryUpdated|const QPlaceCategory &,const QString &

$prototype=void categoryRemoved( const QString & categoryId, const QString & parentId )
$signalMethod=5,4,0|void|categoryRemoved|const QString &,const QString &

$prototype=void dataChanged()
$signalMethod=5,4,0|void|dataChanged|

#pragma ENDDUMP
