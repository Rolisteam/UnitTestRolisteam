include(../UnitTestRolisteam.pri)

SOURCES += \
    tst_dice.cpp

TEMPLATE = app
TARGET=diceTest
MOC_DIR=trash
OBJECTS_DIR=trash

QT += testlib

INCLUDEPATH += ../lib/diceparser/
INCLUDEPATH += ../lib/diceparser/node
INCLUDEPATH += ../lib/diceparser/result


include(../lib/diceparser/diceparser.pri)
