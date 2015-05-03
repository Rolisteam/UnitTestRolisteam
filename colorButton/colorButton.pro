include(../UnitTestRolisteam.pri)

TARGET = tst_colorButton
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/widgets/colorbutton.h

SOURCES += \
    tst_colorButton.cpp \
    ../$$ROLISTEAMSRC/src/widgets/colorbutton.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/widgets/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/
