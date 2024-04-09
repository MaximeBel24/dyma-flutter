import 'package:flutter/material.dart';

import '../../../models/activity_model.dart';
import 'activity_card.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;
  final Function toggleActivity;
  final List<String> selectedActivities;

  const ActivityList(
      {super.key,
      required this.activities,
      required this.toggleActivity,
      required this.selectedActivities});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200,
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
      children: activities
          .map((activity) => ActivityCard(
                activity: activity,
                isSelected: selectedActivities.contains(activity.id),
                toggleActivity: () => toggleActivity(activity.id),
              ))
          .toList(),
    );
  }
}
