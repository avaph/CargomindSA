import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4


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
    id: secondaryStyleId
    background: Rectangle {color: greyNormal}
    }

    ColumnLayout {
        spacing: 5
        anchors.fill: parent

        Button {
            id: planBtnId
            text: qsTr("Plan")
          ButtonStyle {
                id: primaryStyleId
                background: Rectangle {color: blueNormal}
                }
        }

        Button {
            id: deployBtnId
            text: qsTr("Deploy")
        }

        Button {
            id: saveBtnId
            text: qsTr("Save")
        }

        Button {
            id: importBtnId
            text: qsTr("Import")
        }


    }


}


