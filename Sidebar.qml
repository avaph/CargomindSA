import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import "Theme" as Theme



Item {
    id: sidebarButtonsId


    ColumnLayout {
        id: buttonGroupId
        spacing: 5
        anchors.top: parent.top


        Theme.ButtonStyle2 {
            id: planBtnId
            enabled: true
            text: qsTr ("Plan")
            Image {
                source: planBtnId.enabled? "Resources/Icons/deploy_en.png" :"Resources/Icons/deploy_di.png"
            }


        }

        ToolButton {
            implicitHeight: 80
            implicitWidth: 100
            text: qsTr ("local button")





        }



    }
}

