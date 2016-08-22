include(../UnitTestRolisteam.pri)

SOURCES += \
    tst_charactersheet.cpp\
#    tst_formula.cpp \

TEMPLATE = app
TARGET= tst_charactersheet
MOC_DIR=trash
OBJECTS_DIR=trash



QT += testlib widgets
CONFIG += UNIT_TEST

INCLUDEPATH += ../lib/rolisteam/src
INCLUDEPATH += ../lib/rolisteam/src/charactersheet/nodes
INCLUDEPATH += ../lib/rolisteam/src/charactersheet


include(../lib/rolisteam/src/charactersheet/charactersheet.pri)
