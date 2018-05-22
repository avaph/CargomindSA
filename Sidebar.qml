import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import "Theme" as Theme


Item {
    id: sidebarButtonsId

    //    button colour list

    property color blueNormal: "#FF4172119"
    property color blueHover: "#FF5496158"
    property color blueClicked: "#FF3765107"
    property color greyNormal: "transparent"
    property color greyHover: "#FF646464"
    property color greyClicked: "#FF505050"

    ButtonStyle {
        id: buttonStyleId
                    background: Rectangle {
                        implicitWidth: 100
                        implicitHeight: 25
                        border.width: control.activeFocus ? 2 : 1
                        border.color: "#888"
                        radius: 0
                        color: "red"

                    }
                }



    ColumnLayout {
        spacing: 5
        anchors.top: parent.top

        Theme.Button {
            id: planBtnId
            text: qsTr("1")

        }

        Theme.Button {
            id: deployBtnId
                text: qsTr("1")

        }

        Theme.Button {
            id: saveBtnId
               text: qsTr("1")

        }

        Theme.Button {
            id: button4
               text: qsTr("1")

        }

        Theme.Button {
            id: button5
               text: qsTr("1")


        }


    }




}
