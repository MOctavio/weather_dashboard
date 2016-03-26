import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;


String  millisecondsToTime(long milli)
{
  Calendar calendar = new GregorianCalendar();  
  calendar.setTimeInMillis(milli*1000);
  int hrs = calendar.get(Calendar.HOUR_OF_DAY);
  int mins = calendar.get(Calendar.MINUTE);
  int secs = calendar.get(Calendar.SECOND);

  return hrs + ":" + mins + ":" + secs;
}

String kelvinToCelsius(double kelvin) {
  return Math.round(kelvin - 273.0) + " C";
}