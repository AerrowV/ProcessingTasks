String day;
String result;
String weather;

void setup() {
  day = "Monday";
  result = "Hello, world I hope you have a nice  "; 
  weather = " and a great week ahead of you. Always remember to code a little bit everyday";

  if (day=="Monday") {
    println(result + day + weather);
  }
  if (day=="Monday") {
    day = "Friday";
    println(result + day + weather);
  }
  if (day=="Friday") {
    day = "Saturday";
    println(result + day + weather);
  }
  if (day=="Saturday") {
    day = "Sunday";
    println(result + day + weather);
  }
}
