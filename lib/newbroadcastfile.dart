import 'package:flutter/material.dart';

class NewBroadcastFileC extends StatefulWidget {
  const NewBroadcastFileC({Key? key}) : super(key: key);

  @override
  _NewBroadcastFileCState createState() => _NewBroadcastFileCState();
}

class _NewBroadcastFileCState extends State<NewBroadcastFileC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e54),
        title: const Text("New Broadcast"),
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
