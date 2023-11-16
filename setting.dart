import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    appBar: AppBar(title:('Setting')),
    body: Center(
    child: Text('Setting screen', style: TextStyle(fontSize: 40)),
    )
    );
  }
}
