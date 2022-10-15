import QtQuick 2.15
import QtQuick.Controls 2.15
<<<<<<< HEAD

=======
import QtGraphicalEffects 1.15
>>>>>>> a0bc0b29d7c041fcf7fc70f29863831e9a14246a

Button {
    id: button

    // Custom Properties
    property color colorDefault: "#4891d9"
    property color colorMouseOver: "#55AAFF"
    property color colorPressed: "#3F7EBD"
<<<<<<< HEAD
    property string title: ""


=======
>>>>>>> a0bc0b29d7c041fcf7fc70f29863831e9a14246a

    QtObject{
        id: internal

        property var dynamicColor: if(button.down){
                                       button.down ? colorPressed : colorDefault
                                   }else{
                                       button.hovered ? colorMouseOver : colorDefault
                                   }
    }

<<<<<<< HEAD

    text: qsTr(button.title)
=======
    text: qsTr("Button")
>>>>>>> a0bc0b29d7c041fcf7fc70f29863831e9a14246a
    contentItem: Item{
        Text {
            id: name
            text: button.text
            font: button.font
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    background: Rectangle{
        color: internal.dynamicColor
        radius: 10
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:200}
}
##^##*/
