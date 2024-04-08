import 'package:flutter/material.dart';
import 'views/city/city.dart';
import 'widgets/data.dart';

void main() => runApp(const DymaTrip());

class DymaTrip extends StatelessWidget {
  const DymaTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Data(
        child: City(),
      ),
    );
  }
}