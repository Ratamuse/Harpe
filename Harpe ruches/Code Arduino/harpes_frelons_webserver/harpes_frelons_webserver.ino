//####################### Ratamuse ###############################//
//################## ratamuse.pf@googlemail.com ##################//
//######################### October 2023 #########################//
//#################### ESP32 Devboard 3.3V  ######################//
//######################## Version 1.0.0 #########################//

#include "Arduino.h"
#include <Wire.h>
#include <WiFi.h>
#include <WebServer.h>
#include <Preferences.h>

// Set up WiFi access point
const char* ssid = "ruche";
const char* password = "123456789";

// Set up web server
WebServer server(80);

/*********************VEML7700*******************************/

#include "Adafruit_VEML7700.h"

Adafruit_VEML7700 veml = Adafruit_VEML7700();
float lux = 0;

/********************Sht4x*********************************/


#include <SensirionI2CSht4x.h>

SensirionI2CSht4x sht4x;
uint16_t error0;
float temperature0;
float humidity0;
float hum_max;
float lux_min;
char errorMessage[256];

/*********************Preferences***************************/

// Set up preferences
Preferences preferences;

/************************Define*****************************/

#define SDA_PIN 21
#define SCL_PIN 22
#define SDA_PIN1 17
#define SCL_PIN1 16


#define harpe1 26
#define harpe2 32
#define harpe3 25
#define harpe4 27
#define wifi 28

#define uS_TO_S_FACTOR 1000000ULL /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP 600         /* Time ESP32 will go to sleep (in seconds) */

void setup() {

  pinMode(wifi, INPUT);

  if (digitalRead(wifi) == LOW) {
    // Connect to WiFi network

    pagehtml();


  }

  else {

    programme();
  }
}

void loop() {

  LUX();
  sht();

  if (lux >= lux_min && humidity0 <= hum_max) {

    digitalWrite(harpe1, HIGH);
    delay(1000);
    digitalWrite(harpe1, LOW);
    delay(100);
    digitalWrite(harpe2, HIGH);
    delay(1000);
    digitalWrite(harpe2, LOW);
    delay(100);
    digitalWrite(harpe3, HIGH);
    delay(1000);
    digitalWrite(harpe3, LOW);
    delay(100);
    digitalWrite(harpe4, HIGH);
    delay(1000);
    digitalWrite(harpe4, LOW);
    delay(100);

  }

  else {

    Serial.println("Going to sleep now");
    Serial.flush();
    esp_deep_sleep_start();
    Serial.println("This will never be printed");
  }
}
/*****************************Intensité lumineuse en LUX****************************/

void LUX() {

  lux = veml.readLux(VEML_LUX_AUTO);
  Serial.print(lux, 2);
  Serial.println("lux");
}

/*****************************Valeur du capteur SHT41****************************/

void sht() {


  error0 = sht4x.measureHighPrecision(temperature0, humidity0);
  Serial.print(humidity0, 2);
  Serial.println("humidité");
}

void handleRoot() {
  String html = "<html><head><style>";
  html += "body { background-color: #FEE8D6; font-family: Arial, sans-serif; }";
  html += "h1 { color: #FF6600; text-align: center; }";
  html += "p { color: #333333; font-size: 18px; }";
  html += "label { color: #FF6600; font-weight: bold; }";
  html += "input[type='text'] { padding: 10px; border: 2px solid #FF6600; border-radius: 5px; font-size: 16px; }";
  html += "input[type='submit'] { padding: 10px 20px; background-color: #FF6600; color: #FFFFFF; border: none; border-radius: 5px; font-size: 16px; cursor: pointer; }";
  html += "</style></head><body>";
  html += "<h1>Harpes Ratamuse</h1>";
  html += "<p>Current humidity: " + String(humidity0) + "</p>";
  html += "<p>Current luminosity: " + String(lux) + "</p>";
  html += "<form action=\"/update\" method=\"POST\">";
  html += "<label for=\"hum_max\">Maximum humidity:</label>";
  html += "<input type=\"text\" id=\"hum_max\" name=\"hum_max\" value=\"" + String(hum_max) + "\">";
  html += "<br><br>";
  html += "<label for=\"lux_min\">Minimum luminosity:</label>";
  html += "<input type=\"text\" id=\"lux_min\" name=\"lux_min\" value=\"" + String(lux_min) + "\">";
  html += "<br><br>";
  html += "<input type=\"submit\" value=\"Save\">";
  html += "</form>";
  html += "</body></html>";

  server.send(200, "text/html", html);
}

void handleUpdate() {
  if (server.method() == HTTP_POST) {
    hum_max = server.arg("hum_max").toFloat();
    lux_min = server.arg("lux_min").toFloat();
    preferences.putFloat("hum_max", hum_max);
    preferences.putFloat("lux_min", lux_min);
    server.send(200, "text/plain", "Humidity maximum set to " + String(hum_max) + ", Luminosity minimum set to " + String(lux_min));
    ESP.restart();  // Reboot ESP32
  } else {
    server.send(400, "text/plain", "Invalid request");
  }
}

void pagehtml() {
  WiFi.softAP(ssid, password);
  Serial.begin(115200);
  Serial.println("WiFi access point started");

  // Start web server
  server.on("/", handleRoot);
  server.on("/update", handleUpdate);
  server.begin();
  Serial.println("Web server started");

  Wire.begin(SDA_PIN, SCL_PIN);
  Wire1.begin(SDA_PIN1, SCL_PIN1);
  // Initialisation du capteur d'humidité
  sht4x.begin(Wire1);
  // Initialisation du capteur de luminosité
  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1)
      ;
  }
  Serial.println("Sensor found");

  // Load preferences
  preferences.begin("my-app", false);
  hum_max = preferences.getFloat("hum_max", 50.0);
  lux_min = preferences.getFloat("lux_min", 50.0);

  // Handle web server requests
  server.handleClient();
}

void programme() {

  Serial.begin(115200);
  Wire.begin(SDA_PIN, SCL_PIN);
  Wire1.begin(SDA_PIN1, SCL_PIN1);
  pinMode(harpe1, OUTPUT);
  digitalWrite(harpe1, LOW);
  pinMode(harpe2, OUTPUT);
  digitalWrite(harpe2, LOW);
  pinMode(harpe3, OUTPUT);
  digitalWrite(harpe3, LOW);
  pinMode(harpe4, OUTPUT);
  digitalWrite(harpe4, LOW);


  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);


  /*********************VEML7700*******************************/

  if (!veml.begin()) {
    Serial.println("Sensor not found");
    while (1)
      ;
  }
  Serial.println("Sensor found");

  /*********************Sht4x*******************************/


  sht4x.begin(Wire1);
}
