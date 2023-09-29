## Testboard V2.2 ESP32

![This is an image](https://github.com/Ratamuse/Testboard_ESP32/blob/master/Pictures/TestboardV2.2_Kicad.jpg)


## Carte multi-usage basée sur le module ESP-WROOM-32E:

- Connecteur USB-C

- Chargeur solaire MPPT basé sur la puce CN3791:  http://www.consonance-elec.com/pdf/datasheet/DSE-CN3791.pdf

- Connecteur batterie JST-PH 2mm avec protection (surcharge ou décharge profonde)

- Connecteur batterie JST-PH 2mm sans protection (pour batterie déjà protégée)

- Bouton on/off LTC2954 avec interrupt sur µP (On/Off de l'ESP32 et GPIO de l'interrupt utilisable pour des actions): https://www.analog.com/media/en/technical-documentation/data-sheets/2954fb.pdf

- Capteur température/humidité SHT41: https://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/2_Humidity_Sensors/Datasheets/Sensirion_Humidity_Sensors_SHT4x_Datasheet.pdf
- 10 optocoupleurs pour interrupteurs à contacts secs (pour domotiser volets roulants, télécommandes diverses) ou au choix 10 GPIO dispo avec au choix alim 3.3V ou "5V" (Vbat (entre 3.2 et 4.2V) ou Vbus (5V)) pour ajouter des modules.

- Chargeur Li-io/Li-Po MCP73831 via port USB-C

- Connecteur JST-PH 2mm (1x4) I2C

- Connecteur JST-PH 2mm (1x4) sur 2 GPIO + choix 3.3V ou 5V

- Connecteur JST-PH 2mm (1x3) sur 1 GPIO (que j'utilise pour piloter des leds neopixel)

Inspiration des travaux de Lilygo, Waveshare, GreatScoot.

Motivation et champs des possibles donnés par P. Demerliac et sa chaine Youtube Cyrob: https://www.youtube.com/channel/UC5QPFDZ3Y4ylkkGJc6Y1OOA  

Initiation à la bricole par P. W. Trainer

Prochaine étape, améliorer le hardaware du GNUVario-E

