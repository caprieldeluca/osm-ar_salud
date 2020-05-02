
import csv
import re


def formatear_archivo(archivo):
    filas = []
    with open(archivo, encoding='utf-8') as csv_file:
        csv_reader = csv.DictReader(csv_file)
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                print(f'Column names are {", ".join(row)}')
                line_count += 1
            else:
                nombre = row['Nombre'].title()
                operador = row['Dependencia']
                domicilio = row['Domicilio']
                dom_entre = domicilio.lower().split('entre')
                dom_split = re.split('\s+', dom_entre[0])
                i = 1
                direccion = ''
                numero = 0

                for x in dom_split:
                    if i == len(dom_split) and x.isdigit():
                        numero = x
                    else:
                        direccion += f'{x} '
                    i += 1

                if len(dom_entre) > 1:
                    entre = dom_entre[1]
                else:
                    entre = ''
                cp = row['CP']
                telefono = row['Teléfono']
                print(f'Nombre: {nombre} Operador: {operador} Domicilio: {direccion} Entre: {entre} Numero: {numero}')
                filas.append(
                    [35, 1, 'hospital', 'hospital', nombre, operador, direccion, numero,
                     'yes' if numero == 0 else '', entre, cp, telefono, operador, '', '', '']
                )
                line_count += 1
        cabecera = 'departamento_fid	departamento_prioridad	amenity	healthcare	name	operator	addr:street	addr:housenumber	addr:nohousenumber	addr:full	addr:postcode	phone	operator:type	wikidata	wikipedia	ref:sisa_refes'.split('\t')

        with open('reformateado.csv', mode='w', encoding='utf-8', newline='\n') as reformateado:
            reformateado_writer = csv.writer(reformateado, delimiter=',', quotechar='"')
            reformateado_writer.writerow(cabecera)
            print(cabecera)
            for fila in filas:
                reformateado_writer.writerow(fila)

if __name__ == "__main__":
    archivo = "035-rio_cuarto-crudo.csv"
    formatear_archivo(archivo)