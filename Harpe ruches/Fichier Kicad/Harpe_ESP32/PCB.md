# Carte d'alimentation jusqu'à six harpes:

![This is an image](https://github.com/Ratamuse/Harpe/blob/main/Harpe%20ruches/Fichier%20Kicad/Harpe_ESP32/Pictures/PCB.jpg)



La carte doit être alimentée par une batterie 12V. Elle permet d'alimenter de manière cyclique jusqu'à six harpes afin d'économiser de l'énergie et moins soliciter les modules haute tension. 
La carte est équipée de deux connecteurs permettant de brancher:
* un capteur d'humidité SHT41 permettant de couper l'alimentation des harpes en cas de forte humidité.
* un capteur de luminosité permettant de couper les harpes la nuit. 

Les valeurs limites de luminosité, humidité, le nombre de harpes et le rapport cyclique d'alimentation sont modifiables via un serveur web embarqué. 
Pour y accéder il suffit d'appuyer deux secondes sur le bouton "WIFI" (sur la carte ou déporté). Le réseau "harpes" apparaitra comme point d'accès wifi. Le mot de passe pour s'y connecter est 123456789 
Une fois les valeurs modifiées, la carte redemarrera avec les nouveaux paramètres en appuyant sur le bouton "Enregistrer".

Les modules haute tension des harpes consommant en permanence 0.1A, cette manière de les alimenter permet de n'utiliser qu'une petite batterie de 12V 7AH et un panneau solaire de 10W. Un régulateur de charge solaire PWM de 12V, 5 ou 10A sera nécessaire pour recharger la batterie.  

![This is an image](https://github.com/Ratamuse/Harpe/blob/main/Harpe%20ruches/Montage%20%C3%A9lectrique/Exemple%20alimentation%20harpe.jpg)