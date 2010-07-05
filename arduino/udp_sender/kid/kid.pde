//-------------------------------------------------------------------------------------------------
//
// RGBLED - control an RGB LED via PWM values received over WiFi UDP broadcast
// Based on AsyncLabs WiShield UDP sample code
//
//-------------------------------------------------------------------------------------------------

extern "C" {
   #include "uip.h"
}
#include <WiShield.h>
#include <EEPROM.h>


// Wireless configuration parameters ----------------------------------------
unsigned char local_ip[]       = {192, 168, 0, 20};   // IP address of WiShield
unsigned char gateway_ip[]     = {192, 168, 0, 1};   // router or gateway IP address
unsigned char subnet_mask[]    = {255, 255, 255, 0};   // subnet mask for the local network
const prog_char ssid[] PROGMEM = {"ASYNCLABS"};       // max 32 bytes

unsigned char security_type = 0;               // 0 - open; 1 - WEP; 2 - WPA; 3 - WPA2

// WPA/WPA2 passphrase
const prog_char security_passphrase[] PROGMEM = {"12345678"};   // max 64 characters

// WEP 128-bit keys
// sample HEX keys
prog_uchar wep_keys[] PROGMEM = {
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // Key 0
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // Key 1
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // Key 2
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00    // Key 3
};

// setup the wireless mode
// infrastructure - connect to AP
// adhoc - connect to another WiFi device
#define WIRELESS_MODE_INFRA 1
#define WIRELESS_MODE_ADHOC 2
unsigned char wireless_mode = WIRELESS_MODE_ADHOC;
unsigned char ssid_len;
unsigned char security_passphrase_len;
//---------------------------------------------------------------------------

#define DEBUGPRINT
#define REDLEDPIN 3
#define GRNLEDPIN 5
#define BLULEDPIN 6

//global data
struct uip_udp_conn *c;
bool colorNeedsUpdate;
byte redValue;
byte greenValue;
byte blueValue;


void setup()
{
   //http://www.arduino.cc/cgi-bin/yabb2/YaBB.pl?num=1212690065/5
   //configure hardware timer2 to generate a fast PWM on OC2B (Arduino digital pin 3)
   //set pin high on overflow, clear on compare match with OCR2B
   //TCCR2A = 0x23;
   //TCCR2B = 0x0C; // select timer2 clock as 16 MHz I/O clock / 64 = 250 kHz
   //OCR2A = 255;   // top/overflow value is 255
   
   //setup global data
   colorNeedsUpdate = false;
      
   //set PWM pins as output
   pinMode(REDLEDPIN, OUTPUT);
   pinMode(GRNLEDPIN, OUTPUT);
   pinMode(BLULEDPIN, OUTPUT);

   //set PWM pins to last values set in EEPROM
   redValue = EEPROM.read(0);
   greenValue = EEPROM.read(1);
   blueValue = EEPROM.read(2);
   analogWrite(REDLEDPIN, redValue);
   analogWrite(GRNLEDPIN, greenValue);
   analogWrite(BLULEDPIN, blueValue);
   
#ifdef DEBUGPRINT
   //init Serial output objects
   Serial.begin(57600);
#endif // DEBUGPRINT

   //init the WiShield
   WiFi.init();
   
   //create the UDP socket
   if(NULL == c)
      c = createUDPSocket(1234);  
}

void loop()
{
   WiFi.run();
   
   if(true == colorNeedsUpdate) {
#ifdef DEBUGPRINT
      Serial.println("updating color / writing eeprom");
#endif // DEBUGPRINT
      colorNeedsUpdate = false;
         //set PWM pins...
      analogWrite(REDLEDPIN, redValue);
      analogWrite(GRNLEDPIN, greenValue);
      analogWrite(BLULEDPIN, blueValue);
      EEPROM.write(0, redValue);   
      EEPROM.write(1, greenValue);   
      EEPROM.write(2, blueValue);   
   }
}


//-------------------------------------------------------------------------------------------------
// UDP socket create/delete helper code
//-------------------------------------------------------------------------------------------------
struct uip_udp_conn* createUDPSocket(int port)
{
   struct uip_udp_conn* ret;
   uip_ipaddr_t addr;
   uip_ipaddr(&addr, 255, 255, 255, 255);
   ret = uip_udp_new(&addr, HTONS(0));
   uip_udp_bind(ret, HTONS(port));
   return ret;
}

void deleteUDPSocket(struct uip_udp_conn* c)
{
   uip_udp_remove(c);
   c = NULL;
}

//-------------------------------------------------------------------------------------------------
// UDPApp.c code moved into the main sketch to make more debuggable, etc., and easier to maintain
//-------------------------------------------------------------------------------------------------
extern "C" {
   
   void udpapp_appcall(void)
   {
      //const char ACK[] = "ACK";
      
      //receive incoming bytes
      if(0 != uip_newdata()) {
         redValue = ((byte *)uip_appdata)[0];
         greenValue = ((byte *)uip_appdata)[1];
         blueValue = ((byte *)uip_appdata)[2];

#ifdef DEBUGPRINT
         Serial.print("<<< RX UDP <<< R:");
         Serial.print(redValue, DEC);
         Serial.print(" G:");
         Serial.print(greenValue, DEC);
         Serial.print(" B:");
         Serial.println(blueValue, DEC);
#endif // DEBUGPRINT
         
         //set eeprom needs write (dirty bit)
         colorNeedsUpdate = true;
         
         //send ACK
         //memcpy(uip_appdata, ACK, strlen(ACK));
         //uip_send(uip_appdata, strlen(ACK));    
      }
   }
   
   void udpapp_init(void)
   {
   }

   void dummy_app_appcall(void)
   {
   }
}
