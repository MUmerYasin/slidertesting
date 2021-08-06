import 'package:flutter/material.dart';
import 'package:slidertesting/linkeddevicesfile.dart';
import 'package:slidertesting/newbroadcastfile.dart';
import 'package:slidertesting/newgroupfile.dart';
import 'package:slidertesting/settingsfile.dart';
import 'package:slidertesting/starredmessagesfile.dart';
// import 'package:device_preview/device_preview.dart';
class NestedScrolViewTestingC extends StatefulWidget {
  const NestedScrolViewTestingC({Key? key}) : super(key: key);

  @override
  _NestedScrolViewTestingCState createState() => _NestedScrolViewTestingCState();
}

class _NestedScrolViewTestingCState extends State<NestedScrolViewTestingC> {



  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  // String whatsAppFirstDropDownValue = 'New group';
  //
  // var whatsAppFirstDropDownList = [
  //   "New group",
  //   "New broadcast",
  //   "Linked devices",
  //   "Starred messages",
  //   "Settings"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
          initialIndex: 1,

        child: NestedScrollView(
          // headerSliverBuilder: (context, value){
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return [
               SliverAppBar(

                pinned: true,
                snap: true,
                floating: true,
                expandedHeight: 100,
                backgroundColor: const Color(0xFF075e54),

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
                      icon: const Icon(Icons.search_sharp,
                        color: Colors.white,),

                      onPressed: () {
                        showSearch(context: context, delegate: DataSearch());

                        // setState(() {
                        //
                        // });
                      },
                    ),
                  ),
                  Flexible(
                    child: PopupMenuButton<int>(
                      key: _key,
                      itemBuilder: (context) {
                        return <PopupMenuEntry<int>>  [

                          const PopupMenuItem(child: Text('New group'), value: 0),
                          const PopupMenuItem(child: Text('New broadcast'), value: 1),
                          const PopupMenuItem(child: Text('Linked devices'), value: 2),
                          const PopupMenuItem(child: Text('Starred messages'), value: 3),
                          const PopupMenuItem(child: Text('Settings'), value: 4),

                        ];
                      },
                      onSelected: (value) {
                        setState(
                          () {
                            switch (value) {
                              case 0:
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NewGroupFileC()
                                    ),
                                  );
                                  break;
                                }
                              case 1:
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const NewBroadcastFileC()
                                    ),
                                  );
                                  break;
                                }
                              case 2:
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const LinkedDevicesC()
                                    ),
                                  );
                                  break;
                                }
                              case 3:
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const StarredMessagesC()
                                    ),
                                  );
                                  break;
                                }
                              case 4:
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const SettingsFileC()
                                    ),
                                  );
                                  break;
                                }
                            }
                          },
                        );
                      },
                    ),
                  ),

//                   Flexible(
//                     fit: FlexFit.loose,
//                     child: IconButton(
//                       icon: const Icon(Icons.more_vert_sharp,
//                         color: Colors.white,
//                       ),
//
//                       onPressed:
//                           () {
//
//
//
//                             // This is the type used by the popup menu below.
// //                             enum WhyFarther { harder, smarter, selfStarter, tradingCharter }
// //
// // // This menu button widget updates a _selection field (of type WhyFarther,
// // // not shown here).
// //                             PopupMenuButton<WhyFarther>(
// //                             onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
// //                             itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
// //                             const PopupMenuItem<WhyFarther>(
// //                             value: WhyFarther.harder,
// //                             child: Text('Working a lot harder'),
// //                             ),
// //                             const PopupMenuItem<WhyFarther>(
// //                             value: WhyFarther.smarter,
// //                             child: Text('Being a lot smarter'),
// //                             ),
// //                             const PopupMenuItem<WhyFarther>(
// //                             value: WhyFarther.selfStarter,
// //                             child: Text('Being a self-starter'),
// //                             ),
// //                             const PopupMenuItem<WhyFarther>(
// //                             value: WhyFarther.tradingCharter,
// //                             child: Text('Placed in charge of trading charter'),
// //                             ),
// //                             ],
// //                             );
//
//                             //
//                             // ListView(
//                             //   children: const <Widget>[
//                             //     ListTile(
//                             //       leading: Icon(Icons.map),
//                             //       title: Text('Map'),
//                             //     ),
//                             //     ListTile(
//                             //       leading: Icon(Icons.photo_album),
//                             //       title: Text('Album'),
//                             //     ),
//                             //     ListTile(
//                             //       leading: Icon(Icons.phone),
//                             //       title: Text('Phone'),
//                             //     ),
//                             //   ],
//                             // );
//
//
//                         // showDialog(
//                         //     context: context,
//                         //     builder: (BuildContext context) {
//                         //       return AlertDialog(
//                         // //         // title: const Text('Country List'),
//                         //         content: ListView(
//                         //           children: <Widget>[
//                         //             Column(
//                         //               // children: <Widget>[
//                         //               //   DropdownButton<String>(
//                         //               //     items: const <String>[
//                         //                     "New group",
//                         //                     "New broadcast",
//                         //                     "Linked devices",
//                         //                     "Starred messages",
//                         //                     "Settings"
//                             //             ].map((String value) {
//                             //                 return DropdownMenuItem<String>(
//                             //                   value: value,
//                             //                   child: Text(value),
//                             //                 );
//                             //               }).toList(),
//                             //               onChanged: (_) {},
//                             //             ),
//                             //           ],
//                             //         ),
//                             //       ],
//                             //     ),
//                             //   );
//                             // });
//
//                         // DropdownButton(
//                         //   isExpanded: true,
//                         //   value: whatsAppFirstDropDownValue,
//                         //   // icon: const Icon(
//                         //   //   Icons.arrow_downward,
//                         //   //   // color: Colors.white,
//                         //   // ),
//                         //   // iconSize: 15,
//                         //
//                         //   // elevation: 24,
//                         //   // dropdownColor: Colors.deepPurple,
//                         //   // style: const TextStyle(
//                         //   //   // color: Colors.white,
//                         //   //   // fontSize: 15.0,
//                         //   //   // backgroundColor: Colors.deepPurple,
//                         //   // ),
//                         //   // underline: Container(
//                         //   //   height: 2,
//                         //   //   //color: Colors.white,
//                         //   // ),
//                         //   items: whatsAppFirstDropDownList.map((whatsAppField) {
//                         //     return DropdownMenuItem(
//                         //       value: whatsAppField,
//                         //       child: Text(whatsAppField),
//                         //     );
//                         //   }).toList(),
//                         //   onChanged: (String? newValue) {
//                         //     setState(() {
//                         //       whatsAppFirstDropDownValue = newValue!;
//                         //     });
//                         //   },
//                         // );
//
//
//                         // setState(() {
//                         //
//                         // });
//                       },
//                     ),
//                   ),

                ],

                bottom: const TabBar(
                  // isScrollable: true,
                  // labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  indicatorColor: Colors.white,
                  // indicatorSize: TabBarIndicatorSize.label,

                  tabs: <Widget> [
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
              Center(
                child: Row(
                  children: const [
                    Text("App Bar Title"),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Expanded(
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
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: const Color(0xFF075e54),
                                radius: 20.0,
                                child: ClipRRect(

                                  child: SizedBox(
                                      // width: MediaQuery.of(context).size.width,
                                      child: Image.asset('assets/imagesall/6.jpg')),
                                  borderRadius: BorderRadius.circular(100.0),

                                ),
                              ),

                              // CircleAvatar(
                              //   // backgroundImage: const AssetImage("aassets/imagesall/2.jpg",),
                              //   // radius: 30.0,
                              //   child: ClipOval(
                              //     child: Image.asset(
                              //       'aassets/imagesall/2.jpg',
                              //     ),
                              //   ),
                              //        // Image: Image.asset(
                              //        //    'assets/dummy.jpg',
                              //        //    fit: BoxFit.contain,
                              //        //    matchTextDirection: true,
                              //        //    height: 50,
                              //        //  ),
                              //
                              // ),

                              title: const Text('M. Umer Yasin', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),),
                              subtitle: const Text('Hi, Welcome to New Flutter app testing.') ,
                            )
                        );
                      },
                    ),
                  ),

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Expanded(
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
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: const Color(0xFF075e54),
                                radius: 20.0,
                                child: ClipRRect(

                                  child: SizedBox(
                                    // width: MediaQuery.of(context).size.width,
                                      child: Image.asset('assets/imagesall/2.jpg')),
                                  borderRadius: BorderRadius.circular(100.0),

                                ),
                              ),


                              title: const Text('Muhammad Yasin', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),),
                              subtitle: const Text('Today, 4:12 PM') ,
                            )
                        );
                      },
                    ),
                  ),

                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 60,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                            height: 50,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: const Color(0xFF075e54),
                                radius: 20.0,
                                child: ClipRRect(
                                  child: SizedBox(
                                      // width: MediaQuery.of(context).size.width,
                                      child: Image.asset(
                                          'assets/imagesall/3.jpg')),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              title: const Text(
                                'Ch Abbas',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text(
                                  'July 28, 11:54 AM'),
                              trailing: const Icon(Icons.phone, color: Color(0xFF075e54),),
                            )
                        );
                      },
                    ),
                  ),
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





/// search bar
///

class DataSearch extends SearchDelegate<String> {
  final whatsAppSearch = [
    "Photos",
    "Videos",
    "Links",
    "GIFs",
    "Audio",
    "Documents",
  ];

  final recentWhatsAppSearch = [
    "Photos",
    "Videos",
    "Links",
    "GIFs",
    "Audio",
    "Documents",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: Card(
          // color: Colors.red,
          child: Center(
            child: Text(query),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentWhatsAppSearch
        : whatsAppSearch.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: const Icon(Icons.phone),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: const TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

