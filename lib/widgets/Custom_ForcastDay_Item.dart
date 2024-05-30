import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';

class CustomForcastDayItem extends StatelessWidget {
  const CustomForcastDayItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('date'),
          Icon(Icons.sunny),
          // Image.network(weatherModel.forCast.image.contains('https:')
          //     ? weatherModel.forCast.image
          //     : 'https:${weatherModel.forCast.image}'),
          Column(
            children: [
              Text('maxTemp : 22'),
              Text('minTemp :  19'),
            ],
          ),
        ],
      ),
    );
  }
}
