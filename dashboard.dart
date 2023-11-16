import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:('Dashboard')),
      body: Center(
        child: Text('Dashboard screen', style: TextStyle(fontSize: 40)),
      )
    );

  }
}