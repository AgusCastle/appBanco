from models.accounts import account
from models.clients import client
from util.data import obtenerUsers, addUserXML, getUltimoId, getObjectClient
from PyQt5 import  QtGui, QtWidgets, QtCore
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *

class user(QObject):
	@pyqtSlot(str, str, result=bool)
	def sessionClient(self, id='0', nip= '0'):
		listClient = obtenerUsers()
		client_u = None
		for clients in listClient:
			if id == clients.account.numberAcc:
				client_u = clients
				break
				
		if not client_u:
			return False

		if nip == client_u.account.nip:
			return True
		else:
			return False
	
	@pyqtSlot(str, str, str, str, str, str, str,result=bool)
	def addClient(self, name='', lastname='', lastlname='', day='', mouth='', year='', nip=''):
		accounts = int(getUltimoId()) + 1
		print(accounts)
		addUserXML(str(accounts), name, lastname, lastlname, day, mouth, year, nip, '0.00')
		return True

	@pyqtSlot(str, result=QVariant)
	def getObjectModelClient(self,idb):
		return QVariant(getObjectClient(idb))
