import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/Models/weather_model.dart';
import 'package:weather_app/services/get_weather_service.dart';

part 'get_weather_cubit_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(GetWeatherInitial());
  WeatherModel? weatherModel;

  getWeather({required String cityName}) async {
    emit(LoadingData());
    try {
      weatherModel = await WeatherService(dio: Dio())
          .getWeatherService(cityName: cityName);
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFaliuerState(errorMessage: e.toString()));
    }
  }
}
