import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'There is no weather 😔 start',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Text(
          'searching now 🔎',
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
