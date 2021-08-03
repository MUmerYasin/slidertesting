import 'package:flutter/material.dart';

class AppBarTestingC extends StatefulWidget {
  const AppBarTestingC({Key? key}) : super(key: key);

  @override
  _AppBarTestingCState createState() => _AppBarTestingCState();
}

class _AppBarTestingCState extends State<AppBarTestingC> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 20.0,
          leadingWidth: 400.0,
        leading: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 8.0,top: 4.0, bottom: 4.0,),

                      child: TextFormField(

                        // textAlign: TextAlign.left,
                        // expands: true,
                        style: const TextStyle(fontSize: 20.0,  color: Colors.white,),
                        //letterSpacing: 2,


                        decoration: const InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.all(8.0),

                          hintStyle: TextStyle( fontSize: 20.0,color: Colors.white,),
                          fillColor:  Colors.white38 ,
                          filled: true,

                            hintText: 'Search',
                          hoverColor: Colors.white,

                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0.0),

                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ), // icon is 48px widget.
                          ),


                          enabledBorder:  OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide:  BorderSide(color: Colors.white, width: 2.0),

                          ),
                          border:  OutlineInputBorder(),
                          // labelStyle: new TextStyle(color: Colors.green),

                            ),


                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // title: const Text('app bar testing'),

          // title: Container(
        //   child: Form(
        //     key: _formKey,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Expanded(
        //           child: TextFormField(
        //             // decoration: InputDecoration(
        //             //     border: UnderlineInputBorder(
        //             //         borderRadius:BorderRadius.circular(5.0)),
        //             //     hintText: 'Search'
        //             // labelText: 'Enter something',
        //             // ),
        //
        //             decoration: const InputDecoration(
        //               hintText: 'Search',
        //               border: OutlineInputBorder(),
        //               //   border: OutlineInputBorder(
        //               //   borderSide: BorderSide(
        //               //       color: Colors.red,
        //               //       width: 5.0),
        //               // ),
        //               // enabledBorder: OutlineInputBorder(
        //               //   borderSide: const BorderSide(width: 3, color: Colors.blue),
        //               //   borderRadius: BorderRadius.circular(15),
        //               // ),
        //               // focusedBorder: OutlineInputBorder(
        //               //   borderSide: const BorderSide(width: 3, color: Colors.red),
        //               //   borderRadius: BorderRadius.circular(15),
        //               // ),
        //             ),
        //
        //
        //             // The validator receives the text that the user has entered.
        //             validator: (value) {
        //               if (value == null || value.isEmpty) {
        //                 return 'Please enter some text';
        //               }
        //               return null;
        //             },
        //           ),
        //         ),
        //         // Padding(
        //         //   padding: const EdgeInsets.symmetric(vertical: 16.0),
        //         //   child: ElevatedButton(
        //         //     onPressed: () {
        //         //       // Validate returns true if the form is valid, or false otherwise.
        //         //       if (_formKey.currentState!.validate()) {
        //         //         // If the form is valid, display a snackbar. In the real world,
        //         //         // you'd often call a server or save the information in a database.
        //         //         ScaffoldMessenger.of(context).showSnackBar(
        //         //           const SnackBar(content: Text('Processing Data')),
        //         //         );
        //         //       }
        //         //     },
        //         //     child: const Text('Submit'),
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ) ,

        actions: <Widget>[



          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          // IconButton(
          //   icon: const Icon(Icons.navigate_next),
          //   tooltip: 'Go to the next page',
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute<void>(
          //       builder: (BuildContext context) {
          //         return Scaffold(
          //           appBar: AppBar(
          //             title: const Text('Next page'),
          //           ),
          //           body: const Center(
          //             child: Text(
          //               'This is the next page',
          //               style: TextStyle(fontSize: 24),
          //             ),
          //           ),
          //         );
          //       },
          //     ));
          //   },
          // ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("data"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
