import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4
import Qt.labs.calendar 1.0
import Qt.labs.folderlistmodel 2.2
import QtQuick.Extras 1.4

Window {
    /*list of background colours*/

    property color windowBackground: "#FF323232"
    property color boxlistBackground: "#FF404040"
    property color infoBackground: "#FF444444"
    property color sidebarBackground: "#FF484848"

    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Cargomind Standalone")
    visibility: "Maximized"
    color: windowBackground
    
    Rectangle {
        id: sidebarId
        width: 100
        height: parent.height
        color: sidebarBackground
        anchors.right: parent.right
        anchors.rightMargin: 0

        Sidebar {
            anchors.fill: parent
        }
    }

    Rectangle {
        id: boxlistId
        height: 160
        color: boxlistBackground
        anchors.bottom: parent.bottom
        anchors.right: sidebarId.left
        anchors.left: parent.left
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    RowLayout {
        id: filterrowId
        height: 30
        width: boxlistId.width
        anchors.bottom: boxlistId.top
        anchors.left: parent.left
        anchors.right: sidebarId.left
        anchors.bottomMargin: 20
        anchors.leftMargin: 20
        anchors.rightMargin: 20

        Rectangle {
            color: "transparent"
            border.color: "#50FFFFFF"
            anchors.fill: parent
        }
    }

    StackView {
        id: stackviewId
        width: 260
        anchors.right: sidebarId.left
        anchors.rightMargin: 20
        anchors.bottom: filterrowId.top
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
    }

    Frame {
        id: frameId
        anchors.right: stackviewId.left
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: filterrowId.top
        anchors.bottomMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20
    }
}



