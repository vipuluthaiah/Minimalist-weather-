import 'package:flutter/material.dart';
import 'package:weater/model/json.dart';
import 'package:weater/network/network.dart';
import 'package:weater/ui/citydetails.dart';
import 'package:weater/ui/sec.dart';
import 'package:weater/ui/three.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<WeatherForecastModel> forecast;
  String _cityName;
  @override
  void initState() {
    super.initState();
    forecast = getWeather(cityName: _cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: ListView(
        children: <Widget>[
          textFieldView(), //search bar

          Container(
            // child: Text("Hello"),
            child: FutureBuilder(
                future: forecast,
                builder: (BuildContext context,
                    AsyncSnapshot<WeatherForecastModel> snapshot) {
                  if (snapshot.hasData) {
                    // return Text("All Good");
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CityDetails(
                                  snapshot: snapshot,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CityUisec(
                                  snapshot: snapshot,
                                ),
                              ],
                            ),
                          ),
                          CityUithree(snapshot: snapshot)
                          // midView(snapshot),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.redAccent,
                        ),
                      ),
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
  


  Widget textFieldView() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      
      child: Container(

        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(Radius.circular(8))
        // ),
        color: Colors.white,
        
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter City Name",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.all(8),
          ),
          onSubmitted: (value) {
            setState(() {
              _cityName = value;
              forecast = getWeather(cityName: _cityName);
            });
          },
        ),
      ),
    );
  }

  Future<WeatherForecastModel> getWeather({String cityName}) =>
      new Network().getWeatherForecast(cityName: _cityName);
}
