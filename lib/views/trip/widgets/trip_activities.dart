import 'package:flutter/material.dart';
import '../../../models/activity_model.dart';
import 'trip_activity_list.dart';

class TripActivities extends StatelessWidget {
  final List<Activity> activities;

  const TripActivities({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              tabs: const <Widget>[
                Tab(
                  text: 'En cours',
                ),
                Tab(
                  text: 'Terminées',
                )
              ],
            ),
          ),
          SizedBox(
            height: 600,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                TripActivityList(
                  activities: activities,
                ),
                TripActivityList(
                  activities: activities,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}