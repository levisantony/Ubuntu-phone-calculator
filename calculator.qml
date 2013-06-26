import QtQuick 2.0
import Ubuntu.Components 0.1
import "calc.js" as Calc

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"
    
    // Note! applicationName needs to match the .desktop filename
    applicationName: "calculator"
    
    /* 
     This property enables the application to change orientation 
     when the device is rotated. The default is false.
    */
    automaticOrientation: true
 
    width: units.gu(60)
    height: units.gu(75)

    property real margins: units.gu(2)
    property real buttonWidth: (pageLayout.width - standardspacing * (buttonGrid.columns - 1)) / buttonGrid.columns
    property real standardspacing: units.gu(1)

    
    Page {
        title: "calculator"

        TextField {
                id: t
                x:76
                y:160
                width: 200
                height: 50
                text: ""

                }


        Button {
        id: button13
        x: 76
        y: 447
        text: "0"
        onClicked: {

            t.text = t.text + "0"

        }
        }

        Button {
        id: button15
        x: 76
        y: 375
        text: "1"
        onClicked: {
            t.text = t.text + "1"
        }
        }

        Button {
        id: button2
        x: 136
        y: 375
        text: "2"
        onClicked: {

            t.text = t.text + "2"
        }
        }

        Button {
        id: button3
        x: 203
        y: 375
        text: "3"

        onClicked: {


            t.text = t.text + "3"

        }
        }



        Button {
        id: button5
        x: 76
        y: 299
        text: "4"
        onClicked: {

            t.text = t.text + "4"

        }
        }

        Button {
        id: button6
        x: 136
        y: 299
        text: "5"
        onClicked: {


            t.text = t.text + "5"

        }
        }

        Button {
        id: button7
        x: 203
        y: 299
        text: "6"
        onClicked: {


            t.text = t.text + "6"
        }
        }



        Button {
        id: button9
        x: 76
        y: 235
        text: "7"
        onClicked: {

            t.text = t.text + "7"


        }
        }

        Button {
        id: button10
        x: 136
        y: 235
        text: "8"
        onClicked: {


            t.text = t.text + "8"

        }
        }

        Button {
        id: button11
        x: 203
        y: 235
        text: "9"
        onClicked: {

            t.text = t.text + "9"
        }
        }



        Button {
        id: buttonplus
        x: 270
        y: 375
        text: "+"
        onClicked: {

        Calc.val1 = t.text
        t.text = ""

            Calc.op="+"
        }


        }
        Button {
        id: button8
        x: 264
        y: 299
        text: "-"

        onClicked: {

            Calc.val1 = t.text
            t.text = ""

                Calc.op="-"

        }}

        Button {
        id: button16
        x: 270
        y: 235
        text: "*"

        onClicked: {

            Calc.val1 = t.text
            t.text = ""

                Calc.op="*"
        }}
        Button {
        id: button12
        x: 136
        y: 447
        text: "/"

        onClicked: {

            Calc.val1 = t.text
            t.text = ""

                Calc.op="/"
        }


        }

        Button {
        id: button1
        x: 196
        y: 447

        text: "="

        onClicked: {

            Calc.val2 = t.text

                       if(Calc.op=="+"){

                       Calc.res = Calc.val1*1 + Calc.val2*1

                       t.text = Calc.res
                       }else if(Calc.op=="-"){
                           Calc.res = Calc.val1*1 - Calc.val2*1

                           t.text = Calc.res
                       }else if(Calc.op=="*"){
                           Calc.res = Calc.val1*1 * Calc.val2*1

                           t.text = Calc.res
                       }else if(Calc.op=="/"){
                           Calc.c = Calc.val1*1 / Calc.val2*1

                           t.text = Calc.res
                       }



        }
        }

        }
        }


