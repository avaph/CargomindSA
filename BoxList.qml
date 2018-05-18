import QtQuick 2.0
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Item {
    Rectangle {
        id: rectangle2
        y: 499
        height: 120
        color: "#424242"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: rectangle1.left
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0


        ListModel { //        List of items to be display
            id: avatarModel
            ListElement { name: "Ava"; imagePath: "Resources/Mock/Ava.png"; category: "Designer"}
            ListElement { name: "Aidan"; imagePath: "Resources/Mock/Aidan.png";category: "Engineer"}
            ListElement { name: "Ceci"; imagePath: "Resources/Mock/Ceci.png";category: "Business"}
            ListElement { name: "Bebe"; imagePath: "Resources/Mock/Bebe.png";category: "Engineer"}
            ListElement { name: "Donna";imagePath: "Resources/Mock/Donna.png";category: "Business"}
            ListElement { name: "David";imagePath: "Resources/Mock/David.png";category: "Designer"}
            ListElement { name: "Emma"; imagePath: "Resources/Mock/Emma.png";category: "Engineer"}
            ListElement { name: "Ava"; imagePath: "Resources/Mock/Ava.png";category: "Engineer"}
            ListElement { name: "Aidan"; imagePath: "Resources/Mock/Aidan.png";category: "Business"}
            ListElement { name: "Ceci"; imagePath: "Resources/Mock/Ceci.png";category: "Designer"}
            ListElement { name: "Bebe"; imagePath: "Resources/Mock/Bebe.png";category: "Engineer"}
            ListElement { name: "Donna";imagePath: "Resources/Mock/Donna.png";category: "Engineer"}
            ListElement { name: "David";imagePath: "Resources/Mock/David.png";category: "Engineer"}
            ListElement { name: "Emma"; imagePath: "Resources/Mock/Emma.png";category: "Designer"}
        }

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

        ListView { //  Listview: container to display the list
            id: listView
            delegate: listDelegate
            model: avatarModel
            spacing: 70
            orientation: ListView.Horizontal
            flickableDirection: Flickable.HorizontalFlick
            contentWidth: height
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            anchors.fill: parent
            clip: true

        }
    }

}
