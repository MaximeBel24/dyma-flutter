import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homepage',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
          backgroundColor: Colors.purple[200],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.sync),
              onPressed: () => {print('click')},
            )
          ],
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () => {}, 
                child: Text('Je suis un bouton')
              ),
              ElevatedButton(
                onPressed: () => {}, 
                child: Text('Je suis un bouton',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[200]
                ),
              )
            ]),
          alignment: Alignment.center,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_land),
              label: 'land'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.motorcycle),
              label: 'moveTo'
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.00),
                child: Row(
                  children: [
                    Icon(Icons.supervised_user_circle),
                    Padding(
                      padding: EdgeInsets.only(left: 15.00),
                      child: Text('profil')
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.surround_sound),
                  Text('sound')
                ],
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      )
    );
  }
}

