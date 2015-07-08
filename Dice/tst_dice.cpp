/***************************************************************************
 *   Copyright (C) 2011 by Renaud Guezennec                                *
 *   http://renaudguezennec.homelinux.org/accueil,3.html                   *
 *                                                                         *
 *   Rolisteam is free software; you can redistribute it and/or modify     *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/

#include <QtCore/QString>
#include <QtTest/QtTest>
#include <QtCore/QCoreApplication>

#include "die.h"
#include "diceparser.h"

class TestDice : public QObject
{
    Q_OBJECT

public:
    TestDice();

private slots:
    void initTestCase();
    void getAndSetTest();
    void diceRollD10Test();
    void diceRollD20Test();
    void commandEndlessLoop();
    void commandsTest();
    void wrongCommandsTest();
    void cleanupTestCase();
    void wrongCommandsExecutionTimeTest();

private:
    Die* m_die;
    DiceParser* m_diceParser;
};

TestDice::TestDice()
{
}

void TestDice::initTestCase()
{
    m_die = new Die();
    m_diceParser = new DiceParser();
}

void TestDice::getAndSetTest()
{
    for(unsigned int i = 0; i<2000;i++)
    {
        m_die->setFaces(i);
        QVERIFY(m_die->getFaces()==i);
    }

    m_die->setSelected(true);
    QVERIFY(m_die->isSelected()==true);

    m_die->setSelected(false);
    QVERIFY(m_die->isSelected()==false);

}

void TestDice::diceRollD10Test()
{
    m_die->setFaces(10);
    for(int i = 0; i< 2000; i++)
    {
        m_die->roll(false);
        QVERIFY(m_die->getValue()>0);
        QVERIFY(m_die->getValue()<11);
    }

}
void TestDice::diceRollD20Test()
{
    m_die->setFaces(20);
    for(int i = 0; i< 2000; i++)
    {
        m_die->roll(false);
        QVERIFY(m_die->getValue()>0);
        QVERIFY(m_die->getValue()<21);
    }
}
void TestDice::commandEndlessLoop()
{
    bool a = m_diceParser->parseLine("1D10e[>0]");
    QVERIFY(a==false);
}

void TestDice::commandsTest()
{
    QStringList commands;

    commands << "1L[cheminée,chocolat,épée,arc,chute de pierre]"
            << "10d10c[>=6]-@c[=1]"
            << "10d10c[>=6]-@c[=1]-@c[=1]"
            << "10d10c[>6]+@c[=10]"
            << "1+1D10"
            << "3d10c[>=5]"
            << "3nwod"
            << "1+(4*3)D10"
            << "2+4/4"
            << "2D10*2D20*8"
            <<"1+(4*3)D10"
            <<"(4D6)D10"
            << "1D100a[>=95]a[>=96]a[>=97]a[>=98]a[>=99]e[>=100]"
            << "3D100"
            << "4k3"
            << "10D10e[>=6]sc[>=6]"
            << "100190D6666666s"
            << "10D10e10s"
            << "10D10s"
            << "15D10e10c[8-10]"
            << "10d10e11"
            << "1D8+2D6+7"
            << "D25"
            << "D25+D10"
            << "D25;D10"
            << "8+8+8"
            << "1D20-88"
            << "100*1D20*2D6"
            << "100/28*3"
            << "100/8"
            << "100*3*8"
            << "help"
            << "la"
            << "10+10s"
            << "400000D20/400000"
            << "100*3*8"
            << "10d[-8--1]"
            << "10d[0-9]";
    foreach(QString cmd, commands)
    {
        bool a = m_diceParser->parseLine(cmd);
        QVERIFY2(a==true,cmd.toStdString().c_str());
    }
}
void TestDice::wrongCommandsTest()
{
    QStringList commands;

    commands << "1L[cheminée,chocolat,épée,arc,chute de pierre"
            << "10d10c"
            << "10d10a"
            << "10d0a[>7]"
            << "10d-8a[>7]"
            << "aiteanetauearuteurn"
            << "pajaejlbnmàw";

    foreach(QString cmd, commands)
    {
        bool a = m_diceParser->parseLine(cmd);

        QVERIFY2(a==false,cmd.toStdString().c_str());
    }
}
void TestDice::wrongCommandsExecutionTimeTest()
{
    QStringList commands;

    commands << "1/0"
             << "!!!!";

    foreach(QString cmd, commands)
    {
        m_diceParser->parseLine(cmd);
        m_diceParser->Start();
        QVERIFY2(m_diceParser->getErrorMap().isEmpty() == false,cmd.toStdString().c_str());


    }
}
void TestDice::cleanupTestCase()
{
    delete m_die;
}

QTEST_MAIN(TestDice);

#include "tst_dice.moc"
