import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
class NestedScrolViewTestingC extends StatefulWidget {
  const NestedScrolViewTestingC({Key? key}) : super(key: key);

  @override
  _NestedScrolViewTestingCState createState() => _NestedScrolViewTestingCState();
}

class _NestedScrolViewTestingCState extends State<NestedScrolViewTestingC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          // headerSliverBuilder: (context, value){
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return [
              const SliverAppBar(

                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 100,
                backgroundColor: Colors.green,

                title: Text(
                  'WhatsApp',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                actions: <Widget>[
                  Flexible(
                    fit: FlexFit.loose,
                    child: IconButton(
                      icon: Icon(Icons.search_sharp,
                        color: Colors.white,),

                      onPressed: null,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: IconButton(
                      icon: Icon(Icons.more_vert_sharp,
                        color: Colors.white,),
                      onPressed: null,
                    ),
                  ),

                ],

                bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.camera_alt),),
                      Tab(text: 'CHATS',),
                      Tab(text: 'STATUS',),
                      Tab(text: 'CALLS',),

                    ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Row(
                children: const [
                  Text("App Bar Title"),
                ],
              ),

              Column(
                children: <Widget>[
                  const FlutterLogo(size: 100.0),
                  Expanded(
                    child: SizedBox(
                      height: 400.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 60,
                        itemBuilder: (BuildContext context, int index) {
                          // return Expanded(
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: <Widget>[
                          //       const Text('Parent'),
                          //       ListView.builder(
                          //           itemCount: 2,
                          //           physics: const ClampingScrollPhysics(),
                          //           shrinkWrap: true,
                          //           itemBuilder: (BuildContext context, int index) {
                          //             return const Text('Child');
                          //           }),
                          //     ],
                          //   ),
                          // );
                          return SizedBox(
                              height: 50,
                              child: Flexible(

                                child: Column(
                                  children: const[
                                    Expanded(
                                      child:  ListTile(
                                        leading: FlutterLogo(),
                                        title: Text('M. Umer Yasin'),
                                        subtitle: Text('Hi, Welcome') ,
                                      ),
                                    ),
                                    // Text('Item $index'),
                                  ],
                                ),
                              )
                          );
                        },
                      ),
                    ),
                  ),
                  const FlutterLogo(size: 100.0),
                ],
              ),

              Row(
                children: <Widget>[
                  const FlutterLogo(size: 100.0),
                  Expanded(
                    child: SizedBox(
                      height: 400.0,
                      child: ListView.builder(

                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 60,
                        itemBuilder: (BuildContext context, int index) {

                          //
                          return SizedBox(
                              height: 50,
                              child: Flexible(

                                child: Column(
                                  children: const[
                                    Expanded(
                                      child:  ListTile(
                                        leading: FlutterLogo(),
                                        title: Text('M. Umer Yasin'),
                                        subtitle: Text('Hi, Welcome') ,
                                      ),
                                    ),
                                    // Text('Item $index'),
                                  ],
                                ),
                              )
                          );
                        },
                      ),
                    ),
                  ),
                  const FlutterLogo(size: 100.0),
                ],
              ),
              Row(
                children: const [
                  Text("App Bar Title"),
                ],
              ),
              // buildImages(),
              // buildImages(),
            ],
          ),
        ),
      ),
    );



  }

  // Widget buildImages() =>
  //     GridView.builder(
  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 2
  //         ),
  //         itemCount:20,
  //             itemBuilder: (context, index) => ImageWidget( index),
  //     );
//
    Widget buildImages() =>
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
        );
}
