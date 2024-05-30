import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
);

MaterialColor getThemeColor(String? condition) {
  switch (condition) {
    case 'Sunny':
      return Colors.yellow;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.lightBlue;
    case 'Patchy rain possible':
    case 'Light drizzle':
    case 'Patchy light drizzle':
      return Colors.lightGreen;
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
      return Colors.green;
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Patchy light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
      return Colors.cyan;
    case 'Patchy freezing drizzle possible':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.blue;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.amber;
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
      return Colors.lightBlue;
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return Colors.green;
    default:
      return Colors.blue;
  }
}
