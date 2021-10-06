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

    engine.load('QML/Inicio.qml')

    sys.exit(app.exec())