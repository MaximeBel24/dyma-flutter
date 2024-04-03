import 'package:flutter/material.dart';
import 'package:my_first_app/city_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() =>  _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {'name': 'Paris', 'image': 'assets/images/paris.jpg', 'checked': false},
    {'name': 'Lyon', 'image': 'assets/images/lyon.jpg', 'checked': false},
    {'name': 'Londres', 'image': 'assets/images/londres.jpg', 'checked': false},
    {'name': 'Tokyo', 'image': 'assets/images/tokyo.jpg', 'checked': false},
  ];

  void switchChecked(city) {
    var index = cities.indexOf(city);
    setState(() {
      cities[index]['checked'] = !cities[index]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    cities.map((city) => print(city));

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Dyma Trip'),
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cities.map(
            (city) {
              return CityCard(
                name: city['name'],
                image: city['image'],
                checked: city['checked'],
                updateChecked: () {
                  switchChecked(city);
                },
              );
            }).toList(),
        ),
      ),
    );
  }
}
