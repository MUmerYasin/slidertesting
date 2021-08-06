import 'package:flutter/material.dart';

class LinkedDevicesC extends StatefulWidget {
  const LinkedDevicesC({Key? key}) : super(key: key);

  @override
  _LinkedDevicesCState createState() => _LinkedDevicesCState();
}

class _LinkedDevicesCState extends State<LinkedDevicesC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e54),
        title: const Text("Linked Devices"),
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
