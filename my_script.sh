#!/bin/bash 

# Kontrollera om mappen logs_backup finns 
if [ ! -d "logs_backup" ]; then 
    # Skapa mappen om den inte finns 
    mkdir logs_backup 

    echo "Mappen logs_backup har skapats." 
else 

    echo "Mappen logs_backup finns redan." 

fi 
# Skapa 5 loggfiler 
for i in {1..5}; do 
    touch "logfile_$i.log" 
    echo "Loggfil logfile_$i.log har skapats." 
done 
# Kopiera alla .log-filer till mappen logs_backup 

cp *.log logs_backup/ 
# Bekräftelsemeddelande 

echo "Alla loggfiler har kopierats till mappen logs_backup." 
