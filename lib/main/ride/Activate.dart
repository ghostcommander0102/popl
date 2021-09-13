import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AnimatedToggle.dart';
class Activate extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Activate> {
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
                        image: AssetImage("assets/images/src_assets_xmark.png"),
                      ),
                    )
                  ),
                ),
                Container(
                  height: height/2,
                  child: Image(
                    image: AssetImage("assets/images/src_assets_newbandactivateandroid.png"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text("Your Popl band will be activated with", style: GoogleFonts.poppins(fontSize: 12),),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("the profile", style: GoogleFonts.poppins(fontSize: 12),),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("poplme.co/smita", style: GoogleFonts.poppins(fontSize: 12),),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 40, right: 40),
                    width: width,
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
                        child: Text("Tap here to activate",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
              ],
            )));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
