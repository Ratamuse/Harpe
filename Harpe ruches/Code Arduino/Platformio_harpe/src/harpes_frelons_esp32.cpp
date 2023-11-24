//####################### Ratamuse #######################/
//################## ratamuse.pf@googlemail.com ##################/
//######################### Septembre 2023 ######################/
//#################### ESP32 Devboard 3.3V  ####################/
//######################## Version 1.0.0 #######################/


#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <ArduinoJson.h>
#include <Preferences.h>

const char* ssid = "harpe";
const char* password = "123456789";




/********************VEML7700******************************/

#include "Adafruit_VEML7700.h"
#include "SensirionI2CSht4x.h"


Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

/*******************Sht4x********************************/
SensirionI2CSht4x sht4x;
float temperature0;
float humidity0;
char errorMessage[256];

WebServer server(80);

StaticJsonDocument<200> psramDoc;

/*********************Preferences***************************/

Preferences preferences;

/************************Define*****************************/

#define SDA_PIN 21
#define SCL_PIN 22
#define harpe1 19
#define harpe2 18
#define harpe3 17
#define harpe4 16
#define harpe5 4
#define harpe6 13
#define wifi 27
int customDelay = 1000;

#define uS_TO_S_FACTOR 1000000ULL /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP 600         /* Time ESP32 will go to sleep (in seconds) */



void handleRoot() {
  size_t bufferSize = 400; // Taille suffisante pour la page HTML
  char* buffer = (char*)ps_malloc(bufferSize); // Allouer de la mémoire dans la PSRAM

  if (buffer) {
    snprintf(buffer, bufferSize, 
      "<html><body>"
      "<h1>Configuration de l'humidité et de la luminosité minimale</h1>"
      "<form action='/update' method='post'>"
      "Nouvelle valeur de l'humidité maximale: <input type='text' name='hum_max' value='%f'><br>"
      "Nouvelle valeur de la luminosité minimale: <input type='text' name='lux_min' value='%f'><br>"
      "<input type='submit' value='Enregistrer'>"
      "</form></body></html>",
      preferences.getFloat("hum_max", 10),
      preferences.getFloat("lux_min", 10)
    );

    server.send_P(200, "text/html", buffer); // Envoyer la page HTML depuis la PSRAM

    cfree(buffer); // Libérer la mémoire allouée dans la PSRAM
  } else {
    server.send(500, "text/plain", "Erreur d'allocation de mémoire dans la PSRAM");
  }
}
 
void handleUpdate() {
  if (server.hasArg("hum_max") && server.hasArg("lux_min")) {
    float newHumMax = server.arg("hum_max").toFloat();
    float newLuxMin = server.arg("lux_min").toFloat();

    preferences.putFloat("hum_max", newHumMax);
    preferences.putFloat("lux_min", newLuxMin);

    server.send(200, "text/plain", "Humidité maximale mise à jour : " + String(newHumMax) + "\nLuminosité minimale mise à jour : " + String(newLuxMin));
  } else {
    server.send(400, "text/plain", "Requête invalide");
  }
} 

void setup() {
  Serial.begin(115200);

  preferences.begin("my-app", false);

  WiFi.softAP(ssid, password);
  IPAddress IP = WiFi.softAPIP();
  Serial.print("Point d'accès IP: ");
  Serial.println(IP);

  server.on("/", handleRoot);
  server.on("/update", handleUpdate);
  server.begin();
}

void loop() {
  server.handleClient();

  // Afficher la valeur de hum_max et lux_min
  Serial.print("Valeur de hum_max : ");
  Serial.println(preferences.getFloat("hum_max", 10));
  
  Serial.print("Valeur de lux_min : ");
  Serial.println(preferences.getFloat("lux_min", 10));
}
