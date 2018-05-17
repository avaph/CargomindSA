import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4


Rectangle {
    id: planningSceneId
    visible: true
    color: "blue"

    Text {
           id: label
           anchors.centerIn: parent
           text: "Click Me!"
           font.pointSize: 12
           color: "white"
       }
    }

