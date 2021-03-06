import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 2.1 //ComboBox
import QtQuick.Dialogs 1.1

ApplicationWindow {
    id: ventanaCrearCuenta
    visible: true
    width: 1200
    height: 700 
    title: "Crear cuenta"

    Image { //Asignamos imagen de fondo
        sourceSize.width: parent.width
        sourceSize.height: parent.height
        source: "../Pictures/Background.jpeg"
        fillMode: Image.PreserveAspectCrop
    }

// -------------- Boton Salir -------------- //
    Button{
        id: returnCrearCuenta
        x: 10
        y: 10
        width: 30
        height: 30
        background: Rectangle {
            color: "transparent"
        }
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "../Pictures/Return.png"
            fillMode: Image.PreserveAspectCrop
        }
        MouseArea{
            width: 30
            height:30
            cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.Button
            onClicked: {
                stack.push("./Inicio.qml")
                ventanaCrearCuenta.visible = false
            }
        }
    }

    Rectangle¬†{ //Area de trabajo
        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }    
        width: 400
        height: 700
        color: "transparent"
        // border.color: "black"        

// -------------- Texto "Crear cuenta" -------------- //
        Rectangle { 
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            width: 300
            height: 40
            color: "transparent"
            Text {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 75
            text: "Crear una cuenta"
            font.pixelSize: 40
            color: "white"
            }
        }

// -------------- Input nombre -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 200
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
                id: nombre
                width: 300
                height: 40
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize:20
                color: "white"
                property string placeholderText: "Nombre(s)"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: nombre.placeholderText
                    color: "white"
                    visible: !nombre.text && !nombre.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Input apellido paterno -------------- //
        Rectangle { 
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 250
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
                id: apellidoPaterno
                width: 300
                height: 40
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize:20
                color: "white"
                property string placeholderText: "Apellido paterno"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: apellidoPaterno.placeholderText
                    color: "white"
                    visible: !apellidoPaterno.text && !apellidoPaterno.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Input apellido materno -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 300
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
                id: apellidoMaterno
                width: 300
                height: 40
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pixelSize:20
                color: "white"
                property string placeholderText: "Apellido materno"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: apellidoMaterno.placeholderText
                    color: "white"
                    visible: !apellidoMaterno.text && !apellidoMaterno.activeFocus // <----------- ;-)
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Input  NIP -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 350
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
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                echoMode: TextInput.Password
                font.pixelSize:20
                color: "white"
                property string placeholderText: "NIP"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: nip.placeholderText
                    color: "white"
                    visible: !nip.text && !nip.activeFocus // <----------- ;-)
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Input confirmar NIP -------------- //
        Rectangle {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 400
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
                id: confirmarnip
                width: 300
                height: 40
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                echoMode: TextInput.Password
                font.pixelSize:20
                color: "white"
                property string placeholderText: "Confirmar NIP"

                Text {
                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    text: confirmarnip.placeholderText
                    color: "white"
                    visible: !confirmarnip.text && !confirmarnip.activeFocus
                    font.pixelSize:20
                    opacity: 0.7
                }
            }
        }

// -------------- Fecha de nacimiento -------------- //
        Rectangle { 
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            y: 475
            width: 200
            height: 40
            color: "transparent"
            Text {
            anchors {
                verticalCenter: parent.verticalCenter
                // horizontalCenter: parent.horizontalCenter
            }
            text: "Fecha de nacimiento"
            font.pixelSize: 24
            color: "white"
            }
        }

// -------------- Combobox fecha de nacimiento -------------- //
        Rectangle{ //Fecha
            width: 400
            height: 40
            y: 525
            color:"transparent"
            
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            ComboBox { //Dia
                id: dia
                MouseArea{
                    width: 70
                    height:40
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
            }
                x: 30
                width: 70
                height: 40
                model: [ "01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
            }

            ComboBox { //Mes
                id: mes
                MouseArea{
                    width: 125
                    height:40
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
                }
                x: 125
                width: 130
                height: 40
                model: [ "Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre" ]
            }

            ComboBox { //A√Īo
                function comboBoxNum(){var array = []; for(var i = 1950; i < 2022; i++){array.push(i);} return array;}
                id: anio
                MouseArea{
                    width: 275
                    height:40
                    cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.NoButton
                }
                x: 275
                width: 90
                height: 40
                model: comboBoxNum()
                currentIndex: 71
            }
        }

        MessageDialog {
                id: messageDialog
                title: "Aviso"
                text: "Error"
                onAccepted: {
                    messageDialog.close()
                }
                Component.onCompleted: visible = false
            }

            MessageDialog {
                id: messageDialogt
                title: "Aviso"
                text: "Error"
                onAccepted: {
                    messageDialogt.close()
                    stack.push("./Inicio.qml")
                    ventanaCrearCuenta.visible = false
                }
                Component.onCompleted: visible = false
            }

// -------------- Boton Enviar -------------- //
        Rectangle {
            anchors {
                    horizontalCenter: parent.horizontalCenter
            }
            MouseArea{
                width: 300
                height:40
                cursorShape: Qt.PointingHandCursor; acceptedButtons: Qt.Button
                id: mouser
                anchors.fill: parent
                hoverEnabled: true

                onClicked: {
                    if(nombre.text != "" && apellidoPaterno.text != "" && apellidoMaterno.text != "" && nip.text != "" && confirmarnip.text != "" && nip.text == confirmarnip.text){

                        var result = con.addClient(nombre.text, apellidoPaterno.text, apellidoMaterno.text, dia.currentIndex + 1, mes.currentIndex + 1, anio.currentValue, nip.text)
                        if (result){
                            messageDialogt.text= "Usuario agregado y debes\n\n guardalo es importante para poder usarlo-> "+ con.getUltimoIds()
                            messageDialogt.visible = true
                        }
                    }
                }
            }
            y: 600
            width: 100
            height: 40
            color: mouser.containsMouse ? "#00BB2D" : "#424B54"
                Behavior on color {
                    ColorAnimation {duration: 250}
                }
            radius: 5

            Text {
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
                text: "Enviar"
                font.pixelSize: 24
                color: "white"
            }
        }
    }
}