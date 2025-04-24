class WeatherModel {
  final String cityName;
  final DateTime dataUpdate;
  final double averageTemp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;
  final String weatherImage;
  WeatherModel({
    required this.cityName,
    required this.dataUpdate,
    required this.averageTemp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherImage,
    required this.weatherCondition,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        dataUpdate: DateTime.parse(json['current']['last_updated']),
        averageTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        weatherImage: json['forecast']['forecastday'][0]['day']['condition']
            ['icon'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
