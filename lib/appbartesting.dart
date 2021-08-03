import 'package:flutter/material.dart';

class AppBarTestingC extends StatefulWidget {
  const AppBarTestingC({Key? key}) : super(key: key);

  @override
  _AppBarTestingCState createState() => _AppBarTestingCState();
}

class _AppBarTestingCState extends State<AppBarTestingC> {
  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 20.0,
        leadingWidth: 700.0,
        leading: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 8.0,
                        top: 4.0,
                        bottom: 4.0,
                      ),
                      child: TextFormField(
                        // textAlign: TextAlign.left,
                        // expands: true,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                        //letterSpacing: 2,

                        decoration: const InputDecoration(
                          isDense: true,
                          // important line
                          contentPadding: EdgeInsets.all(8.0),

                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                          fillColor: Colors.white38,
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

                          enabledBorder: OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          border: OutlineInputBorder(),
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
        automaticallyImplyLeading: false,

        title: null,


        actions: <Widget>[

          Flexible (
      fit :FlexFit.loose,
            child: IconButton(
              icon: const Icon(Icons.add_alert),

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Bell is Ringing')));
              },
            ),
          ),
          Flexible (
            fit :FlexFit.loose,
            child: DropdownButton<String>(

              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward,color: Colors.white,),
              iconSize: 24,
              elevation: 24,
              dropdownColor: Colors.deepPurple,
              style: const TextStyle(color: Colors.white, fontSize: 20.0, backgroundColor: Colors.deepPurple,),
              underline: Container(
                height: 3,
                color: Colors.white,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['One', 'ENG', 'PAK', 'TUK']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Flexible(
            child: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          ),
        ],
      ),

      endDrawer: Drawer(
        elevation: 10.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),

            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),

          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
