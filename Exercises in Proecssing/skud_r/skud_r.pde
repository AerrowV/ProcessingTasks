void setup(){

boolean skudÅrChecker= skudÅr(2000);
printText(skudÅrChecker);
}

void printText(boolean skudÅrChecker) {
  if (skudÅrChecker) {
    println("Det er skudår");
  } else {
    println("Det er ikke skudår");
  }
}
boolean skudÅr(int year) {
  if (year%4==0 && year%100 !=0) {
    return true;
  } else if (year % 400==0) {
    return true;
  } else {
    return false;
  }
}
