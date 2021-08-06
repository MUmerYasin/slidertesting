import 'package:flutter/material.dart';

class SettingsFileC extends StatefulWidget {
  const SettingsFileC({Key? key}) : super(key: key);

  @override
  _SettingsFileCState createState() => _SettingsFileCState();
}

class _SettingsFileCState extends State<SettingsFileC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e54),
        title: const Text("Settings File"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF075e54), // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
