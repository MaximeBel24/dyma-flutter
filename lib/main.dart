import 'package:flutter/material.dart';
import 'views/city/city.dart';
// import 'package:my_first_app/views/home/home.dart';

main() {
  runApp(DymaTrip());
}

class DymaTrip extends StatelessWidget {
  const DymaTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: City(),
    );
  }
}
