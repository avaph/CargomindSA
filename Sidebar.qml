import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import "Theme" as Theme



ToolBar {
    id: sidebarButtonsId
    property color sidebarBackground: "#FF484848"
    opacity: 1
    background: Rectangle { color: sidebarBackground}


    ColumnLayout {
        id: buttonGroupId
        spacing: 5
        anchors.top: parent.top
        anchors.topMargin: 20


        Theme.ButtonStyle1 {
            id: planBtnId
            enabled: true
            text: qsTr ("Plan")
        }
        Theme.ButtonStyle2 {
            id: deployBtnId
            enabled: true
            text: qsTr ("Deploy")
        }

        ToolSeparator {
            rightPadding: 10
            leftPadding: 10
            Layout.fillWidth: true
            orientation: Qt.Horizontal
//            background: Rectangle {color:"black"}
        }

        Theme.ButtonStyle2 {
            id: importBtnId
            enabled: true
            text: qsTr ("Import")
        }
        Theme.ButtonStyle2 {
            id: saveBtnId
            enabled: true
            text: qsTr ("Save")
        }
        Theme.ButtonStyle2 {
            id: storageBtnId
            enabled: true
            text: qsTr ("Storage")
        }


        }



    }


