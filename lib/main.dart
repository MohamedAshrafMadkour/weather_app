import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:today_weather/widget/get_colors.dart';
import 'cubits/get_weather_cubit/get_weather_cubit.dart';
import 'cubits/get_weather_cubit/get_weather_state.dart';
import 'views/home_view.dart';

void main() {
  runApp(const TodayWeather());
}

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(InitialStateWeather()),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, CurrentWeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  useMaterial3: false,
                  primarySwatch: myColors(
                      BlocProvider.of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.weatherCondition)),
              home: const HomePage(),
            );
          },
        ),
      ),
    );
  }
}
