/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QDOMNODELIST
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
#endif

CLASS QDomDocument INHERIT QDomNode

   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomDocument>
#endif

/*
QDomDocument ()
*/
void QDomDocument_new1()
{
  auto obj = new QDomDocument();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDomDocument ( const QString & name )
*/
void QDomDocument_new2()
{
  auto obj = new QDomDocument( PQSTRING(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDomDocument ( const QDomDocumentType & doctype )
*/
void QDomDocument_new3()
{
  auto obj = new QDomDocument( *PQDOMDOCUMENTTYPE(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QDomDocument ( const QDomDocument & x )
*/
void QDomDocument_new4()
{
  auto obj = new QDomDocument( *PQDOMDOCUMENT(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]QDomDocument ()
[2]QDomDocument ( const QString & name )
[3]QDomDocument ( const QDomDocumentType & doctype )
[4]QDomDocument ( const QDomDocument & x )
*/

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocument_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDomDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    QDomDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMDOCUMENT_DELETE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

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
QDomAttr createAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomAttr( obj->createAttribute( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMATTR", true );
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
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTENS )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      auto ptr = new QDomAttr( obj->createAttributeNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMATTR", true );
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
QDomCDATASection createCDATASection ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECDATASECTION )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomCDATASection( obj->createCDATASection( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMCDATASECTION", true );
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
QDomComment createComment ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECOMMENT )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomComment( obj->createComment( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMCOMMENT", true );
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
QDomDocumentFragment createDocumentFragment ()
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDomDocumentFragment( obj->createDocumentFragment() );
      Qt5xHb::createReturnClass( ptr, "QDOMDOCUMENTFRAGMENT", true );
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
QDomElement createElement ( const QString & tagName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENT )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomElement( obj->createElement( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENTNS )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      auto ptr = new QDomElement( obj->createElementNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomEntityReference createEntityReference ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEENTITYREFERENCE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomEntityReference( obj->createEntityReference( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMENTITYREFERENCE", true );
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
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      auto ptr = new QDomProcessingInstruction( obj->createProcessingInstruction( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMPROCESSINGINSTRUCTION", true );
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
QDomText createTextNode ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATETEXTNODE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomText( obj->createTextNode( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMTEXT", true );
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
QDomDocumentType doctype () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCTYPE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDomDocumentType( obj->doctype() );
      Qt5xHb::createReturnClass( ptr, "QDOMDOCUMENTTYPE", true );
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
QDomElement documentElement () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCUMENTELEMENT )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDomElement( obj->documentElement() );
      Qt5xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomElement elementById ( const QString & elementId )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTBYID )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomElement( obj->elementById( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMELEMENT", true );
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
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAME )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      auto ptr = new QDomNodeList( obj->elementsByTagName( PQSTRING(1) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMNODELIST", true );
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
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAMENS )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      auto ptr = new QDomNodeList( obj->elementsByTagNameNS( PQSTRING(1), PQSTRING(2) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMNODELIST", true );
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
QDomImplementation implementation () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPLEMENTATION )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QDomImplementation( obj->implementation() );
      Qt5xHb::createReturnClass( ptr, "QDOMIMPLEMENTATION", true );
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
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPORTNODE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQDOMNODE(1) && ISLOG(2) )
    {
#endif
      auto ptr = new QDomNode( obj->importNode( *PQDOMNODE(1), PBOOL(2) ) );
      Qt5xHb::createReturnClass( ptr, "QDOMNODE", true );
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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NODETYPE )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
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
bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent1()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par4;
    int par5;
    RBOOL( obj->setContent( *PQBYTEARRAY(1), PBOOL(2), nullptr, &par4, &par5 ) );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
}

/*
bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent2()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par4;
    int par5;
    RBOOL( obj->setContent( PQSTRING(1), PBOOL(2), nullptr, &par4, &par5 ) );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
}

/*
bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent3()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par4;
    int par5;
    RBOOL( obj->setContent( PQIODEVICE(1), PBOOL(2), nullptr, &par4, &par5 ) );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
}

/*
bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent4()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par4;
    int par5;
    RBOOL( obj->setContent( PQXMLINPUTSOURCE(1), PBOOL(2), nullptr, &par4, &par5 ) );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
}

/*
bool setContent ( const QString & text, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent5()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par3;
    int par4;
    RBOOL( obj->setContent( PQSTRING(1), nullptr, &par3, &par4 ) );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
}

/*
bool setContent ( const QByteArray & buffer, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent6()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par3;
    int par4;
    RBOOL( obj->setContent( *PQBYTEARRAY(1), nullptr, &par3, &par4 ) );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
}

/*
bool setContent ( QIODevice * dev, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent7()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par3;
    int par4;
    RBOOL( obj->setContent( PQIODEVICE(1), nullptr, &par3, &par4 ) );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
}

/*
bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/
void QDomDocument_setContent8()
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    int par4;
    int par5;
    RBOOL( obj->setContent( PQXMLINPUTSOURCE(1), PQXMLREADER(2), nullptr, &par4, &par5 ) );
    hb_storni( par4, 4 );
    hb_storni( par5, 5 );
  }
}

/*
[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[5]bool setContent ( const QString & text, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[7]bool setContent ( QIODevice * dev, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = nullptr, int * errorLine = nullptr, int * errorColumn = nullptr )
*/

HB_FUNC_STATIC( QDOMDOCUMENT_SETCONTENT )
{
  if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISLOG(2) && ISOPTCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QDomDocument_setContent1();
  }
  else if( ISBETWEEN(2,5) && ISCHAR(1) && ISLOG(2) && ISOPTCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QDomDocument_setContent2();
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISLOG(2) && ISOPTCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QDomDocument_setContent3();
  }
  else if( ISBETWEEN(2,5) && ISQXMLINPUTSOURCE(1) && ISLOG(2) && ISOPTCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QDomDocument_setContent4();
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDomDocument_setContent5();
  }
  else if( ISBETWEEN(1,4) && ISQBYTEARRAY(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDomDocument_setContent6();
  }
  else if( ISBETWEEN(1,4) && ISQIODEVICE(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDomDocument_setContent7();
  }
  else if( ISBETWEEN(1,4) && ISQXMLINPUTSOURCE(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QDomDocument_setContent8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOBYTEARRAY )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      auto ptr = new QByteArray( obj->toByteArray( OPINT(1,1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QString toString ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOSTRING )
{
  auto obj = (QDomDocument *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RQSTRING( obj->toString( OPINT(1,1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
