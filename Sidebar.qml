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




    ColumnLayout {
        id: buttonGroupId
        spacing: 5
        anchors.top: parent.top

        Theme.ButtonStyle2 {
            id: importBtnId
            enabled: true
            text: qsTr("Import")
        }

        Theme.ButtonStyle1 {
            id: planBtnId
            enabled: true
            text: qsTr("Plan")
        }

        Theme.ButtonStyle2 {
            id: deployBtnId
            enabled: true
            text: qsTr("Deploy")
        }

        Rectangle {
        id: spaceId
        height: 500
        width: parent.width
        color: "transparent"
        }

        Theme.ButtonStyle2 {
            id: removeBtnId
            enabled: true
            text: qsTr("Remove")
        }


        Theme.ButtonStyle2 {
            id: storageBtnId
            enabled: true
            text: qsTr("Storage")
        }

    }
}

