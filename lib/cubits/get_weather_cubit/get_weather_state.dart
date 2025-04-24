import '../../model/weather_model.dart';

class CurrentWeatherState {}

class InitialStateWeather extends CurrentWeatherState {}

class WeatherLoadedState extends CurrentWeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState({
    required this.weatherModel,
  });
}

class WeatherFailureState extends CurrentWeatherState {}
