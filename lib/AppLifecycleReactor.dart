import 'package:flutter/material.dart';

void main() {
  runApp(const AppLifecycleReactor());
}

class AppLifecycleReactor extends StatefulWidget {
  const AppLifecycleReactor({super.key});

  @override
  State<AppLifecycleReactor> createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<AppLifecycleReactor>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  List<AppLifecycleState> notifications = [];

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      notifications.add(state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: notifications.isNotEmpty
            ? notifications
            .map((notif) => Text(
          notif.toString(),
          textDirection: TextDirection.ltr,
          style: const TextStyle(fontSize: 20),
        ))
            .toList()
            : [
          const Text(
            'Pas de notification',
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    );
  }
}