import 'package:flutter/material.dart';

class NewGroupFileC extends StatefulWidget {
  const NewGroupFileC({Key? key}) : super(key: key);

  @override
  _NewGroupFileCState createState() => _NewGroupFileCState();
}

class _NewGroupFileCState extends State<NewGroupFileC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075e54),
        title: const Text("New group"),
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
