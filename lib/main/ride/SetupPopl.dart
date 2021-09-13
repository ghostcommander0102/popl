import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AnimatedToggle.dart';
import './Activate.dart';
class SetupPopl extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SetupPopl> {
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
                  height: height/10,
                  child: Image(
                    image: AssetImage("assets/images/src_assets_popllogoapp.png"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Which Popl product would you like to activate?", style: GoogleFonts.poppins(fontSize: 12),),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Activate()),
                    );
                  },
                  child:Container(
                      padding: EdgeInsets.only(left: 20, right: 20),

                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(8),
                            height: height / 6,
                            width: width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFCCCCCC).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  )
                                ]),
                            child: Image(
                              image: AssetImage("assets/images/src_assets_newband.png"),
                            ),
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 20, top: 15),
                                padding:
                                EdgeInsets.only(top: 4, bottom: 4, left: 2, right: 2),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border:
                                    Border.all(width: 0.5, color: Color(0xFFDDDDDD))),
                                child: Text("brand"),
                              )),

                        ],
                      )),
                ),

                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),

                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8),
                          height: height / 6,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFCCCCCC).withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                )
                              ]),
                          child: Image(
                            image: AssetImage("assets/images/src_assets_poplxl.png"),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 15),
                              padding:
                              EdgeInsets.only(top: 4, bottom: 4, left: 2, right: 2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border:
                                  Border.all(width: 0.5, color: Color(0xFFDDDDDD))),
                              child: Text("Popl"),
                            )),

                      ],
                    )),
              ],
            )));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
