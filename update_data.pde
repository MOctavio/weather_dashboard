JSONObject json;

//coord 
float lon;
float lat;

//system
long sunR;
long sunS;
String city;
String country;

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
  //Please use your API KEY http://openweathermap.org/appid
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=liberia,cr&APPID=46611953e2cbb32a28715f841b70d720");

  JSONObject coord = json.getJSONObject("coord");
  lat = coord.getFloat("lat");
  lon = coord.getFloat("lon");

  JSONObject sys = json.getJSONObject("sys");
  sunR = sys.getLong("sunrise");
  sunS = sys.getLong("sunset");
  country = sys.getString("country");
    
  city = json.getString("name");
  
  JSONObject main = json.getJSONObject("main");
  temp = main.getFloat("temp");
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