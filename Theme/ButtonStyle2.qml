import QtQuick 2.10
import QtQuick.Controls 2.2

    ToolButton {
        //        button background color
        property color greyNormal: "transparent"
        property color greyHover: "#FF404040"
        property color greyClicked: "#FF323232"
        property color buttonDisabled: "#FF404040"
        //        text background color
        property color textNormal: "#FFF0F0F0"
        property color textDisabled: "#FF646464"

        id: toolBtnId
        hoverEnabled: true
        enabled: true
        activeFocusOnTab: true

//        font: avenirFont
        background: Rectangle {
            id: buttonBackgroundId
            implicitHeight: 80
            implicitWidth: 100
            color: toolBtnId.pressed? greyClicked : toolBtnId.hovered? greyHover : toolBtnId.enabled? greyNormal : buttonDisabled }

        contentItem:
            Label {
            id: buttonLabelId
            text: toolBtnId.text
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            font.family: "Verdana"
            color: toolBtnId.enabled? textNormal : textDisabled
                        }
    }



