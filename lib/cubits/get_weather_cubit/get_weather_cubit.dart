import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_weather/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:today_weather/model/weather_model.dart';
import 'package:today_weather/services/weather_services.dart';

class GetWeatherCubit extends Cubit<CurrentWeatherState> {
  GetWeatherCubit(super.initialState);
  WeatherModel? weatherModel;

  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
