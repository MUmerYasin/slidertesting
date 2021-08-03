import 'package:flutter/material.dart';

class SliverAppBarTestingC extends StatefulWidget {
  const SliverAppBarTestingC({Key? key}) : super(key: key);

  @override
  _SliverAppBarTestingCState createState() => _SliverAppBarTestingCState();
}

class _SliverAppBarTestingCState extends State<SliverAppBarTestingC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text('Sliver App Bar Testing'),),
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.amber,
            floating: false,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Basic Slivers App Bar'),
            ),
          ),
        ],
      ),

    );
  }
}
