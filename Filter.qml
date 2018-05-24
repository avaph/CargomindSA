import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "Theme" as Theme

Rectangle {
    color: "transparent"
    border.color: "#50FFFFFF"

    RowLayout {
        id: rowId
        anchors.left: parent.left
        anchors.leftMargin:5

        property bool checkValue: true

        Theme.CheckBox {
            id: allBoxId
            text: qsTr("Show All")
            checked: checkValue
        }

        Theme.CheckBox {
            id: designerBoxId
            text: qsTr("Designer")
            checked: checkValue
        }


        Theme.CheckBox {
            id: engineerBoxId
            text: qsTr("Engineer")
            checked: checkValue
        }
        Theme.CheckBox {
            id: businessId
            text: qsTr("Business")
            checked: checkValue
        }
    }
}






