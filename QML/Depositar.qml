import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1200
    height: 700 
    title: "Depositar"

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
            source: "../Pictures/Return.png"
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

// -------------- Texto "Depositar" -------------- //
        Rectangle{
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 100
            height:40
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Depositar"
                font.pixelSize: 40
                color: "white"
            }
        }

// -------------- Imagen depositar -------------- //
        Rectangle{
            anchors{
                horizontalCenter: parent.horizontalCenter
            }
            y:175
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
                source: "Images/Deposit.png"
            }
        }

// -------------- Texto "Monto a depositar" -------------- //
        Rectangle{
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 375
            height:40
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Ingrese el monto a depositar:"
                font.pixelSize: 30
                color: "white"
            }
        }

// -------------- Input monto a depositar -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 435
            width: 300
            height: 40
            color: "transparent"
            border.color:"#424B54"
            border.width: 2.5
            radius: 5

            MouseArea{
                width: 300
                height:40
                cursorShape: Qt.IBeamCursor
            }

            TextInput {
                id: montoDeposito
                width: 300
                height: 40
                font.pixelSize:20
                color: "white"

                property string placeholderText: "Monto:"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: montoDeposito.placeholderText
                    color: "white"
                    visible: !montoDeposito.text && !montoDeposito.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Boton confirmar -------------- //
        Rectangle {
            anchors {
                    horizontalCenter: parent.horizontalCenter
            }
            MouseArea{
                width: 300
                height:40
                cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
            }
            y: 550
            width: 150
            height: 40
            color: "#424B54"
            radius: 5

            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Confirmar"
                font.pixelSize: 20
                color: "white"
            }
        }
    }
}