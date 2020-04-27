import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getWeatherIcon({String weatherDescription, Color color, double size}) {
  switch (weatherDescription) {
    case "Clear":
      {
        return Icon(
          FontAwesomeIcons.sun,
          color: Colors.orangeAccent,
          size: size,
        );
      }
      break;
       case "Clouds":
      {
        return Icon(
          FontAwesomeIcons.cloud,
          color: Colors.greenAccent,
          size: size,
        );
      }
      break;
       case "Rain":
      {
        return Icon(
          FontAwesomeIcons.cloudRain,
          color: Colors.lightBlueAccent,
          size: size,
        );
      }
      break;
       case "Snow":
      {
        return Icon(
          FontAwesomeIcons.snowman,
          color: color,
          size: size,
        );
      }
      break;
    default:
       return Icon(
          FontAwesomeIcons.exclamationCircle,
          color: color,
          size: size,
        );
  }
}
