import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weater/model/json.dart';

class CityUithree extends StatelessWidget {
  final AsyncSnapshot<WeatherForecastModel> snapshot;

  const CityUithree({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic forecastList = snapshot.data.list;

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                // Icons.shutter_speed,
                FontAwesomeIcons.wind,
                size: 35,
                color: Colors.white,
              ),
              Icon(
                FontAwesomeIcons.solidGrinBeamSweat,
                size: 35,
                color: Colors.white,
              ),
              Icon(
                // Icons.ac_unit,
                FontAwesomeIcons.cloudSun,
                size: 35,

                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("${forecastList[0].speed.toStringAsFixed(1)}",
                  style: TextStyle(color: Colors.white)),
              Text("${forecastList[0].humidity.toStringAsFixed(1)} ",
                  style: TextStyle(color: Colors.white)),
              Text("${forecastList[0].temp.max.toStringAsFixed(0)} ",
                  style: TextStyle(color: Colors.white)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Text(
                  "km/hr",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text("", style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Text("°F", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
