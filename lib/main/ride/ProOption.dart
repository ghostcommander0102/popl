import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AnimatedToggle.dart';

class ProOption extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ProOption> {
  int _selectedDestination = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 25,
                        child: Image(
                          image:
                              AssetImage("assets/images/src_assets_xmark.png"),
                        ),
                      )),
                ),
                Container(
                  height: height / 5,
                  child: Image(
                    image:
                        AssetImage("assets/images/src_assets_poplprobig.png"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Unlock the most advanced",
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "digital business card in the world",
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image(
                            image:
                                AssetImage("assets/images/src_assets_swap.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Personal/Business mode",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Switch between personal and",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "business profiles instantly",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image(
                            image: AssetImage(
                                "assets/images/src_assets_unlimited.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Customizable links",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Add unlimited links with custom ",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "icons and titles",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image(
                            image: AssetImage(
                                "assets/images/src_assets_chart.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Pro Analytics",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Business analytics, Pop Map and",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "daily pop stats",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child: Image(
                            image:
                                AssetImage("assets/images/src_assets_bolt.png"),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "And more",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Pro links, custom contact card,",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "CRM integrations + more",
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 40, right: 40),

                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          padding: EdgeInsets.only(
                              top: 8, left: 35, bottom: 8, right: 35),
                          shadowColor: Color(0xFFDDDDDD),
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onPressed: () => {},
                        child: Column(children: <Widget>[
                          Text("Monthly",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text("2 week free trial. 4.99/month",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  ))
                        ]))),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 40, right: 40),

                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF313131),
                          padding: EdgeInsets.only(
                              top: 8, left: 35, bottom: 8, right: 35),
                          shadowColor: Color(0xFFDDDDDD),
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onPressed: () => {},
                        child: Column(children: <Widget>[
                          Text("Yearly(Save 20%)",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("2 week free trial. 47.99 / year",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white,
                              ))
                        ]))),
              ],
            )));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
