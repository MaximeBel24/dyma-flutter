import 'package:flutter/material.dart';
import 'views/trip/trip_view.dart';
import 'views/404/not_found.dart';
import 'views/trips/trips_view.dart';
import 'package:provider/provider.dart';
import 'providers/city_provider.dart';
import './views/home/home_view.dart';
import 'providers/trip_provider.dart';
import 'views/city/city_view.dart';

main() {
  runApp(const DymaTrip());
}

class DymaTrip extends StatefulWidget {
  const DymaTrip({super.key});

  @override
  State<DymaTrip> createState() => _DymaTripState();
}

class _DymaTripState extends State<DymaTrip> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CityProvider()),
        ChangeNotifierProvider.value(value: TripProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomeView(),
            CityView.routeName: (context) => const CityView(),
            TripsView.routeName: (context) => const TripsView(),
            TripView.routeName:(context) => const TripView(),
          },
          onUnknownRoute: (_) => MaterialPageRoute(
            builder: (_) => const NotFound(),
          ),
        ),
      );
  }
}