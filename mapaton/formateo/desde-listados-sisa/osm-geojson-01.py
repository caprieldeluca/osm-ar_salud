import pandas as pd

datos = pd.read_csv('listado_sisa_1588807987389_OK.csv', delimiter=";", encoding="latin-1") # encoding='utf-8'
print(list(datos.columns.values))

print (datos)

##TEMAS A RESOLVER: EN ETIQUETAS DE OSM:
##    
##INICIALES EN LOS NOMBRES
##TELEFONOS: +549... FORMATO DE EDIQUETA OSM
##DIRECCIONES: PARSEAR == SCANNEAR PARA RESPETAR EL FORMATO DE LA DIRECCION
