import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Slider ", style: TextStyle(fontSize: 20.0),),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Carousel Slider ", style: TextStyle(fontSize: 20.0),),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                      enableInfiniteScroll: true,
                    // enableInfiniteScroll = true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                    // reverse = true,
                      ),
                  items: [1, 2, 3, 4, 5, 6].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                          'assets/imagesall/$i.jpg')),
                                ),
                                Text(
                                  'Image Name: $i',
                                  style: const TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ));
                      },
                    );
                  }).toList(),

                ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
