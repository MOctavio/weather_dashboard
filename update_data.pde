JSONObject json;

//coord 
float lon;
float lat;

//system
int sunR;
int sunS;

//main weather
float temp;
float pressure;
int humidity;

//wind
float windS;
float windD;

//cloud
int cloud;

//weather

int ID;
String condition;
String description;
String icon;
PImage weatherIcon;

void update_data() {
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=Liberia,cr&APPID=46611953e2cbb32a28715f841b70d720");

  JSONObject coord = json.getJSONObject("coord");
  lat = coord.getFloat("lat");
  lon = coord.getFloat("lon");

  JSONObject sys = json.getJSONObject("sys");
  sunR = sys.getInt("sunrise");
  sunS = sys.getInt("sunset");

  JSONObject main = json.getJSONObject("main");
  temp = main.getInt("temp");
  pressure = main.getInt("pressure");
  humidity = main.getInt("humidity");
  
  JSONObject wind = json.getJSONObject("wind");
  windS = wind.getInt("speed");
  windD = wind.getInt("deg");
  
  JSONObject clouds = json.getJSONObject("clouds");
  cloud = clouds.getInt("all");
  
  JSONArray weather = json.getJSONArray("weather");
  JSONObject mainCloud = weather.getJSONObject(0);
  ID = mainCloud.getInt("id");
  condition = mainCloud.getString("main");
  description = mainCloud.getString("description");
  icon = mainCloud.getString("icon");
  
  weatherIcon = loadImage("http://api.openweathermap.org/img/w/"+icon+".png");
  
}