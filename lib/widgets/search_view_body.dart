import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/services/get_weather_service.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          onSubmitted: (value) async {
            BlocProvider.of<GetWeatherCubit>(context)
                .getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            label: Text(
              'Search',
              style: TextStyle(fontSize: 20),
            ),
            hintText: 'Enter City Name',
            hintStyle: const TextStyle(fontSize: 20),
            suffixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 35, horizontal: 12),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
