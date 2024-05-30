part of 'get_weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class GetWeatherInitial extends WeatherState {}

final class WeatherLoadedState extends WeatherState {}

final class WeatherFaliuerState extends WeatherState {
  final String errorMessage;

  WeatherFaliuerState({required this.errorMessage});
}
final class LoadingData extends WeatherState {}
