//####################### Ratamuse #######################/
//################## ratamuse.pf@googlemail.com ##################/
//######################### Septembre 2023 ######################/
//#################### ESP32 Devboard 3.3V  ####################/
//######################## Version 1.0.0 #######################/


#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <Preferences.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

const char* ssid = "harpe";
const char* password = "123456789";

#include "Adafruit_VEML7700.h"
#include "SensirionI2CSht4x.h"

Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

SensirionI2CSht4x sht4x;
uint16_t error0;
float temperature0;
float humidity0;
float hum_max = 90;
float lux_min = 10;
char errorMessage[256];

WebServer server(80);

Preferences preferences;

#define SDA_PIN 21
#define SCL_PIN 22
#define harpe1 19
#define harpe2 18
#define harpe3 17
#define harpe4 16
#define harpe5 4
#define harpe6 13
#define wifi 27
int delayTime = 1000; // Nouvelle variable globale

#define uS_TO_S_FACTOR 1000000ULL
#define TIME_TO_SLEEP 600

bool startWebServer = false;

// États des cases à cocher
bool activateHarpe1 = true;
bool activateHarpe2 = true;
bool activateHarpe3 = true;
bool activateHarpe4 = true;
bool activateHarpe5 = true;
bool activateHarpe6 = true;

// Fonction pour surveiller l'état de la broche WiFi
void checkWiFiPin(void * parameter) {
  for (;;) {
    if (digitalRead(wifi) == LOW) {
      ESP.restart();
    }
    delay(100);
  }
}

void savePreferences() {
  preferences.begin("my-app", false);
  preferences.putFloat("hum_max", hum_max);
  preferences.putFloat("lux_min", lux_min);
  preferences.putInt("delayTime", delayTime); // Enregistrer delayTime
  preferences.putBool("harpe1", activateHarpe1);
  preferences.putBool("harpe2", activateHarpe2);
  preferences.putBool("harpe3", activateHarpe3);
  preferences.putBool("harpe4", activateHarpe4);
  preferences.putBool("harpe5", activateHarpe5);
  preferences.putBool("harpe6", activateHarpe6);
  preferences.end();

  // Redémarrer l'ESP32
  ESP.restart();
}
void loadPreferences() {
  preferences.begin("my-app", false);
  hum_max = preferences.getFloat("hum_max", 90.0);
  lux_min = preferences.getFloat("lux_min", 10.0);
  delayTime = preferences.getInt("delayTime", 1000); // Charger delayTime
  activateHarpe1 = preferences.getBool("harpe1", true);
  activateHarpe2 = preferences.getBool("harpe2", true);
  activateHarpe3 = preferences.getBool("harpe3", true);
  activateHarpe4 = preferences.getBool("harpe4", true);
  activateHarpe5 = preferences.getBool("harpe5", true);
  activateHarpe6 = preferences.getBool("harpe6", true);
  preferences.end();
}

void handleRoot() {
  String html = "<html><head><meta name='viewport' content='width=device-width, initial-scale=1'><style>body {background-color: #fffacd; color: #000;} h1 {color: #daa520; text-align: center;} form {background-color: #f0e68c; padding: 20px; border-radius: 15px; max-width: 90%; margin: auto;} input[type=submit] {background-color: #daa520; color: white; border: none; padding: 10px 20px; text-decoration: none; margin: 4px 2px; cursor: pointer; border-radius: 4px;} input[type='checkbox'] {transform: scale(1.2);} .form-group {display: flex; justify-content: space-between;} .form-group label {flex: 1;} .form-group input[type='number'] {flex: 2;}</style></head><body>";
  html += "<svg height='150' width='100%'>";
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 40; col++) {
      int x = 47.5 * col + (row % 2 == 0 ? 0 : 23.5) + col; // 1 pixel gap
      int y = 41 * row + row; // 1 pixel gap
      html += "<polygon points='" + String(x+2.5) + "," + String(y+2.5) + " " + String(x+25) + "," + String(y+15) + " " + String(x+25) + "," + String(y+40) + " " + String(x+2.5) + "," + String(y+52) + " " + String(x-20) + "," + String(y+40) + " " + String(x-20) + "," + String(y+15) + "' style='fill:#8b4513;stroke:#000000;stroke-width:1' />";
      html += "<polygon points='" + String(x) + "," + String(y) + " " + String(x+22.5) + "," + String(y+12.5) + " " + String(x+22.5) + "," + String(y+37.5) + " " + String(x) + "," + String(y+49.5) + " " + String(x-22.5) + "," + String(y+37.5) + " " + String(x-22.5) + "," + String(y+12.5) + "' style='fill:#daa520;stroke:#000000;stroke-width:1' />";
    }
  }
  html += "</svg>";
  html += "<h1>Gestion des harpes</h1>"; // Titre ajouté ici
  html += "<h2>Luminosit&eacute: " + String(lux, 2) + " lux</h2>";
  html += "<h2>Humidit&eacute: " + String(humidity0, 2) + "</h2>";
  html += "<form action='/save' method='post'>";
  html += "<div class='form-group'><label>Humidit&eacute Max:</label> <input type='number' step='0.1' name='hum_max' value='" + String(hum_max) + "'></div>";
  html += "<div class='form-group'><label>Luminosit&eacute Min:</label> <input type='number' step='0.1' name='lux_min' value='" + String(lux_min) + "'></div>";
  html += "<div class='form-group'><label>Temps d'alim harpe :</label> <input type='number' name='delayTime' value='" + String(delayTime) + "'></div>"; // Nouveau champ de formulaire pour delayTime
  html += "<label for='harpe1'>Harpe 1</label> <input type='checkbox' name='harpe1'";
  html += activateHarpe1 ? " checked" : "";
  html += "><br>";
  html += "<label for='harpe2'>Harpe 2</label> <input type='checkbox' name='harpe2'";
  html += activateHarpe2 ? " checked" : "";
  html += "><br>";
  html += "<label for='harpe3'>Harpe 3</label> <input type='checkbox' name='harpe3'";
  html += activateHarpe3 ? " checked" : "";
  html += "><br>";
  html += "<label for='harpe4'>Harpe 4</label> <input type='checkbox' name='harpe4'";
  html += activateHarpe4 ? " checked" : "";
  html += "><br>";
  html += "<label for='harpe5'>Harpe 5</label> <input type='checkbox' name='harpe5'";
  html += activateHarpe5 ? " checked" : "";
  html += "><br>";
  html += "<label for='harpe6'>Harpe 6</label> <input type='checkbox' name='harpe6'";
  html += activateHarpe6 ? " checked" : "";
  html += "><br>";
  html += "<input type='submit' value='Sauvegarder'>";
  html += "</form></body></html>";
  server.send(200, "text/html", html);
}





void handleSave() {
  hum_max = server.arg("hum_max").toFloat();
  lux_min = server.arg("lux_min").toFloat();
  delayTime = server.arg("delayTime").toInt(); // Récupérer la nouvelle valeur de delayTime

  // Récupérer l'état des cases à cocher
  activateHarpe1 = server.hasArg("harpe1");
  activateHarpe2 = server.hasArg("harpe2");
  activateHarpe3 = server.hasArg("harpe3");
  activateHarpe4 = server.hasArg("harpe4");
  activateHarpe5 = server.hasArg("harpe5");
  activateHarpe6 = server.hasArg("harpe6");

  // Enregistrer les préférences
  savePreferences();

  server.send(200, "text/plain", "Settings saved");
}

void pagehtml() {
  Serial.begin(115200);
  preferences.begin("my-app", false);

  WiFi.softAP(ssid, password);
  IPAddress IP = WiFi.softAPIP();
  Serial.print("Point d'accès IP: ");
  Serial.println(IP);

  server.on("/", HTTP_GET, handleRoot);
  server.on("/save", HTTP_POST, handleSave);

  server.begin();
  Serial.println("Web server started");

  Wire.begin(SDA_PIN, SCL_PIN);
  sht4x.begin(Wire, SHT40_I2C_ADDR_44);

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1);
  }
  Serial.println("Sensor found");
}

void programme() {
  Serial.begin(115200);
  Wire.begin(SDA_PIN, SCL_PIN);
  pinMode(harpe1, OUTPUT);
  digitalWrite(harpe1, LOW);
  pinMode(harpe2, OUTPUT);
  digitalWrite(harpe2, LOW);
  pinMode(harpe3, OUTPUT);
  digitalWrite(harpe3, LOW);
  pinMode(harpe4, OUTPUT);
  digitalWrite(harpe4, LOW);
  pinMode(harpe5, OUTPUT);
  digitalWrite(harpe5, LOW);
  pinMode(harpe6, OUTPUT);
  digitalWrite(harpe6, LOW);

  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1);
  }
  Serial.println("Sensor found");
  sht4x.begin(Wire, SHT40_I2C_ADDR_44);
}

void LUX() {
  lux = veml.readLux(VEML_LUX_AUTO);
  Serial.print(lux, 2);
  Serial.println("lux");
}


void sht() {
  error0 = sht4x.measureHighPrecision(temperature0, humidity0);
  Serial.print(humidity0, 2);
  Serial.println("humidité");
}

void setup() {
 
  pinMode(wifi, INPUT_PULLUP);

  if (digitalRead(wifi) == LOW) {
    startWebServer = true;
    loadPreferences(); // Charge les valeurs au démarrage
    pagehtml();
    // Créer une nouvelle tâche qui s'exécute sur le deuxième cœur
  delay(2000);
  xTaskCreatePinnedToCore(
    checkWiFiPin,   /* Fonction pour exécuter */
    "Check WiFi",   /* Nom de la tâche */
    10000,          /* Taille de la pile de la tâche */
    NULL,           /* Paramètre de la tâche */
    1,              /* Priorité de la tâche */
    NULL,           /* Tâche créée */
    0);             /* Numéro du cœur */
    loadPreferences(); // Charge les valeurs au démarrage
    programme();

  } else {
     // Créer une nouvelle tâche qui s'exécute sur le deuxième cœur
  xTaskCreatePinnedToCore(
    checkWiFiPin,   /* Fonction pour exécuter */
    "Check WiFi",   /* Nom de la tâche */
    10000,          /* Taille de la pile de la tâche */
    NULL,           /* Paramètre de la tâche */
    1,              /* Priorité de la tâche */
    NULL,           /* Tâche créée */
    0);             /* Numéro du cœur */
    loadPreferences(); // Charge les valeurs au démarrage
    programme();
  }
}

void loop() {
  if (startWebServer) {
    LUX();
    sht();
    server.handleClient();
  } else {
    LUX();
    sht();

    // Les blocs de code suivants sont conditionnés par l'état des cases à cocher
    if (activateHarpe1) {
      digitalWrite(harpe1, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe1, LOW);
      delay(100);
      Serial.println("Harpe1");
    }

    if (activateHarpe2) {
      digitalWrite(harpe2, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe2, LOW);
      delay(100);
      Serial.println("Harpe2");
    }

    if (activateHarpe3) {
      digitalWrite(harpe3, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe3, LOW);
      delay(100);
      Serial.println("Harpe3");
    }

    if (activateHarpe4) {
      digitalWrite(harpe4, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe4, LOW);
      delay(100);
      Serial.println("Harpe4");
    }

    if (activateHarpe5) {
      digitalWrite(harpe5, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe5, LOW);
      delay(100);
      Serial.println("Harpe5");
    }

    if (activateHarpe6) {
      digitalWrite(harpe6, HIGH);
      delay(delayTime); // Utiliser delayTime
      digitalWrite(harpe6, LOW);
      delay(100);
      Serial.println("Harpe6");
    }
  }
}