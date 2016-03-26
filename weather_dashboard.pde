void setup() {
  size(400, 500);
  update_data();
  frameRate(1);
}

void draw() {
  background(150);
  textSize(20);
  fill(0);
  text("GPS Location: "+lat+" , "+lon, 50, 100);
  text("Sunrise: "+millisecondsToTime(sunR), 50, 125);
  text("Sunset: "+millisecondsToTime(sunS), 50, 150);
  text("Temperature: "+kelvinToCelsius(temp), 50, 170);
  text("Atmosphere Pressure: "+pressure+" hpa", 50, 200);
  text("Humidity: "+humidity+"%", 50, 225);
  text("Wind Speed: "+windS+"mps", 50, 250);
  text("Wind Direction: "+windD, 50, 275);
  text("Cloud Coverage: "+cloud+"%", 50, 300);
  text("Conditions: "+condition+", "+description, 50, 325);
  image(weatherIcon,50,350);
  if ((minute()%15 == 0) && (second() == 1)) {
    update_data();
  }
}