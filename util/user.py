from models.accounts import account
from models.clients import client
from util.data import obtenerUsers, addUserXML, getUltimoId, getObjectClient, updateValue
from PyQt5 import  QtGui, QtWidgets, QtCore
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *

class user(QObject):

	def __init__(self):
		super().__init__()
		self.client_u = None

	@pyqtSlot(str, str, result=bool)
	def sessionClient(self, id='0', nip= '0'):
		listClient = obtenerUsers()
		for clients in listClient:
			if id == clients.account.numberAcc:
				self.client_u = clients
				break
				
		if not self.client_u:
			return False

		if nip == self.client_u.account.nip:
			return True
		else:
			return False
	
	@pyqtSlot(str, str, str, str, str, str, str,result=bool)
	def addClient(self, name='', lastname='', lastlname='', day='', mouth='', year='', nip=''):
		accounts = int(getUltimoId()) + 1
		addUserXML(str(accounts), name, lastname, lastlname, day, mouth, year, nip, '0.00')
		return True

	@pyqtSlot(str, result=QVariant)
	def getObjectModelClient(self,idb):
		return QVariant(getObjectClient(idb))
	
	@pyqtSlot(result=str)
	def getNameClient(self):
		return self.client_u.name

	@pyqtSlot(result=str)
	def getBalance(self):
		return '${:.2f}'.format(self.client_u.account.balance)
	
	@pyqtSlot(str, result=bool)
	def makeDeposit(self, cash):
		try:
			self.client_u.account.addMoney(float(cash))
			updateValue(self.client_u.account.numberAcc, '+', float(cash))
			return True
		except:
			return False
		
	@pyqtSlot(str, result=bool)
	def makeRetire(self, cash):
		try:
			cashes = float(cash)
			if self.client_u.account.balance - cashes > 0:
				self.client_u.account.delMoney(cashes)
				updateValue(self.client_u.account.numberAcc, '-', cashes)
				return True
			else:
				return False
		except:
			return False

	@pyqtSlot(result=str)
	def nameComplete(self):
		return '{} {} {}'.format(self.client_u.name, self.client_u.lastname, self.client_u.lastlname)
	
	@pyqtSlot(result=str)
	def getYears(self):
		return '{} años'.format(self.client_u.years)
	
	@pyqtSlot(result=str)
	def getRFC(self):
		return '{}'.format(self.client_u.rfc)
	
	@pyqtSlot(result=str)
	def getUltimoIds(self):
		return str(getUltimoId())
	