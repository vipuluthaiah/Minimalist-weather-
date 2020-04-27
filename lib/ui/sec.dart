import 'package:flutter/material.dart';
import 'package:weater/model/json.dart';
import 'package:weater/ui/helper.dart';

class CityUisec extends StatelessWidget {
  final AsyncSnapshot<WeatherForecastModel> snapshot;

  const CityUisec({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic forecastList = snapshot.data.list;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon(
          //   Icons.wb_sunny,
          //   size: 74.0,
          //   color: Colors.white,
          // ),
          getWeatherIcon(
            // weatherDescription: forecastList[0].
            weatherDescription: forecastList[0].weather[0].main,
            color: Colors.white,
            size: 130,
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            children: <Widget>[
              Text(
                "${forecastList[0].temp.day.toStringAsFixed(0)}°F ",
                style: TextStyle(
                    fontSize: 54.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                "${forecastList[0].weather[0].description}".toUpperCase(),
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
