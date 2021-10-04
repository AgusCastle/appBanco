class account:
    def __init__(self, number, nip, cash):
        self._numberAcc = number
        self._balance = cash
        self._nip = nip

    @property
    def numberAcc(self):
        return self._numberAcc
    
    @property
    def nip(self):
        return self._nip
    
    @property
    def balance(self):
        return self._balance
    
    def addMoney(self, cash):
        self._balance += cash
    
    def delMoney(self, cash):
        self._balance -= cash
    
    def __str__(self):
        message = ''
        message += 'Numero de cuenta: {}'.format(self._numberAcc)
        message += '\nSaldo disponible: {:.2f}'.format(self._balance)

        return message

if __name__ == '__main__':
    cuenta = account('10001', '5050', 340.30)
    print(cuenta.__str__())
    cuenta.addMoney(500.34)
    print(cuenta.__str__())




        