import QtQuick 2.0

Component {
    id: listDelegate
    Rectangle {
        id: listItem
        border.width: 1
        border.color: "grey"
        color: "transparent"
        radius: 60
        width: height
        height: parent.height


        Column {
            id: columnId
            spacing: 5
            anchors.centerIn: parent
            Image {
                id: itemImage
                width: 50
                height: 50
                source: imagePath
                anchors.horizontalCenter: columnId.horizontalCenter
            }
            Text {
                id: itemText
                text: name + "|" + category
                wrapMode: Text.Wrap
                color: "white"
                anchors.horizontalCenter: columnId.horizontalCenter
            }

        }

        MouseArea {
            enabled: true
            z: 1
            hoverEnabled: true
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            cursorShape: Qt.PointingHandCursor
            onHoveredChanged: containsMouse ? parent.color = "teal" : parent.color = "transparent"
            onPressed: {
                console.log("clicked")
                parent.color = "red"
            }
        }
    }
}
