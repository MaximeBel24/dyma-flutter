import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_first_app/models/trip_model.dart';
import '../data/data.dart' as data;

class TripProvider extends ChangeNotifier {
  final List<Trip> _trips = data.trips;

  UnmodifiableListView<Trip> get trips => UnmodifiableListView(_trips);

  void addTrip(Trip trip) {
    trips.add(trip);
    notifyListeners();
  }
}