void setup() {
  size(300, 400);
  update_data();
  frameRate(1);
}

void draw() {
  background(245,245,245);
  fill(0);
  
  image(weatherIcon,35,30);
  textSize(34);
  text(kelvinToCelsius(temp), 50,105);
  textSize(21);
  text(city+", "+country, 80, 65);
  
  
  textSize(20);
  text("Sunrise: "+millisecondsToTime(sunR), 50, 150);
  text("Sunset: "+millisecondsToTime(sunS), 50, 175);
  text("Pressure: "+pressure+" hpa", 50, 200);
  text("Humidity: "+humidity+"%", 50, 225);
  text("Wind Speed: "+mpsToKph(windS), 50, 250);
  text("Wind Direction: "+windD+"°", 50, 275);
  text("Cloud Coverage: "+cloud+"%", 50, 300);
  text("Conditions: "+description, 50, 325);
  
  textSize(13);
  text("GPS Location ["+lat+" , "+lon+"]", 50, 350);
  
  if ((minute()%15 == 0) && (second() == 1)) {
    update_data();
  }
}