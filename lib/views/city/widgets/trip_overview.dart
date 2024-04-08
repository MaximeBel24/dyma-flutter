// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/trip.model.dart';

class TripOverview extends StatelessWidget {
  final VoidCallback setDate;
  final Trip mytrip;

  double get amount {
    return 0;
  }

  const TripOverview({super.key, required this.setDate, required this.mytrip});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      color: Colors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Paris',
                style: TextStyle(
                    fontSize: 25, decoration: TextDecoration.underline)),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  mytrip.date != null
                      ? DateFormat("dd/MM/y").format(mytrip.date)
                      : 'Selectionnez une date',
                  style: const TextStyle(fontSize: 20),
                )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan[600]),
                  onPressed: setDate,
                  child: const Text(
                    'Selectionner une date',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(children: <Widget>[
              const Expanded(child: Text('Montant par personne')),
              Text('$amount €')
            ])
          ]),
    );
  }
}
