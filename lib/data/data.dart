import '../models/city_model.dart';

import '../models/activity_model.dart';
import '../models/trip_model.dart';

List<City> cities = [
  City(
    image: 'assets/images/paris.jpg',
    name: 'Paris',
    activities: [
      Activity(
          image: 'assets/images/activities/louvre.jpg',
          name: 'Le Louvre',
          id: 'a1',
          city: 'Paris',
          price: 12.00),
      Activity(
          image: 'assets/images/activities/notre_dame.jpg',
          name: 'Notre Dame',
          id: 'a2',
          city: 'Paris',
          price: 13.00),
      Activity(
          image: 'assets/images/activities/arc_triomphe.jpg',
          name: 'Arc de Triomphe',
          id: 'a3',
          city: 'Paris',
          price: 14.00),
      Activity(
          city: 'Paris',
          image: 'assets/images/activities/tour_eiffel.jpg',
          name: 'Tour Eiffel',
          id: 'a4',
          price: 15.00),
      Activity(
          city: 'Paris',
          image: 'assets/images/activities/sacre_coeur.jpg',
          name: 'Sacré coeur',
          id: 'a5',
          price: 16.00),
      Activity(
          city: 'Paris',
          image: 'assets/images/activities/luxembourg.jpg',
          name: 'Jardin du luxembourg',
          id: 'a6',
          price: 17.00),
    ],
  ),
  City(
    image: 'assets/images/lyon.jpg', 
    name: 'Lyon', 
    activities: [
      Activity(
        image: 'assets/images/activities/opera_lyon.jpg',
        name: 'Opéra',
        id: 'l1',
        city: 'Lyon',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/place_bellecour.jpg',
        name: 'Place Bellecour',
        id: 'l2',
        city: 'Lyon',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/basilique_lyon.jpg',
        name: 'Basilique Notre-Dame de Fourvière',
        id: 'l3',
        city: 'Lyon',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/mairie_lyon.jpg',
        name: 'Mairie',
        id: 'l4',
        city: 'Lyon',
        price: 100.00,
      ),
  ]),
    City(
    image: 'assets/images/londres.jpg', 
    name: 'Londres', 
    activities: [
      Activity(
        image: 'assets/images/activities/big_ben.jpg',
        name: 'Big Ben',
        id: 'ld1',
        city: 'Londres',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/tower_bridge.jpg',
        name: 'Tower Bridge',
        id: 'ld2',
        city: 'Londres',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/london_eye.jpg',
        name: 'London Eye',
        id: 'ld3',
        city: 'Londres',
        price: 100.00,
      ),
      Activity(
        image: 'assets/images/activities/london_tower.jpg',
        name: 'Tour de Londres',
        id: 'ld4',
        city: 'Londres',
        price: 100.00,
      ),
  ])
];


List<Trip> trips = [
  Trip(
    activities: [
      Activity(
        image: 'images/activities/louvre.jpeg',
        name: 'Louvre',
        id: 'a1',
        city: 'Paris',
        price: 12.00,
      ),
      Activity(
        image: 'images/activities/sacre_coeur.jpeg',
        name: 'Sacre Coeur',
        id: 'a5',
        city: 'Paris',
        price: 0.00,
      ),
      Activity(
        image: 'images/activities/notre_dame.jpeg',
        name: 'Notre-Dame',
        id: 'a2',
        city: 'Paris',
        price: 0.00,
      ),
    ],
    city: 'Paris',
    date: DateTime.now().add(const Duration(days: 1)),
  ),
  Trip(
      activities: [],
      city: 'Lyon',
      date: DateTime.now().add(const Duration(days: 2))),
  Trip(
      activities: [],
      city: 'Nice',
      date: DateTime.now().subtract(const Duration(days: 1))),
];
