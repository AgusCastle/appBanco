import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.1

ApplicationWindow {
    property string nombre: "Raul"

    id: ventanaInicio
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
    
    StackView{
        id: stack
    }

    Rectangle{ //Area de trabajo real
        anchors {
            horizontalCenter: parent.horizontalCenter
        }    
        width: 400
        height: 700
        color: "transparent"
        // border.color: "black"

// -------------- Logotipo -------------- //
        Rectangle{
            width:400
            height: 300
            y: 75
            color: "transparent"
            Image {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                } 
                width:225
                height:130
                source: "../Pictures/BCRR_Logo.png"
            }
        }

// -------------- Texto "Bienvenido" -------------- //
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
                text: "Bienvenido"
                font.pixelSize: 40
                color: "white"
            }
        }

// -------------- Input numero de cuenta -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 335
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
                id: numeroCuenta
                width: 300
                height: 40
                font.pixelSize:20
                color: "white"
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                property string placeholderText: "Numero de cuenta"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: numeroCuenta.placeholderText
                    color: "white"
                    visible: !numeroCuenta.text && !numeroCuenta.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Input NIP -------------- //
        Rectangle {
            anchors {
                    horizontalCenter: parent.horizontalCenter
            }
            y: 385
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
                id: nip
                width: 300
                height: 40
                font.pixelSize:20
                color: "white"
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                echoMode: TextInput.Password

                property string placeholderText: "NIP"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: nip.placeholderText
                    color: "white"
                    visible: !nip.text && !nip.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                    
                }

                onTextChanged: {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            }
        }

// -------------- Boton Enviar -------------- //
        Rectangle {
            anchors {
                    horizontalCenter: parent.horizontalCenter
            }
            y: 470
            width: 100
            height: 40
            color: mouser.containsMouse ? "red" : "#424B54"
                Behavior on color {
                    ColorAnimation {duration: 250}
                }
                MouseArea {
                    id: mouser
                    anchors.fill: parent
                    hoverEnabled: true
                }

            radius: 5

            MessageDialog {
                id: messageDialog
                title: "Aviso"
                text: "Error"
                onAccepted: {
                    messageDialog.close()
                }
                Component.onCompleted: visible = false
            }
            
            MouseArea{
                width: 100
                height:40
                cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.Button

                onClicked:{
                    var resultado = con.sessionClient(numeroCuenta.text, nip.text)
                    if (resultado == true){
                        stack.push("./MenuPrincipal.qml")
                        ventanaInicio.visible = false
                    }
                    else{
                        messageDialog.text= "NIP o cuenta incorrecta"
                        messageDialog.visible = true
                    }
                }
            }

            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Entrar"
                font.pixelSize: 24
                color: "white"
            }
        }

// -------------- Crear cuenta -------------- //
        Button {
            anchors {
                    horizontalCenter: parent.horizontalCenter
            }
            y: 650
            width: 100
            height: 40
            background: Rectangle{
                color: "transparent"
            }

            MouseArea{
                width: 100
                height:40
                id: mousers
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.Button
                onClicked: {
                    stack.push("./CrearCuenta.qml")
                    ventanaInicio.visible = false
                }
            }

            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Crear una cuenta"
                font.pixelSize: 18
                color: mousers.containsMouse ? "#424B54" : "white"
                Behavior on color {
                    ColorAnimation {duration: 250}
                }
            }
        }
    }
}