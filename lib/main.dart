// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slidertesting/nestedscrolviewtesting.dart';
// import 'package:slidertesting/sliverappbartask.dart';
// import 'package:slidertesting/appbartesting.dart';
// import 'package:slidertesting/sliverappbartesting.dart';
// import 'package:device_preview/device_preview.dart';

// import 'dart:io';


// import 'package:device_preview/plugins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path;

// import 'basic.dart';


void main() {
  // GestureBinding!.instance.resamplingEnabled = true; // Set this flag.

  runApp(const MyApp());
  // runApp(const AppBarTestingC());
}

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => const MyApp(), // Wrap your app
//   ),
// );


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),

      // home: const SliverAppBarTestingC(),
      // home: const AppBarTestingC(),
      // home: const SliverAppBarTask(),
      home: const NestedScrolViewTestingC(),

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
  // int _current = 0;
  // final CarouselController _controller = CarouselController();

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
                    // aspectRatio: 2.0,
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
                // CarouselSlider.builder(
                //   itemCount: 100,
                //   options: CarouselOptions(
                // aspectRatio: 2.0,
                // enlargeCenterPage: true,
                // autoPlay: true,
                //   ),
                //   itemBuilder: (ctx, index, realIdx) {
                // return Text(index.toString());
                //   },
                // ),
              ],
            ),

            Row(
              children: const [
                Divider(),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Expanded(child: Text("vertical Carousel Slider ", style: TextStyle(fontSize: 20.0),)),
                ),
                SizedBox(height: 40.0,),
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
                      scrollDirection: Axis.vertical,
                      // aspectRatio: 2.0,
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
