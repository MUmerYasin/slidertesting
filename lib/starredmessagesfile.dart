import 'package:flutter/material.dart';

class StarredMessagesC extends StatefulWidget {
  const StarredMessagesC({Key? key}) : super(key: key);

  @override
  _StarredMessagesCState createState() => _StarredMessagesCState();
}

class _StarredMessagesCState extends State<StarredMessagesC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e54),
        title: const Text("Starred Messages"),
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
