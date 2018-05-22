import QtQuick 2.10
import QtQuick.Controls 2.1

Item {
    Button {
        id: button
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 40
            color: button.down ? "#d6d6d6" : "#f6f6f6"
            border.color: "#26282a"
            border.width: 1
        }
    }
}
