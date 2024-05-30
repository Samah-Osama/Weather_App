import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Models/forcast_model.dart';
import 'package:weather_app/Models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService({required this.dio});
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'a88c1e58e26548ddb13100220242105';

  Future<WeatherModel> getWeatherService({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10');

      WeatherModel weatherData = WeatherModel.fromJson(response.data);

      return weatherData;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]["message"] ??
          'Oops there is an error try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(
        'Oops there is an error try later aaaaaa',
      );
    }
  }

  Future<List<ForcastModel>> getForcastWeather() async {
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=cairo&days=10');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> weatherList = jsonData["forecast"]["forecastday"];
    List<ForcastModel> forcastWeatherList = [];
    for (var forecastday in weatherList) {
      forcastWeatherList.add(ForcastModel.fromJson(forecastday));
    }
    print(forcastWeatherList);
    return forcastWeatherList;
  }
}
