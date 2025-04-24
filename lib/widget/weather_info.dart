import 'package:flutter/material.dart';

import 'package:today_weather/model/weather_model.dart';
import 'package:today_weather/widget/get_colors.dart';

class WeatherInfoView extends StatelessWidget {
  const WeatherInfoView({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            myColors(weather.weatherCondition),
            myColors(weather.weatherCondition)[300]!,
            myColors(weather.weatherCondition)[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weather.cityName,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'updated at : ${weather.dataUpdate.hour}:${weather.dataUpdate.minute}',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                weather.weatherImage.contains('https:')
                    ? Image.network(weather.weatherImage)
                    : Image.network('https:${weather.weatherImage}'),
                Text(
                  weather.averageTemp.round().toString(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Text(
                      'maxTemp :${weather.maxTemp.round()}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'minTemp :${weather.minTemp.round()}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 32),
            Text(
              weather.weatherCondition,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
