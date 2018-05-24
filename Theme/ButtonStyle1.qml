import QtQuick 2.10
import QtQuick.Controls 2.3

ToolButton {
    //        button background color
    property color blueNormal: "#FF294877"
    property color blueHover: "#FF36609e"
    property color blueClicked: "#FF25416b"
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
        color: toolBtnId.pressed? blueClicked : toolBtnId.hovered? blueHover : toolBtnId.enabled? blueNormal : buttonDisabled }

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


