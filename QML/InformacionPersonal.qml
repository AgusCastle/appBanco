import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1200
    height: 700 
    title: "Cajero Automatico"

    Image { //Asignamos imagen de fondo
    sourceSize.width: parent.width
    sourceSize.height: parent.height
    source: "../Pictures/Background.jpeg"
    fillMode: Image.PreserveAspectCrop
    }

    // -------------- Boton Salir -------------- //
    Rectangle{
        id: exitMenuPrincipal
        x: 10
        y: 10
        width: 30
        height: 30
        color: "transparent"
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "Images/Exit.png"
            fillMode: Image.PreserveAspectCrop
        }
        MouseArea{
            width: 30
            height:30
            cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
        }
    }

    Rectangle { //Area de trabajo
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }    
        width: 400
        height: 700
        color: "transparent"

// -------------- Texto "Informacion personal" -------------- //
        Rectangle{
            y: 50
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Informacion personal"
                font.pixelSize: 40
                color: "white"
            }
        }

// -------------- Imagen informacion -------------- //
        Rectangle{
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            y:130
            width: 150
            height: 150
            radius: 100
            color: "#FBD1A2"
            Image {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                } 
                width:110
                height:110
                source: "../Pictures/Information.png"
            }
        }

// -------------- Texto "Nombre" -------------- //
        Rectangle{
            y: 310
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Nombre: "
                font.pixelSize: 25
                color: "white"
            }
        }

// -------------- Nombre -------------- //
        Rectangle{
            y: 350
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Luis Esteban Acevedo Bringas"
                font.pixelSize: 25
                color: "white"
            }
        }

// -------------- Texto "Edad" -------------- //
        Rectangle{
            y: 430
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Edad: "
                font.pixelSize: 25
                color: "white"
            }
        }

// -------------- Edad -------------- //
        Rectangle{
            y: 470
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "22 años"
                font.pixelSize: 25
                color: "white"
            }
        }

// -------------- Texto "RFC" -------------- //
        Rectangle{
            y: 550
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "RFC: "
                font.pixelSize: 25
                color: "white"
            }
        }

// -------------- RFC -------------- //
        Rectangle{
            y: 590
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "AEBK990215"
                font.pixelSize: 25
                color: "white"
            }
        }
    }
}