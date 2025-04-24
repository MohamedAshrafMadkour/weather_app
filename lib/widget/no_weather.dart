import 'package:flutter/material.dart';

class NoWeatherNews extends StatelessWidget {
  const NoWeatherNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' There are no weather updates 🤷‍♂️',
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            'Start searching now 🔍',
            style: TextStyle(fontSize: 28),
          )
        ],
      ),
    );
  }
}
