TEMPLATE = subdirs

#include(TestUnitRolisteamV1.pri)
DEFINES =DSTDIR=$$SRCDIR
SUBDIRS = \
    Dice \
    dataCleverURI \
    preferences \
    rolisteamtheme
    #picture \
#    dataChapter \ #chat MainWindow  picture   map Dice
  #  dataplayer \
   # dataCharacter \
    #networkServer \

OBJECTS_DIR = obj
OTHER_FILES = UnitTestRolisteam.pri





