import QtQuick 2.0
import QtQuick.Controls 2.2

CheckBox {
    property color textNormal: "#FFF0F0F0"
    property color textDisabled: "#FF646464"
    id: checkBoxId
    checkable: true
    opacity: 1
    contentItem:
        Label {
        id: checkBoxLabelId
        text: checkBoxId.text
        anchors.left: indicatorId.right
        anchors.leftMargin: 5
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 10
        font.family: "Verdana"
        color: checkBoxId.enabled? textNormal : textDisabled}

    indicator: Rectangle {
        id: indicatorId
        anchors.left: parent
        anchors.verticalCenter: checkBoxLabelId.verticalCenter
        implicitWidth: 20
        implicitHeight: 20
        border.color : "light green"
        border.width: 1
        radius: 5
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            onClicked: {checkBoxId.checked = true ; console.log("checked")}
        }
    }

    Rectangle {
        visible: checkBoxId.checked? true : false
        color:   "light green"
        radius: 3
        anchors.fill: indicatorId
        anchors.margins: 4
        MouseArea {
            anchors.fill: parent
            onClicked: {
                checkBoxId.checked = false
                console.log("unchecked")
            }
        }

    }
}







