class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final num temp;
  final num maxTemp;
  final num minTemp;
  final String weatherCondition;
  final String sunRise;
  final String sunSet;
  final ForcastModel forCast;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition,
      required this.sunRise,
      required this.sunSet,
      required this.forCast});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json["location"]['name'],
        date: DateTime.parse(json['current']['last_updated']),
        image: json['forecast']["forecastday"][0]["day"]["condition"]["icon"],
        temp: json['forecast']["forecastday"][0]["day"]["avgtemp_c"],
        maxTemp: json['forecast']["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: json['forecast']["forecastday"][0]["day"]["mintemp_c"],
        weatherCondition: json['forecast']["forecastday"][0]["day"]["condition"]
            ["text"],
        sunRise: json['forecast']["forecastday"][0]["astro"]["sunrise"],
        sunSet: json['forecast']["forecastday"][0]["astro"]["sunset"],
        forCast: json[ForcastModel.fromJson("forecast")]);
  }
}

class ForcastModel {
  final DateTime date;
  final num maxTemp;
  final num minTemp;
  final String image;

  ForcastModel(
      {required this.date,
      required this.maxTemp,
      required this.minTemp,
      required this.image});

  factory ForcastModel.fromJson(json) {
    return ForcastModel(
        date: DateTime.parse(json["date"]),
        maxTemp: json["day"]["maxtemp_c"],
        minTemp: json["day"]["mintemp_c"],
        image: json["day"]["condition"]["icon"]);
  }
}
