/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QGLWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtOpenGL/QGLWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtOpenGL/QGLWidget>
#endif

/*
QGLWidget ( QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new1()
{
  auto obj = new QGLWidget( OPQWIDGET(1,nullptr), OPQGLWIDGET(2,nullptr), ISNIL(3)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(3) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QGLWidget ( QGLContext * context, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new2()
{
  auto obj = new QGLWidget( PQGLCONTEXT(1), OPQWIDGET(2,nullptr), OPQGLWIDGET(3,nullptr), ISNIL(4)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
QGLWidget ( const QGLFormat & format, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new3()
{
  auto obj = new QGLWidget( *PQGLFORMAT(1), OPQWIDGET(2,nullptr), OPQGLWIDGET(3,nullptr), ISNIL(4)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(4) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
[1]QGLWidget ( QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
[2]QGLWidget ( QGLContext * context, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
[3]QGLWidget ( const QGLFormat & format, QWidget * parent = nullptr, const QGLWidget * shareWidget = nullptr, Qt::WindowFlags f = 0 )
*/

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN(0,3) && ISOPTQWIDGET(1) && (ISQGLWIDGET(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QGLWidget_new1();
  }
  else if( ISBETWEEN(1,4) && ISQGLCONTEXT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new2();
  }
  else if( ISBETWEEN(1,4) && ISQGLFORMAT(1) && ISOPTQWIDGET(2) && (ISQGLWIDGET(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    QGLWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLWIDGET_DELETE )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
GLuint bindTexture ( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture1()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture2()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP(1), OPGLENUM(2,GL_TEXTURE_2D), OPGLINT(3,GL_RGBA) ) );
  }
}

/*
GLuint bindTexture ( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture3()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
GLuint bindTexture ( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture4()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP(1), PGLENUM(2), PGLINT(3), (QGLContext::BindOptions) hb_parni(4) ) );
  }
}

/*
GLuint bindTexture ( const QString & fileName )
*/
void QGLWidget_bindTexture5()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RGLUINT( obj->bindTexture( PQSTRING(1) ) );
  }
}

/*
[1]GLuint bindTexture(const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
[2]GLuint bindTexture(const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA)
[3]GLuint bindTexture(const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options)
[4]GLuint bindTexture(const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options)
[5]GLuint bindTexture(const QString & fileName)
*/

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN(1,3) && ISQIMAGE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture1();
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_bindTexture2();
  }
  else if( ISBETWEEN(3,4) && ISQIMAGE(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture3();
  }
  else if( ISBETWEEN(3,4) && ISQPIXMAP(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QGLWidget_bindTexture4();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QGLWidget_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QGLColormap & colormap () const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLColormap * ptr = &obj->colormap();
      Qt5xHb::createReturnClass( ptr, "QGLCOLORMAP", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QGLContext * context () const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLContext * ptr = obj->context();
      Qt5xHb::createReturnClass( ptr, "QGLCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void deleteTexture ( GLuint id )
*/
HB_FUNC_STATIC( QGLWIDGET_DELETETEXTURE )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->deleteTexture( PGLUINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void doneCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_DONECURRENT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->doneCurrent();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doubleBuffer () const
*/
HB_FUNC_STATIC( QGLWIDGET_DOUBLEBUFFER )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->doubleBuffer() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture1()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->drawTexture( *PQRECTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture2()
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->drawTexture( *PQPOINTF(1), PGLUINT(2), OPGLENUM(3,GL_TEXTURE_2D) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void drawTexture ( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
[2]void drawTexture ( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN(2,3) && ISQRECTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture1();
  }
  else if( ISBETWEEN(2,3) && ISQPOINTF(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QGLWidget_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format () const
*/
HB_FUNC_STATIC( QGLWIDGET_FORMAT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QGLFormat( obj->format() );
      Qt5xHb::createReturnClass( ptr, "QGLFORMAT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QImage grabFrameBuffer ( bool withAlpha = false )
*/
HB_FUNC_STATIC( QGLWIDGET_GRABFRAMEBUFFER )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      auto ptr = new QImage( obj->grabFrameBuffer( OPBOOL(1,false) ) );
      Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSharing () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISSHARING )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSharing() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QGLWIDGET_ISVALID )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void makeCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKECURRENT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeCurrent();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void makeOverlayCurrent ()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKEOVERLAYCURRENT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->makeOverlayCurrent();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QGLContext * overlayContext () const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QGLContext * ptr = obj->overlayContext();
      Qt5xHb::createReturnClass( ptr, "QGLCONTEXT", false );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void qglClearColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCLEARCOLOR )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->qglClearColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void qglColor ( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCOLOR )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
    {
#endif
      obj->qglColor( ISOBJECT(1)? *(QColor *) Qt5xHb::itemGetPtr(1) : QColor(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPixmap renderPixmap ( int w = 0, int h = 0, bool useContext = false )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERPIXMAP )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,3) && ISOPTNUM(1) && ISOPTNUM(2) && ISOPTLOG(3) )
    {
#endif
      auto ptr = new QPixmap( obj->renderPixmap( OPINT(1,0), OPINT(2,0), OPBOOL(3,false) ) );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setColormap ( const QGLColormap & cmap )
*/
HB_FUNC_STATIC( QGLWIDGET_SETCOLORMAP )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGLCOLORMAP(1) )
    {
#endif
      obj->setColormap( *PQGLCOLORMAP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMouseTracking ( bool enable )
*/
HB_FUNC_STATIC( QGLWIDGET_SETMOUSETRACKING )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setMouseTracking( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swapBuffers ()
*/
HB_FUNC_STATIC( QGLWIDGET_SWAPBUFFERS )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->swapBuffers();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEGL )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->updateGL();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateOverlayGL ()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEOVERLAYGL )
{
  auto obj = (QGLWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->updateOverlayGL();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QImage convertToGLFormat ( const QImage & img )
*/
HB_FUNC_STATIC( QGLWIDGET_CONVERTTOGLFORMAT )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
#endif
    auto ptr = new QImage( QGLWidget::convertToGLFormat( *PQIMAGE(1) ) );
    Qt5xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
