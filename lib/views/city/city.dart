import 'package:flutter/material.dart';
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
  Trip mytrip = Trip(activities: [], city: 'Paris');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          title: const Text(
            'Paris',
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
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  color: Colors.white,
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('Choisissez une date')),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue
                          ),
                          child: Text('Selectionner une date',style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                        )
                      ],
                    )
                  ]),
                ),
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
