#/bin/bash
#Establecemos directorios de origen y destino
ORIGEN=/home/usuario/Descargas
DESTINO=/home/usuario/Documentos
#Nos posicionamos en el de origen
cd $ORIGEN
#De todos los archivos, solo queremos aquel que se #llame ARCHIVO
for ARCHIVO in *
do
 ARCH-DESTINO= “$DESTINO/$ARCHIVO”
 # -f nos filtra los archivos regulares, ya que de  
#nada nos sirven los directorios. –nt nos filtra 
#los archivos “más nuevos” que aquellos 
#encontrados en la carpeta destino
 if [ -f $ARCHIVO ] && [ $ARCHIVO –nt $ARCH-DESTINO ]; then
     echo “Copiando $ARCHIVO…”
     #copiamos el archive con cp
     cp $ARCHIVO $ARCH-DESTINO
 fi
done
#Hacemos cd para salir de la carpeta de origen
cd
