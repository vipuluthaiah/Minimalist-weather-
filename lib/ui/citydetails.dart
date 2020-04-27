import 'package:flutter/material.dart';
import 'package:weater/model/json.dart';
import 'package:weater/utlies/forecast.dart';


class CityDetails extends StatelessWidget {
  final AsyncSnapshot<WeatherForecastModel> snapshot;
  
  const CityDetails({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var city= snapshot.data.city.name;
    dynamic forecastList = snapshot.data.list;
    var dateFormated =
        new DateTime.fromMillisecondsSinceEpoch(forecastList[0].dt * 1000);
  
        return Center(
          
          child: Container(
            color: Colors.redAccent,
            child: Column(
              children: <Widget>[
                SizedBox(height: 70,),

                Text("$city",
                style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                ),
                ),
                SizedBox(height: 15,),
                Text("${Util.formatDate(dateFormated)}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                ),
                ),
               
          ],
        ),
      ),
    );
    

    
  }
}