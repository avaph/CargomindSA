import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import Qt.labs.calendar 1.0
import Qt.labs.folderlistmodel 2.2
import Qt3D.Extras 2.9
import QtQuick.Extras 1.4

Window {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Cargomind Standalone")
    visibility: "Maximized"
    //    flags: "Window"         (setting this causes Form Editor to not function)
    color: "grey"
    
    Rectangle {
        id: rectangle1
        x: 1172
        y: 0
        width: 80
        height: parent.height
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        
        Text {
            id: text2
            x: 47
            y: 371
            text: qsTr("Sidebar")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }
    }

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

        property var jobTitle: category



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
                    padding: 5
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

    Flow {
        id: columnLayout
        x: 981
        width: 199
        spacing: 10
        flow: Flow.TopToBottom
        anchors.right: rectangle1.left
        anchors.rightMargin: 20
        anchors.bottom: rectangle2.top
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20

        Rectangle {
            id: rectangle
            width: 200
            height: 200
            color: "#ffffff"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

            Text {
                id: text1
                text: qsTr("Place holder for infor")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: rectangle4
            width: 200
            height: 96
            color: "#ffffff"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Text {
                id: text5
                text: qsTr("Place holder for infor")
                font.pixelSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }

        Rectangle {
            id: rectangle3
            width: 200
            height: 200
            color: "#ffffff"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Text {
                id: text4
                text: qsTr("Place holder for infor")
                font.pixelSize: 12
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    Frame {
        id: frame
        anchors.right: columnLayout.left
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: rectangle2.top
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
        wheelEnabled: true

        Button {
            id: hideDesignerButton
            x: 0
            y: 496
            text: qsTr("Hide designer")
        }

    }
}



