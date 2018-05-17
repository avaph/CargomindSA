import QtQuick 2.0

Component {

      id: listDelegate
        width: 80
         height: 80
         Column {
             spacing: 5
             Image {
                 source: avatarImage.source
             }

             Text {
                 text: name
                 anchors.verticalCenter: itemImage.verticalCenter
                 font.bold: true
             }
}
}
