import QtQuick 2.10
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Button{
    id: themeButtonId
    enabled: control.enabled
    style: ButtonStyle {
//        button background color
        property color greyNormal: "transparent"
        property color greyHover: "#FF646464"
        property color greyClicked: "#FF505050"
        property color buttonDisabled: "#FF404040"
//        text background color
        property color textNormal: "#FFF0F0F0"
        property color textDisabled: "#FF646464"

        label:     Text {
            text: control.text
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family : "Arial"
            font.pointSize: 12
            color: themeButtonId.enabled? textNormal : textDisabled
        }

        background: Rectangle {
            anchors.fill: themeButtonId
            id: styleId
            color: control.pressed? greyClicked : control.hovered? greyHover : themeButtonId.enabled? greyNormal : buttonDisabled
            implicitHeight: 100
            implicitWidth: 100
        }
    }

}


