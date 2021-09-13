import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AnimatedToggle.dart';
import './SetupPopl.dart';
import './ProOption.dart';
import './HowToPop.dart';
import './PersonalEdit.dart';
class Ride extends StatefulWidget {
  @override
  _RideState createState() => _RideState();
}

class _RideState extends State<Ride> {
  int _selectedDestination = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 30.0),
                child: Text('Smita sonawane',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 46, right: 46),
                child: AnimatedToggle(
                  values: ['Profile Off', 'Profile On'],
                  textColor: Color(0xFFFFF2BE),
                  backgroundColor: Color(0xFFF2F2F2),
                  buttonColor: Color(0xFFFECC2A),
                  // shadows: isDarkMode ? darkMode.shadow : lightMode.shadow,
                  onToggleCallback: (index) {
                    // setState(() {
                    //   profile = !profile;
                    // });
                  },
                ),
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image:
                          AssetImage("assets/images/src_assets_homegrey.png"),
                    )),
                title: Text('Home'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image: AssetImage(
                          "assets/images/src_assets_activategrey.png"),
                    )),
                title: Text('Setup Popl'),
                selected: _selectedDestination == 0,
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetupPopl()),
                  )
                },
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image: AssetImage("assets/images/src_assets_todos.png"),
                    )),
                title: Text('Complete Profile'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image:
                          AssetImage("assets/images/src_assets_qrcodegrey.png"),
                    )),
                title: Text('My QR Code'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image: AssetImage("assets/images/src_assets_buygrey.png"),
                    )),
                title: Text('Buy a Popl'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image: AssetImage("assets/images/src_assets_bolt.png"),
                    )),
                title: Text('Go Pro'),
                selected: _selectedDestination == 0,
                onTap: () => {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProOption()),
                )},
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image: AssetImage(
                          "assets/images/src_assets_tutorialgrey.png"),
                    )),
                title: Text('How to pop'),
                selected: _selectedDestination == 0,
                onTap: () => {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToPop()),
                )},
              ),
              ListTile(
                leading: Container(
                    height: 20,
                    child: Image(
                      image:
                          AssetImage("assets/images/src_assets_logoutgrey.png"),
                    )),
                title: Text('Log Out'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 40,
          title: Container(
            height: 40,
            child: Image(
              image: AssetImage("assets/images/src_assets_popllogoapp.png"),
            ),
          ),
          backgroundColor: Color(0xFFF7F7F5),

        ),
        body: Container(
            color: Color(0xFFFFFFFF),
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 15),
                    height: height / 5,
                    child: Image(
                        image: AssetImage(
                            "assets/images/src_assets_proprofile.png"))),
                SizedBox(height: height / 20),
                Container(
                    alignment: Alignment.center,
                    child: Text("smita sonawane",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Container(
                    alignment: Alignment.center,
                    child: Text("poplme.co/smita",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.grey))),
                Container(
                    alignment: Alignment.center,
                    child: Text("I am developer",
                        style: GoogleFonts.poppins(fontSize: 14))),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              padding: EdgeInsets.only(
                                  top: 8, left: 35, bottom: 8, right: 35),
                              shadowColor: Color(0xFF555555),
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: Text("Direct Off",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)))),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              padding: EdgeInsets.only(
                                  top: 8, left: 35, bottom: 8, right: 35),
                              shadowColor: Color(0xFF555555),
                              elevation: 5,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PersonalEdit()),
                              )
                            },
                            child: Text("Edit Personal",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))))
                  ],
                )),
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                    "Your Popl opens to your personal profile")),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                  child: Container(
                                                      child: Column(
                                                children: <Widget>[
                                                  Container(
                                                      height: height / 7,
                                                      child: Image(
                                                          image: AssetImage(
                                                              "assets/images/src_assets_instagram.png"))),
                                                  Container(
                                                      child: Text("Instagram",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize:
                                                                      15)))
                                                ],
                                              ))),
                                              GestureDetector(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 30),
                                                      child: Column(
                                                        children: <Widget>[
                                                          Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height:
                                                                  height / 7,
                                                              width: width / 3,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(
                                                                        "assets/images/rect.png"),
                                                                    fit: BoxFit
                                                                        .fitHeight,
                                                                    scale: 1),
                                                              ),
                                                              // height: height / 7,
                                                              child: Text("+",
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                          fontSize:
                                                                              50))),
                                                          Container(
                                                              child: Text(
                                                                  "Add link",
                                                                  style: GoogleFonts
                                                                      .poppins(
                                                                          fontSize:
                                                                              15)))
                                                        ],
                                                      )))
                                            ]))))
                          ],
                        )))
              ],
            )));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
