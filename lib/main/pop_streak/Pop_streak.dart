import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Pop_streak extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Pop_streak> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 100, right: 100, top: 15),
            alignment: Alignment.center,
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
            child: Text("0 day pop streak",
                style: GoogleFonts.poppins(fontSize: 12))),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Text("pops: 0",
                      style: GoogleFonts.poppins(fontSize: 13))),
              Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("views: 0",
                      style: GoogleFonts.poppins(fontSize: 13)))
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  height: height / 6,
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
                      child: Text("pop map"),
                    )),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 2, right: 2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(width: 0.5, color: Color(0xFFDDDDDD))),
                      child: Text("pro"),
                    ))
              ],
            )),
        Container(
          margin: EdgeInsets.only(left: 48, right: 48, top: 15),
          height: height / 4,
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
        ),
        Container(
            margin: EdgeInsets.only(left: 48, right: 48, top: 15),
            height: height / 3,
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
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 15),
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 2, right: 2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFCCCCCC).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            )
                          ]),
                      child: Text("top apps"),
                    )),
                Align(alignment: Alignment.center, child: Text("Personal")),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Column(
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFFCCCCCC).withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      )
                                    ]),
                                height: height / 14,
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/src_assets_instagram.png"))),
                            Container(
                                child: Text("0",
                                    style: GoogleFonts.poppins(fontSize: 12))),
                            Container(
                                child: Text("taps",
                                    style: GoogleFonts.poppins(fontSize: 12)))
                          ],
                        ))
                      ],
                    ))
              ],
            ))
      ]),
    ));
  }
}
