import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Theme/Theme.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/services/get_weather_service.dart';
import 'package:weather_app/views/Home_View.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/weather_data_view.dart';

void main() {
  WeatherService(dio: Dio()).getForcastWeather();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.light(
                  surface: getThemeColor(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.weatherCondition),
                ),
              ),
              debugShowCheckedModeBanner: false,
              routes: {
                HomeView.id: (context) => const HomeView(),
                SearchView.id: (context) => const SearchView(),
                WeatherDataView.id: (context) => const WeatherDataView(),
              },
              initialRoute: HomeView.id,
            );
          },
        );
      }),
    );
  }
}
