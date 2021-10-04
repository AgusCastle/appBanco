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
    source: "Images/Background.jpeg"
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
        width: 800
        height: 700
        color: "transparent"

// -------------- Texto "Bienvenido" -------------- //
        Rectangle{
            y: 100
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Bienvenido, Luis"
                font.pixelSize: 40
                color: "white"
            }
        }
        
// -------------- Texto "Saldo disponible" -------------- //
        Rectangle{
            y: 250
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Saldo disponible:"
                font.pixelSize: 35
                color: "white"
            }
        }

// -------------- Texto "Saldo" -------------- //
        Rectangle{
            y: 300
            height:40
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            Text {
                height:40
                anchors {
                    horizontalCenter: parent.horizontalCenter
                }
                text: "$ 4,000.00"
                font.pixelSize: 35
                color: "white"
            }
        }

// -------------- Boton Depositar -------------- //
        Rectangle{
            y: 450
            x: 100
            Rectangle{
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
                MouseArea{
                    width: 125
                    height:125
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
                }
            }
            Rectangle{
                height:25
                x: 75
                y: 180
                Text {
                    height:25
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: "Depositar"
                    font.pixelSize: 25
                    color: "white"
                }
            }
        }

// -------------- Boton Retirar -------------- //
        Rectangle{
            y: 450
            x: 325
            Rectangle{
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
                    source: "Images/Transfer.png"
                }
                MouseArea{
                    width: 125
                    height:125
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
                }
            }
            Rectangle{
                height:25
                x: 75
                y: 180
                Text {
                    height:25
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: "Depositar"
                    font.pixelSize: 25
                    color: "white"
                }
            }
        }    

// -------------- Boton Informacion -------------- //
        Rectangle{
            y: 450
            x: 550
            Rectangle{
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
                    source: "Images/Information.png"
                }
                MouseArea{
                    width: 125
                    height:125
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
                }
            }
            Rectangle{
                height:25
                x: 75
                y: 165
                Text {
                    height:25
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: "Informacion\n   Personal"
                    font.pixelSize: 25
                    color: "white"
                }
            }
        }    
    }
}