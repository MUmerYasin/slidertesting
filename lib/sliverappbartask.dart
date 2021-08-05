import 'package:flutter/material.dart';

class SliverAppBarTask extends StatefulWidget {
  const SliverAppBarTask({Key? key}) : super(key: key);

  @override
  _SliverAppBarTaskState createState() => _SliverAppBarTaskState();
}

class _SliverAppBarTaskState extends State<SliverAppBarTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 100,
            backgroundColor: Colors.teal[800],

            title: const Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
              actions: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: IconButton(
                    icon: const Icon(Icons.search_sharp),
                    onPressed: () {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Bell is Ringing')));
                    },
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: IconButton(
                    icon: const Icon(Icons.more_vert_sharp),
                    onPressed: () {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Bell is Ringing')));
                    },
                  ),
                ),



              ],

          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    width: 300.0,
                    child: Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Image(
                          image: AssetImage(
                            'assets/imagesall/2.jpg',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return const SizedBox(
                  // color: index.isOdd ? Colors.white : Colors.black12,
                  height: 230.0,
                  child: Center(
                    // child: Text('$index', textScaleFactor: 2),
                    child: Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Image(
                          image: AssetImage(
                            'assets/imagesall/1.jpg',
                          ),
                        ),
                      ),
                    ),

                  ),
                );
              },
              childCount: 6,
            ),
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return Container(
          //
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: const Center(
          //           // child: Text('$index', textScaleFactor: 2),
          //           child: Image(
          //             image: AssetImage(
          //               'assets/imagesall/2.jpg',
          //             ),
          //           ),
          //
          //         ),
          //       );
          //     },
          //     childCount: 10,
          //   ),
          // ),


          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.red[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 10,
            ),
          ),

          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.brown[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
              childCount: 9,
            ),

          ),

        ],
      ),
    );
  }
}
