import 'package:dio/dio.dart';
import 'package:today_weather/model/weather_model.dart';

class WeatherServices {
  final Dio dio;

  const WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    final String baseUrl = 'https://api.weatherapi.com/v1';
    final String apiKey = '5f40787b5cdc436ba81142818252201';
    try {
      final response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=10');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'oops there was an error';
      throw Exception(errorMessage);
    }
  }
}
