from xml.dom import minidom
from xml.etree.ElementTree import parse
import xml.etree.cElementTree as element
from models.clients import client, Fecha
from models.accounts import account
#Modificar

def addUserXML(account, name, lastname, lastlname, day, mouth, year, nip, balance):

    et = parse('public/datasource.xml')
    root = et.getroot()
    doc = element.SubElement(root, 'users')

    usr = element.SubElement(doc, 'user',id = account)
    element.SubElement(usr, 'name').text = name
    element.SubElement(usr, 'lastname').text = lastname
    element.SubElement(usr, 'lastlname').text = lastlname
    element.SubElement(usr, 'day').text = day
    element.SubElement(usr, 'mouth').text = mouth
    element.SubElement(usr, 'year').text = year
    element.SubElement(usr, 'nip').text = nip
    element.SubElement(usr, 'balance').text = balance

    arbol = element.ElementTree(root)
    arbol.write('public/datasource.xml')

def obtenerUsers():
    info = minidom.parse('public/datasource.xml')
    users = info.getElementsByTagName('user')

    listUsers = []

    for user in users:
        ids = user.getAttribute('id')
        nip = user.getElementsByTagName('nip')[0].firstChild.data
        balance = user.getElementsByTagName('balance')[0].firstChild.data
        account_u = account(str(ids), str(nip), float(balance))

        name = user.getElementsByTagName('name')[0].firstChild.data
        lastname = user.getElementsByTagName('lastname')[0].firstChild.data
        lastlname = user.getElementsByTagName('lastlname')[0].firstChild.data
        day = user.getElementsByTagName('day')[0].firstChild.data
        mouth = user.getElementsByTagName('mouth')[0].firstChild.data
        year = user.getElementsByTagName('year')[0].firstChild.data

        client_u = client(str(name), str(lastname), str(lastlname), Fecha(int(day), int(mouth), int(year)), account_u)
        listUsers.append(client_u)
    return listUsers

def getUltimoId():
    listU = obtenerUsers()
    size = len(obtenerUsers()) - 1

    return listU[size].account.numberAcc

def getObjectClient(idb):
    listU = obtenerUsers()
    for usr in listU:
        if idb == usr.account.numberAcc:
            return usr.toDicctionary()
    return None