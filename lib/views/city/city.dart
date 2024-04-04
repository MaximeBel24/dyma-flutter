import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.chevron_left, color: Colors.white,),
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
        child: ListView.separated(
            itemCount: widget.activities.length,
            itemBuilder: (context, index) => ActivityCard(
                  activity: widget.activities[index],
                ),
            separatorBuilder: (context, index) => const Divider(
                  color: Colors.blue,
                  endIndent: 100,
                  indent: 100,
                  height: 50,
                )),
      ),
    );
  }
}
