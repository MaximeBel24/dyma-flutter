import 'package:flutter/material.dart';
import 'package:my_first_app/views/city/widgets/activity_list.dart';
import 'package:my_first_app/views/city/widgets/trip_activity_list.dart';
import 'package:my_first_app/views/city/widgets/trip_overview.dart';
import '../../models/trip.model.dart';
import '../../models/activity.model.dart';
import '../../data/data.dart' as data;

class City extends StatefulWidget {
  final List<Activity> activities = data.activities;

  City({super.key});
  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  late Trip mytrip;
  late int index;

  @override
  void initState() {
    super.initState();
    mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
    index = 0;
  }

  List<Activity> get tripActivities {
    return widget.activities
        .where((activity) => mytrip.activities.contains(activity.id))
        .toList();
  }

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

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  void toggleActivity(String id) {
    setState(() {
      mytrip.activities.contains(id)
          ? mytrip.activities.remove(id)
          : mytrip.activities.add(id);
    });
  }

  void deleteTripActivity(String id) {
    setState(() {
      mytrip.activities.remove(id);
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
                child: index == 0
                    ? ActivityList(
                        activities: widget.activities,
                        selectedActivities: mytrip.activities,
                        toggleActivity: toggleActivity,
                      )
                    : TripActivityList(
                      activities: tripActivities,
                      deleteTripActivity: deleteTripActivity,
                    ),
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Colors.cyan,
            ),
            label: 'Decouverte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars, color: Colors.cyan),
            label: 'Mes activités',
          )
        ],
        onTap: switchIndex,
      ),
    );
  }
}
