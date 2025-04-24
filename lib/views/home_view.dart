import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:today_weather/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:today_weather/views/weather_search.dart';
import 'package:today_weather/widget/get_colors.dart';
import 'package:today_weather/widget/no_weather.dart';
import 'package:today_weather/widget/weather_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: myColors(BlocProvider.of<GetWeatherCubit>(context)
            .weatherModel
            ?.weatherCondition),
        title: const Text(
          'WeatherApp',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WeatherSearch();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, CurrentWeatherState>(
        builder: (context, state) {
          if (state is InitialStateWeather) {
            return const NoWeatherNews();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoView(
              weather: state.weatherModel,
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.blue[300]!,
                  Colors.blue[500]!,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'oops there is an error 😔 ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Try again please!!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
//how to use themedata with primary Switch using BlocProvider in flutter
