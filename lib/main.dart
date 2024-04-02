import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
          image: AssetImage(
            'assets/bird.jpg'
          ),
          width: 300.0,
          height: 600.0,
        )
    );
  }
}

