from util.data import obtenerUsers, addUserXML

#addUserXML('1001', 'Juan', 'Perez', 'Madrigal', '12', '12', '1999', '5912', '1000.00')
#addUserXML('1002', 'Agustin', 'Castillo', 'Munguia', '14', '03', '1999', '7100', '12.00')

lista = obtenerUsers()

print(lista[0].__str__())
print(lista[0].account.__str__())