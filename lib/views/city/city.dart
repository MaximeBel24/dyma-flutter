import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_first_app/views/city/widgets/trip_overview.dart';
import '../../models/trip.model.dart';
import '../../models/activity.model.dart';
import '../../data/data.dart' as data;
import 'widgets/activity_card.dart';

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});
  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(activities: [], city: 'Paris', date: DateTime.now());

  void setDate() {
    showDatePicker(
            context: context,
            firstDate: DateTime.now(),
            initialDate: DateTime.now().add(const Duration(days: 1)),
            lastDate: DateTime(2025))
        .then((newDate) {
      if (newDate != null) {
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[600],
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          title: const Text(
            'Organisation voyage',
            style: TextStyle(color: Colors.white),
          ),
          actions: const <Widget>[
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TripOverview(setDate: setDate, mytrip: mytrip),
                Expanded(
                  child: GridView.extent(
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3,
                      children: widget.activities
                          .map((activity) => ActivityCard(activity: activity))
                          .toList()),
                )
              ],
            )));
  }
}
