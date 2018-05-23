import QtQuick 2.10
import QtQuick.Controls 2.3


ToolButton{
    //        button background color
    property color blueNormal: "#FF294877"
    property color blueHover: "#FF36609e"
    property color blueClicked: "#FF25416b"
    property color buttonDisabled: "#FF404040"
    //        text background color
    property color textNormal: "#FFF0F0F0"
    property color textDisabled: "#FF646464"

    id: themeButtonId
    enabled: control.enabled
    contentItem: Text {
        text: control.text
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family : "Arial"
        font.pointSize: 12
//        color: themeButtonId.enabled? textNormal : textDisabled
    }

    background: Rectangle {
        anchors.fill: themeButtonId
        id: styleId
//        color: control.pressed? blueClicked : control.hovered? blueHover : themeButtonId.enabled? blueNormal : buttonDisabled
        implicitHeight: 100
        implicitWidth: 100
    }


}


