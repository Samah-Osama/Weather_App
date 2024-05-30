import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/Theme/Theme.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/Custom_Card.dart';
import 'package:weather_app/widgets/custom_forcast_widget.dart';

class WeatherDataView extends StatelessWidget {
  const WeatherDataView({super.key});
  static String id = 'WeatherDataView';

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(weatherModel.weatherCondition),
            getThemeColor(weatherModel.weatherCondition).shade300,
            getThemeColor(weatherModel.weatherCondition).shade100,
          ],
        ),
      ),
      child: ListView(
        children: [
          Center(
            child: Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(weatherModel.image.contains('https:')
                    ? weatherModel.image
                    : 'https:${weatherModel.image}'),
                Text(
                  weatherModel.temp.round().toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Max temp : ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Min temp : ${weatherModel.minTemp.round()}',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Text(weatherModel.weatherCondition,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomForcastDaysWidget(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                    text: 'SunRise',
                    time: weatherModel.sunRise,
                    icon: Icons.sunny,
                    iconColor: Colors.yellow),
                CustomCard(
                  text: 'SunSet',
                  time: weatherModel.sunSet,
                  icon: Icons.sunny,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
