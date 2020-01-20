import 'package:flutter/material.dart';

var textColor;
var weatherIcon = "assets/images/sunny_white.png";
var tempIcon = "assets/images/temperature_hot_white.png";
var themeColor;

double cloudyBlack = 0;
double rainyBlack = 0;
double snowyBlack = 0;
double sunnyBlack = 0;
double thunderstormBlack = 0;
double windyBlack = 0;
double cloudyWhite = 0;
double rainyWhite = 0;
double snowyWhite = 0;
double sunnyWhite = 0;
double thunderstormWhite = 0;
double windyWhite = 0;

const defaultFont = "Rudiment";

void lightTheme(var weatherinfo, var tempInfo, var tempUnit) {
  textColor = Colors.black;
  themeColor = "white";
  if (weatherinfo == "cloudy") {
    if (DateTime.now().hour >= 6 && DateTime.now().hour <= 18) {
      weatherIcon = "assets/images/cloudy_day_black.png";
      cloudyBlack = 1;
      rainyBlack = 0;
      snowyBlack = 0;
      sunnyBlack = 0;
      thunderstormBlack = 0;
      windyBlack = 0;
      cloudyWhite = 0;
      rainyWhite = 0;
      snowyWhite = 0;
      sunnyWhite = 0;
      thunderstormWhite = 0;
      windyWhite = 0;
    } else {
      weatherIcon = "assets/images/cloudy_night_black.png";
      cloudyBlack = 1;
      rainyBlack = 0;
      snowyBlack = 0;
      sunnyBlack = 0;
      thunderstormBlack = 0;
      windyBlack = 0;
      cloudyWhite = 0;
      rainyWhite = 0;
      snowyWhite = 0;
      sunnyWhite = 0;
      thunderstormWhite = 0;
      windyWhite = 0;
    }
  } else if (weatherinfo == "foggy") {
    weatherIcon = "assets/images/foggy_black.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "rainy") {
    weatherIcon = "assets/images/rainy_black.png";

    cloudyBlack = 0;
    rainyBlack = 1;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "snowy") {
    weatherIcon = "assets/images/snowy_black.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 1;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "sunny") {
    weatherIcon = "assets/images/sunny_black.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 1;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "thunderstorm") {
    weatherIcon = "assets/images/thunderstorm_black.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 1;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "windy") {
    weatherIcon = "assets/images/windy_black.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 1;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  }

  if (tempUnit == "°C") {
    if (tempInfo > 40) {
      tempIcon = "assets/images/temperature_hot_black.png";
    } else if (tempInfo <= 7) {
      tempIcon = "assets/images/temperature_cold_black.png";
    } else {
      tempIcon = "assets/images/temperature_normal_black.png";
    }
  } else if (tempUnit == "°F") {
    if (tempInfo > 100) {
      tempIcon = "assets/images/temperature_hot_black.png";
    } else if (tempInfo <= 45) {
      tempIcon = "assets/images/temperature_cold_black.png";
    } else {
      tempIcon = "assets/images/temperature_normal_black.png";
    }
  }
}

void darkTheme(var weatherinfo, var tempInfo, var tempUnit) {
  textColor = Colors.white;
  themeColor = "black";
  if (weatherinfo == "cloudy") {
    if (DateTime.now().hour >= 6 && DateTime.now().hour <= 18) {
      weatherIcon = "assets/images/cloudy_day_white.png";
      cloudyBlack = 0;
      rainyBlack = 0;
      snowyBlack = 0;
      sunnyBlack = 0;
      thunderstormBlack = 0;
      windyBlack = 0;
      cloudyWhite = 1;
      rainyWhite = 0;
      snowyWhite = 0;
      sunnyWhite = 0;
      thunderstormWhite = 0;
      windyWhite = 0;
    } else {
      weatherIcon = "assets/images/cloudy_night_white.png";
      cloudyBlack = 0;
      rainyBlack = 0;
      snowyBlack = 0;
      sunnyBlack = 0;
      thunderstormBlack = 0;
      windyBlack = 0;
      cloudyWhite = 1;
      rainyWhite = 0;
      snowyWhite = 0;
      sunnyWhite = 0;
      thunderstormWhite = 0;
      windyWhite = 0;
    }
  } else if (weatherinfo == "foggy") {
    weatherIcon = "assets/images/foggy_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "rainy") {
    weatherIcon = "assets/images/rainy_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 1;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "snowy") {
    weatherIcon = "assets/images/snowy_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 1;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "sunny") {
    weatherIcon = "assets/images/sunny_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 1;
    thunderstormWhite = 0;
    windyWhite = 0;
  } else if (weatherinfo == "thunderstorm") {
    weatherIcon = "assets/images/thunderstorm_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 1;
    windyWhite = 0;
  } else if (weatherinfo == "windy") {
    weatherIcon = "assets/images/windy_white.png";
    cloudyBlack = 0;
    rainyBlack = 0;
    snowyBlack = 0;
    sunnyBlack = 0;
    thunderstormBlack = 0;
    windyBlack = 0;
    cloudyWhite = 0;
    rainyWhite = 0;
    snowyWhite = 0;
    sunnyWhite = 0;
    thunderstormWhite = 0;
    windyWhite = 1;
  }

  if (tempUnit == "°C") {
    if (tempInfo > 40) {
      tempIcon = "assets/images/temperature_hot_white.png";
    } else if (tempInfo <= 7) {
      tempIcon = "assets/images/temperature_cold_white.png";
    } else {
      tempIcon = "assets/images/temperature_normal_white.png";
    }
  } else if (tempUnit == "°F") {
    if (tempInfo > 100) {
      tempIcon = "assets/images/temperature_hot_white.png";
    } else if (tempInfo <= 45) {
      tempIcon = "assets/images/temperature_cold_white.png";
    } else {
      tempIcon = "assets/images/temperature_normal_white.png";
    }
  }
}

updateOpacityValues(var opacityWeather) {
  var animList = [
    "cloudyBlack",
    "rainyBlack",
    "snowyBlack",
    "sunnyBlack",
    "thunderstormBlack",
    "windyBlack",
    "cloudyWhite",
    "rainyWhite",
    "snowyWhite",
    "sunnyWhite",
    "thunderstormWhite",
    "windyWhite",
  ];

  for (var item in animList)
    if (item == opacityWeather) {
      return opacityWeather = 1;
    } else {
      break;
    }
}
