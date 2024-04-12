import 'package:flutter/material.dart';
import '../../models/city_model.dart';
import './widgets/city_card.dart';

class HomeView extends StatefulWidget {
  static const String routeName = '/';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<City> cities = [
    City(name: 'Paris', image: 'assets/images/paris.jpg'),
    City(name: 'Lyon', image: 'assets/images/lyon.jpg'),
    City(name: 'Londres', image: 'assets/images/londres.jpg'),
    City(name: 'Tokyo', image: 'assets/images/tokyo.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    cities.map((city) => print(city));

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Dyma Trip'),
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColor.withOpacity(0.5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              ),
            )
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              onTap: () {
                
              },
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: cities
              .map((city) => CityCard(
              city: city
          ))
              .toList(),
        ),
      ),
    );
  }
}