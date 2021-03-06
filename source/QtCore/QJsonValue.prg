/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QVARIANT
#endif

CLASS QJsonValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new
   METHOD delete
   METHOD isArray
   METHOD isBool
   METHOD isDouble
   METHOD isNull
   METHOD isObject
   METHOD isString
   METHOD isUndefined
   METHOD toArray
   METHOD toBool
   METHOD toDouble
   METHOD toObject
   METHOD toString
   METHOD toVariant
   METHOD type
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QJsonValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtCore/QJsonValue>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtCore/QJsonValue>
#endif

#include <QtCore/QJsonArray>
#include <QtCore/QJsonObject>
#include <QtCore/QVariant>

/*
QJsonValue(Type type = Null)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW1 )
{
  auto obj = new QJsonValue( ISNIL(1)? (QJsonValue::Type) QJsonValue::Null : (QJsonValue::Type) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(bool b)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW2 )
{
  auto obj = new QJsonValue( PBOOL(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(double n)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW3 )
{
  auto obj = new QJsonValue( PDOUBLE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(const QString & s)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW4 )
{
  auto obj = new QJsonValue( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(QLatin1String s)
*/

/*
QJsonValue(const QJsonArray & a)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW6 )
{
  auto obj = new QJsonValue( *PQJSONARRAY(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(const QJsonObject & o)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW7 )
{
  auto obj = new QJsonValue( *PQJSONOBJECT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(const QJsonValue & other)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW8 )
{
  auto obj = new QJsonValue( *PQJSONVALUE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QJsonValue(int n)
*/
HB_FUNC_STATIC( QJSONVALUE_NEW9 )
{
  auto obj = new QJsonValue( PINT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QJsonValue(Type type = Null)
[2]QJsonValue(bool b)
[3]QJsonValue(double n)
[4]QJsonValue(const QString & s)
[5]QJsonValue(QLatin1String s)
[6]QJsonValue(const QJsonArray & a)
[7]QJsonValue(const QJsonObject & o)
[8]QJsonValue(const QJsonValue & other)
[9]QJsonValue(int n)
*/

HB_FUNC_STATIC( QJSONVALUE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW3 );
    //HB_FUNC_EXEC( QJSONVALUE_NEW9 ); // TODO: implementar
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && ISQJSONVALUE(1) )
  {
    HB_FUNC_EXEC( QJSONVALUE_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONVALUE_DELETE )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isArray() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISARRAY )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isArray() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isBool() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISBOOL )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBool() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isDouble() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISDOUBLE )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDouble() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISNULL )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISOBJECT )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isObject() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isString() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISSTRING )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isString() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QJSONVALUE_ISUNDEFINED )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isUndefined() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJsonArray toArray(const QJsonArray & defaultValue) const
*/
void QJsonValue_toArray1()
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QJsonArray( obj->toArray( *PQJSONARRAY(1) ) );
    Qt5xHb::createReturnClass( ptr, "QJSONARRAY", true );
  }
}

/*
QJsonArray toArray() const
*/
void QJsonValue_toArray2()
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QJsonArray( obj->toArray() );
    Qt5xHb::createReturnClass( ptr, "QJSONARRAY", true );
  }
}

/*
[1]QJsonArray toArray(const QJsonArray & defaultValue) const
[2]QJsonArray toArray() const
*/

HB_FUNC_STATIC( QJSONVALUE_TOARRAY )
{
  if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonValue_toArray1();
  }
  else if( ISNUMPAR(0) )
  {
    QJsonValue_toArray2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool toBool(bool defaultValue = false) const
*/
HB_FUNC_STATIC( QJSONVALUE_TOBOOL )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      RBOOL( obj->toBool( OPBOOL(1,false) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
double toDouble(double defaultValue = 0) const
*/
HB_FUNC_STATIC( QJSONVALUE_TODOUBLE )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RDOUBLE( obj->toDouble( OPDOUBLE(1,0) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QJsonObject toObject(const QJsonObject & defaultValue) const
*/
void QJsonValue_toObject1()
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QJsonObject( obj->toObject( *PQJSONOBJECT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QJSONOBJECT", true );
  }
}

/*
QJsonObject toObject() const
*/
void QJsonValue_toObject2()
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    auto ptr = new QJsonObject( obj->toObject() );
    Qt5xHb::createReturnClass( ptr, "QJSONOBJECT", true );
  }
}

/*
[1]QJsonObject toObject(const QJsonObject & defaultValue) const
[2]QJsonObject toObject() const
*/

HB_FUNC_STATIC( QJSONVALUE_TOOBJECT )
{
  if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonValue_toObject1();
  }
  else if( ISNUMPAR(0) )
  {
    QJsonValue_toObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toString(const QString & defaultValue = QString()) const
*/
HB_FUNC_STATIC( QJSONVALUE_TOSTRING )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTCHAR(1) )
    {
#endif
      RQSTRING( obj->toString( OPQSTRING(1,QString()) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSONVALUE_TOVARIANT )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QVariant( obj->toVariant() );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Type type() const
*/
HB_FUNC_STATIC( QJSONVALUE_TYPE )
{
  auto obj = (QJsonValue *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QJsonValue fromVariant(const QVariant & variant)
*/
HB_FUNC_STATIC( QJSONVALUE_FROMVARIANT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
#endif
    auto ptr = new QJsonValue( QJsonValue::fromVariant( *PQVARIANT(1) ) );
    Qt5xHb::createReturnClass( ptr, "QJSONVALUE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QJSONVALUE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( nullptr, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QJSONVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONVALUE_NEWFROM );
}

HB_FUNC_STATIC( QJSONVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONVALUE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( nullptr, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
