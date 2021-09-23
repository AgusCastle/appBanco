from datetime import datetime
from random import choice
from string import ascii_letters, digits

class client:
	"""docstring for client"""
	def __init__(self, name, lastname, lastlname, datebirth, account):
		self._name = name
		self._lastname = lastname
		self._lastlname = lastlname
		self._datebirth = datebirth

		self._account = account
		self._rfc = self.generateRFC()
		self._years = self.calculatedYears()

	@property
	def name(self):
		return self._name

	@name.setter
	def name(self, names):
		self._name = names

	@property
	def lastname(self):
		return self._lastname

	@lastname.setter
	def lastname(self, lastname):
		self._lastname = lastname

	@property
	def lastlname(self):
		return self._lastlname

	@lastlname.setter
	def lastlname(self, lastlname):
		self._lastlname = lastlname

	@property
	def datebirth(self):
		return self._datebirth

	@datebirth.setter
	def datebirth(self, datebirth):
		self._datebirth = datebirth

	###### getters other param ######

	@property
	def account(self):
		return self._account

	@property
	def rfc(self):
		return self._rfc

	@property
	def years(self):
		return self._years

	###### Methods ########

	def calculatedYears(self):
		old = datetime.now() - self._datebirth
		return int(old.days / 365)

	def generateRFC(self):

		rfc = ''

		rfc += self._lastname[0]

		def firstVocal(lastname):
			vocal = ''
			for index, char in enumerate(lastname):
				if char.upper() in ['A', 'E', 'I', 'O', 'U'] and index != 0:
					vocal = char
					break
			return vocal

		rfc += firstVocal(self._lastname)
		rfc += self._lastlname[0]
		rfc += self._name[0]
		rfc += self._datebirth.strftime('%y%m%d')

		def generateHomoclave():
			return ''.join(choice(ascii_letters + digits) for _ in range(3))

		rfc += generateHomoclave()

		return rfc.upper()

	def __str__(self):
		message1 = ('Nombre del cliente: {}\n'.format(self._name + ' '+ self._lastname + ' ' + self._lastlname))
		message1 += ('Fecha de nacimiento: {}\n'.format(self._datebirth.strftime('%d/%m/%Y')))
		message1 += ('RFC: {}\n'.format(self._rfc))
		message1 += ('Edad: {}\n'.format(self._years))
		print(message1)



if __name__ == '__main__':
	
	obj = client('Juan', 'Alvarez', 'Garcia', datetime(2003, 4, 17), '000111213')
	obj.__str__()

