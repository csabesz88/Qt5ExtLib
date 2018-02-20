TEMPLATE	= lib   
CONFIG += no_keywords shared_and_static build_all

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

CONFIG(debug, debug|release){
   TARGET = qtwidgetsd
} else {
   TARGET = qtwidgets
}

DESTDIR = $$OUT_PWD/../lib

QT += core gui widgets
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x040900

DEFINES += QT_QTTHUMBWHEEL_EXPORT
DEFINES += QT_QTTOOLBARDIALOG_EXPORT
DEFINES += QT_QTCOLORPICKER_EXPORT
DEFINES += QT_QTCOPYDIALOG_EXPORT
DEFINES += QT_QTCOLORCOMBOBOX_EXPORT
DEFINES += QT_QTCOLORTRIANGLE_EXPORT

SOURCES += qtthumbwheel.cpp
HEADERS += qtthumbwheel.h

SOURCES += qttoolbardialog.cpp
HEADERS += qttoolbardialog.h
FORMS += qttoolbardialog.ui

SOURCES += qtcolorpicker.cpp
HEADERS += qtcolorpicker.h

SOURCES += qtcopydialog.cpp \
           qtfilecopier.cpp
HEADERS += qtcopydialog.h \
           qtfilecopier.h
FORMS   += qtcopydialog.ui \
           qtoverwritedialog.ui \
           qtotherdialog.ui

SOURCES += qtcolorcombobox.cpp
HEADERS += qtcolorcombobox.h

SOURCES += qtcolortriangle.cpp
HEADERS += qtcolortriangle.h

DEFINES += QT_QTWINDOWLISTMENU_EXPORT
SOURCES += qtwindowlistmenu.cpp
HEADERS += qtwindowlistmenu.h


RESOURCES += qtwidgets.qrc


