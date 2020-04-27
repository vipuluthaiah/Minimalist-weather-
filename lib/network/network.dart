import 'dart:convert';

import 'package:http/http.dart';
import 'package:weater/model/json.dart';
import 'package:weater/utlies/forecast.dart';


class Network {
   Future<WeatherForecastModel> getWeatherForecast({String cityName}) async{
     var finalUrl = "https://api.openweathermap.org/data/2.5/forecast/daily?q="+cityName+
         "&appid="+Util.appId+"&units=imperial"; //change to metric or imperial

     final response = await get(Uri.encodeFull(finalUrl));
     print("URL: ${Uri.encodeFull(finalUrl)}");

     if (response.statusCode == 200) {
       // we get the actual mapped model ( dart object )
       print("weather data: ${response.body}");
         return WeatherForecastModel.fromJson(json.decode(response.body));
     }else {
       throw Exception("Error getting weather forecast");
     }


   }
}