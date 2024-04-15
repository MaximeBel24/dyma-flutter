import 'package:flutter/material.dart';
import 'package:my_first_app/views/trip/widgets/trip_city_bar.dart';
import 'package:my_first_app/views/trip/widgets/trip_activities.dart';

import '../../models/city_model.dart';
import '../../models/trip_model.dart';

class TripView extends StatefulWidget {
  static const String routeName = '/trip';

  final Trip trip;
  final City city;

  const TripView({super.key, required this.trip, required this.city});

  @override
  State<TripView> createState() => _TripViewState();
}

class _TripViewState extends State<TripView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TripCityBar(
              city: widget.city
            ),
            TripActivities(activities: widget.trip.activities)
          ],
        ),
      ),
    );
  }
}
