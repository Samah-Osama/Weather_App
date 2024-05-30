import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/views/no_weather_body.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/weather_data_view.dart';

import 'package:weather_app/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Weather',
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SearchView.id);
                },
                icon: const Icon(
                  Icons.search,
                  size: 30,
                ))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
          if (state is GetWeatherInitial) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherDataView();
          } else if (state is WeatherFaliuerState) {
            return Text(state.errorMessage);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }));
  }
}
