import 'package:flutter/material.dart';
import 'package:my_first_app/views/trip/widgets/trip_city_bar.dart';
import 'package:my_first_app/views/trip/widgets/trip_activities.dart';
import 'package:provider/provider.dart';
import '../../models/city_model.dart';
import '../../providers/city_provider.dart';

class TripView extends StatelessWidget {
  static const String routeName = '/trip';

  const TripView({super.key});

  @override
  Widget build(BuildContext context) {
    final String cityName = (ModalRoute.of(context)!.settings.arguments 
    as Map<String, String>)['cityName']!;
    final String tripId = (ModalRoute.of(context)!.settings.arguments 
    as Map<String, String>)['tripId']!;
    final City city = Provider.of<CityProvider>(context, listen: false)
        .getCityByName(cityName);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TripCityBar(
              city: city
            ),
            TripActivities(tripId: tripId)
          ],
        ),
      ),
    );
  }
}
