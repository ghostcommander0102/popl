import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AnimatedToggle.dart';

class media_add extends StatefulWidget {
  final String name;
  media_add({required this.name});
  @override
  _State createState() => _State();
}

class _State extends State<media_add> {
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
            padding: EdgeInsets.all(40),
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
                  height: height / 7,
                  child: Image(
                    image: AssetImage(
                        "assets/images/src_assets_" + widget.name + ".png"),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 110,
                        child: Stack(
                          children: <Widget>[
                            Container(
                                width: 100,
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
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
                                child: Text('Change Icon')),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(left: 10),
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFCCCCCC)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          )
                                        ]),
                                    child: Text('pro',
                                        style:
                                            GoogleFonts.poppins(fontSize: 8))))
                          ],
                        ))),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(widget.name,
                                style: GoogleFonts.poppins(fontSize: 25))),
                        Container(
                            margin: EdgeInsets.only(left: 4),
                            width: 25,
                            height: 25,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFCCCCCC).withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  )
                                ]),
                            child: Image(
                                image: AssetImage(
                                    "assets/images/src_assets_pen.png")))
                      ],
                    )),
                Container(
                    width: width,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Color(0xFFCCCCCC).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ]),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: widget.name + " username"),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                      Container(
                          width: width / 3,
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFCCCCCC).withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                )
                              ]),
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {},
                              child: Container(child: Text("Open", style: GoogleFonts.poppins(color:Colors.black)) ))),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                              width: width / 3,
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFCCCCCC).withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    )
                                  ]),
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Container(child: Text("Save", style: GoogleFonts.poppins(color:Colors.white)) ))),
                    ])),
                Container(
                  margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFCCCCCC).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(
                                0, 3), // changes position of shadow
                          )
                        ]),
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {},
                        child: Container(child: Text("Add another Instagram", style: GoogleFonts.poppins(color:Colors.black)) )))
              ],
            )));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
