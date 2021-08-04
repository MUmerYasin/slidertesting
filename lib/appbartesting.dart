import 'package:flutter/material.dart';

class AppBarTestingC extends StatefulWidget {
  const AppBarTestingC({Key? key}) : super(key: key);

  @override
  _AppBarTestingCState createState() => _AppBarTestingCState();
}

class _AppBarTestingCState extends State<AppBarTestingC> {
  final _formKey = GlobalKey<FormState>();
  final searchController = TextEditingController();


  String secondDropDownValue = 'Albania';
  var countryList = [
    "Albania",
    "Afghanistan",
    "Algeria",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antigua & Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia & Herzegovina",
    "Botswana",
    "Brazil",
    "British Virgin Islands",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cambodia",
    "Cameroon",
    "Cape Verde",
    "Cayman Islands",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Cote D Ivoire",
    "Croatia",
    "Cruise Ship",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Estonia",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Polynesia",
    "French West Indies",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kuwait",
    "Kyrgyz Republic",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macau",
    "Macedonia",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Namibia",
    "Nepal",
    "Netherlands",
    "Netherlands Antilles",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Norway",
    "Oman",
    "Pakistan",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Reunion",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Pierre & Miquelon",
    "Samoa",
    "San Marino",
    "Satellite",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "South Africa",
    "South Korea",
    "Spain",
    "Sri Lanka",
    "St Kitts & Nevis",
    "St Lucia",
    "St Vincent",
    "St. Lucia",
    "Sudan",
    "Suriname",
    "Swaziland",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor L'Este",
    "Togo",
    "Tonga",
    "Trinidad & Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks & Caicos",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "Uruguay",
    "Uzbekistan",
    "Venezuela",
    "Vietnam",
    "Virgin Islands (US)",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
    child:
      Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,

        backgroundColor: Colors.deepPurple,
        elevation: 20.0,
        // centerTitle: true,
        // centerTitle: false,
        // leadingWidth: 800.0,
        // leading: null,

        /// Search bar using TextFormField
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Flexible(
              fit: FlexFit.loose,
              child: Builder(
                builder: (BuildContext context) {
                  return Form(
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
                                  autofocus: false,

                                  controller: searchController,

                                    // FocusScope.of(context).unfocus();
                                    // _textEditingController.clear();

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
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    border: OutlineInputBorder(),
                                    // labelStyle: new TextStyle(color: Colors.green),
                                  ),

                                  // The validator receives the text that the user has entered.
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Please enter some text';
                                  //   }
                                  //
                                  //   return null;
                                  // },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),



          ],
        ),

        /// bell button, country Dropdown menu, drawer on right side using button
        actions: <Widget>[

          Flexible(
            fit: FlexFit.loose,
            child: IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('Bell is Ringing')));
              },
            ),
          ),

          Flexible(
            fit: FlexFit.loose,

            // flex: 2,
            child: SizedBox(
              width: 90.0,
              child: DropdownButton(
                isExpanded: true,
                value: secondDropDownValue,
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                iconSize: 15,
                elevation: 24,
                dropdownColor: Colors.deepPurple,
                style: const TextStyle(
                  color: Colors.white,
                  // fontSize: 15.0,
                  backgroundColor: Colors.deepPurple,
                ),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                items: countryList.map((countryName) {
                  return DropdownMenuItem(
                    value: countryName,
                    child: Text(countryName),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    secondDropDownValue = newValue!;
                  });
                },
              ),
            ),

            // child: DropdownButton<String>(
            //
            //   value: dropdownValue,
            //   icon: const Icon(Icons.arrow_downward,color: Colors.white,),
            //   iconSize: 24,
            //   elevation: 24,
            //   dropdownColor: Colors.deepPurple,
            //   style: const TextStyle(color: Colors.white, fontSize: 20.0, backgroundColor: Colors.deepPurple,),
            //   underline: Container(
            //     height: 3,
            //     color: Colors.white,
            //   ),
            //   onChanged: (String? newValue) {
            //     setState(() {
            //       dropdownValue = newValue!;
            //     });
            //   },
            //   items: <String>['One', 'ENG', 'PAK', 'TUK']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ),

          Flexible(
            fit: FlexFit.loose,
            // flex: 1,
            child: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {

                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus &&
                          currentFocus.focusedChild != null) {
                        currentFocus.unfocus();

                        searchController.clear();
                        // searchController.dispose();

                      }
                      Scaffold.of(context).openEndDrawer();
                      currentFocus.unfocus();


                },
              ),
            ),
          ),

          // GestureDetector(
          //   onTap: () {
          //     FocusScopeNode currentFocus = FocusScope.of(context);
          //
          //     if (!currentFocus.hasPrimaryFocus) {
          //       currentFocus.unfocus();
          //     }
          //   },
          // ),

        ],



      ),
      endDrawer: SizedBox(

        width: MediaQuery.of(context).size.width * 0.45,
        child: Drawer(
          // elevation: 10.0,
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
      ),
      body:
      GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.unfocus();

            searchController.clear();

          }
        },
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("data"),
                    ],
                  ),
                ),











              ],
            ),
          ),
        ),
      ),



    ),
    );
  }
}
