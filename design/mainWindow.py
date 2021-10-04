
import sys
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from util.user import user
def main():
    app = QGuiApplication(sys.argv)
    con = user()
    engine = QQmlApplicationEngine()
    engine.quit.connect(app.quit)

    context = engine.rootContext()
    context.setContextProperty("con", con)

    #engine.load('QML\Inicio.qml')
    engine.load("QML\CrearCuenta.qml")
    #engine.load("QML\MenuPrincipal.qml")
    # engine.load("Depositar.qml")
    # engine.load("Retirar.qml")
    # engine.load("InformacionPersonal.qml")

    sys.exit(app.exec())