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
const char* ssid = "harpes";
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
float hum_max = 90;
float lux_min = 20;
char errorMessage[256];

/*********************Preferences***************************/

// Set up preferences
Preferences preferences;

/************************Define*****************************/

#define SDA_PIN 21
#define SCL_PIN 22
#define SDA_PIN1 27
#define SCL_PIN1 26

#define harpe1 17
#define harpe2 16
#define harpe3 4
#define harpe4 13
#define harpe5 19
#define harpe6 18
#define wifi 25
int customDelay = 1000;

#define uS_TO_S_FACTOR 1000000ULL /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP 600         /* Time ESP32 will go to sleep (in seconds) */

bool startWebServer = false;
bool useHarpe1 = true;
bool useHarpe2 = true;
bool useHarpe3 = true;
bool useHarpe4 = true;
bool useHarpe5 = true;
bool useHarpe6 = true;

void setup() {
  pinMode(wifi, INPUT_PULLUP);

  if (digitalRead(wifi) == LOW) {
    // Connect to WiFi network
    startWebServer = true;
    pagehtml();
  } else {
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

    if (lux >= lux_min && humidity0 <= hum_max) {
      if (useHarpe1) {
        digitalWrite(harpe1, HIGH);
        delay(customDelay);
        Serial.println("Harpe 1");
        digitalWrite(harpe1, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
      if (useHarpe2) {
        digitalWrite(harpe2, HIGH);
        delay(customDelay);
        Serial.println("Harpe 2");
        digitalWrite(harpe2, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
      if (useHarpe3) {
        digitalWrite(harpe3, HIGH);
        delay(customDelay);
        Serial.println("Harpe 3");
        digitalWrite(harpe3, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
      if (useHarpe4) {
        digitalWrite(harpe4, HIGH);
        delay(customDelay);
        Serial.println("Harpe 4");
        digitalWrite(harpe4, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
      if (useHarpe5) {
        digitalWrite(harpe5, HIGH);
        delay(customDelay);
        Serial.println("Harpe 5");
        digitalWrite(harpe5, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
      if (useHarpe6) {
        digitalWrite(harpe6, HIGH);
        delay(customDelay);
        Serial.println("Harpe 6");
        digitalWrite(harpe6, LOW);
        delay(100);
      }
      if (digitalRead(wifi) == LOW) {
        ESP.restart();
      }
    } else {
      Serial.println("Going to sleep now");
      Serial.flush();
      esp_deep_sleep_start();
      Serial.println("This will never be printed");
    }
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
  html += "body { background-color: #F4D03F; font-family: Arial, sans-serif; }";
  html += "h1 { color: #E74C3C; text-align: center; font-size: 5vw; }";
  html += "p { color: #333333; font-size: 3vw; }";
  html += "label { color: #E74C3C; font-weight: bold; font-size: 3vw; }";
  html += "input[type='text'] { padding: 2vw; border: 0.5vw solid #FF6600; border-radius: 1vw; font-size: 2vw; }";
  html += "input[type='submit'] { padding: 2vw 4vw; background-color: #FF6600; color: #FFFFFF; border: none; border-radius: 1vw; font-size: 2vw; cursor: pointer; }";
  html += "</style>";
  html += "<meta http-equiv=\"refresh\" content=\"10\">";
  html += "</head><body>";
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
  html += "<label for=\"custom_delay\">Custom delay:</label>";
  html += "<input type=\"text\" id=\"custom_delay\" name=\"custom_delay\" value=\"" + String(customDelay) + "\">";
  html += "<br><br>";
  html += "<label for=\"harpe1\">Use Harpe 1:</label>";
  html += "<input type=\"checkbox\" id=\"harpe1\" name=\"harpe1\" " + String(useHarpe1 ? "checked" : "") + ">";
  html += "<br><br>";
  html += "<label for=\"harpe2\">Use Harpe 2:</label>";
  html += "<input type=\"checkbox\" id=\"harpe2\" name=\"harpe2\" " + String(useHarpe2 ? "checked" : "") + ">";
  html += "<br><br>";
  html += "<label for=\"harpe3\">Use Harpe 3:</label>";
  html += "<input type=\"checkbox\" id=\"harpe3\" name=\"harpe3\" " + String(useHarpe3 ? "checked" : "") + ">";
  html += "<br><br>";
  html += "<label for=\"harpe4\">Use Harpe 4:</label>";
  html += "<input type=\"checkbox\" id=\"harpe4\" name=\"harpe4\" " + String(useHarpe4 ? "checked" : "") + ">";
  html += "<br><br>";
  html += "<label for=\"harpe5\">Use Harpe 5:</label>";
  html += "<input type=\"checkbox\" id=\"harpe5\" name=\"harpe5\" " + String(useHarpe5 ? "checked" : "") + ">";
  html += "<br><br>";
  html += "<label for=\"harpe6\">Use Harpe 6:</label>";
  html += "<input type=\"checkbox\" id=\"harpe6\" name=\"harpe6\" " + String(useHarpe6 ? "checked" : "") + ">";
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
    useHarpe1 = server.hasArg("harpe1");
    useHarpe2 = server.hasArg("harpe2");
    useHarpe3 = server.hasArg("harpe3");
    useHarpe4 = server.hasArg("harpe4");
    useHarpe5 = server.hasArg("harpe5");
    useHarpe6 = server.hasArg("harpe6");

    customDelay = server.arg("custom_delay").toInt();
    preferences.putFloat("hum_max", hum_max);
    preferences.putFloat("lux_min", lux_min);
    preferences.putBool("useHarpe1", useHarpe1);
    preferences.putBool("useHarpe2", useHarpe2);
    preferences.putBool("useHarpe3", useHarpe3);
    preferences.putBool("useHarpe4", useHarpe4);
    preferences.putBool("useHarpe5", useHarpe5);
    preferences.putBool("useHarpe6", useHarpe6);
    preferences.putInt("customDelay", customDelay);
    server.send(200, "text/plain", "Settings saved");
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

  // Load preferences
  preferences.begin("my-app", false);
  hum_max = preferences.getFloat("hum_max", 90.0);
  lux_min = preferences.getFloat("lux_min", 10.0);
  useHarpe1 = preferences.getBool("useHarpe1", true);
  useHarpe2 = preferences.getBool("useHarpe2", true);
  useHarpe3 = preferences.getBool("useHarpe3", true);
  useHarpe4 = preferences.getBool("useHarpe4", true);
  useHarpe5 = preferences.getBool("useHarpe5", true);
  useHarpe6 = preferences.getBool("useHarpe6", true);
  customDelay = preferences.getInt("customDelay", 1000);

  Wire.begin(SDA_PIN, SCL_PIN);
  Wire1.begin(SDA_PIN1, SCL_PIN1);
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
  pinMode(harpe5, OUTPUT);
  digitalWrite(harpe5, LOW);
  pinMode(harpe6, OUTPUT);
  digitalWrite(harpe6, LOW);


  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);

  // Load preferences
  preferences.begin("my-app", false);
  hum_max = preferences.getFloat("hum_max", 90.0);
  lux_min = preferences.getFloat("lux_min", 10.0);
  useHarpe1 = preferences.getBool("useHarpe1", true);
  useHarpe2 = preferences.getBool("useHarpe2", true);
  useHarpe3 = preferences.getBool("useHarpe3", true);
  useHarpe4 = preferences.getBool("useHarpe4", true);
  useHarpe5 = preferences.getBool("useHarpe5", true);
  useHarpe6 = preferences.getBool("useHarpe6", true);
  customDelay = preferences.getInt("customDelay", 1000);

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
