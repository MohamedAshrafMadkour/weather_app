import 'package:flutter/material.dart';

MaterialColor myColors(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.blue;
    case 'Partly cloudy':
    case 'Light rain shower':
    case 'Patchy rain possible':
      return Colors.lightGreen;
    case 'Cloudy':
    case 'Overcast':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
      return Colors.grey;
    case 'Mist':
    case 'Patchy freezing drizzle possible':
      return Colors.teal;
    case 'Patchy snow possible':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Patchy light drizzle':
    case 'Light drizzle':
      return Colors.indigo;
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
      return Colors.cyan;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    case 'Fog':
    case 'Freezing fog':
      return Colors.brown;
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return Colors.green;
    case 'Heavy rain at times':
    case 'Heavy rain':
      return Colors.teal;
    case 'Ice pellets':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.lightBlue;
    default:
      return Colors.blue;
  }
}
