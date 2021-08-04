import 'package:flutter/material.dart';

class SliverAppBarTestingC extends StatefulWidget {
  const SliverAppBarTestingC({Key? key}) : super(key: key);

  @override
  _SliverAppBarTestingCState createState() => _SliverAppBarTestingCState();
}

class _SliverAppBarTestingCState extends State<SliverAppBarTestingC> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title:const Text('Sliver App Bar Testing'),),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 200.0,
            flexibleSpace: const FlexibleSpaceBar(

              title: Text(
                'SliverAppBar',
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
              background: Image(
                image: AssetImage(
                  'assets/imagesall/1.jpg',
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                child: Center(
                  child: Text('Scroll to see the SliverAppBar in effect.',style: TextStyle(fontSize: 15.0,)),
                ),
              ),
            ),
          ),

          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Text('SliverList',style: TextStyle(fontSize: 20.0,),),
          // ),


          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 50.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 2),
                  ),
                );
              },
              childCount: 5,
            ),
          ),





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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('pinned'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _pinned = val;
                      });
                    },
                    value: _pinned,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('snap'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _snap = val;
                        // Snapping only applies when the app bar is floating.
                        _floating = _floating || _snap;
                      });
                    },
                    value: _snap,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('floating'),
                  Switch(
                    onChanged: (bool val) {
                      setState(() {
                        _floating = val;
                        _snap = _snap && _floating;
                      });
                    },
                    value: _floating,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
