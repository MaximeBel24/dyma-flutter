import 'package:flutter/material.dart';
import 'package:my_first_app/home.dart';

main() {
  runApp(DymaTrip());
}

class DymaTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
