import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import './SetupPopl.dart';
class HowToPop extends StatefulWidget {
  @override
  _HowToPropState createState() => _HowToPropState();
}

class _HowToPropState extends State<HowToPop> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
  }

  void onDonePress() {
    // TODO: go to next screen
    Navigator.pop(context, '');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SetupPopl()),
    );

  }

  void onSkipPress() {
    // TODO: go to next screen
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    slides = [];
    slides.add(
      new Slide(
          marginTitle: EdgeInsets.only(top: 20),
          backgroundColor: Colors.white,
          styleTitle: TextStyle(
            fontSize: 0
          ),
          centerWidget: Container(
              height: height - 60,
              child: ListView(
                children: <Widget>[
                  Container(
                      width: width,
                      alignment: Alignment.center,
                      child: Text("Sharing to Iphones", style: GoogleFonts.poppins(fontSize: 20),)
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: width / 2,
                          child: Image(
                            image: AssetImage("assets/images/popl.gif"),
                          )),
                      Container(
                          child: Column(children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Use your Popl "),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("for iPhone XR, "),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("XS, 11s and 12s")),
                      ]))
                    ],
                  )),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          child: Column(children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("Use your Popl "),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text("for iPhone XR, "),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text("XS, 11s and 12s")),
                      ])),
                      Container(
                          width: width / 2,
                          child: Image(
                            image: AssetImage("assets/images/popl_qr.png"),
                          )),
                    ],
                  )),
                  Container(
                    width: width,
                    alignment: Alignment.center,
                    child: Text("Sharing to Androids", style: GoogleFonts.poppins(fontSize: 20),)
                  ),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: width / 2,
                              child: Image(
                                image: AssetImage("assets/images/popl.gif"),
                              )),
                          Container(
                              child: Column(children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Use your Popl "),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("for iPhone XR, "),
                                ),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("XS, 11s and 12s")),
                              ]))
                        ],
                      )),
                ],
              ))),
    );
    slides.add(
      new Slide(
        marginTitle: EdgeInsets.only(top: 20),
        backgroundColor: Colors.white,
        styleTitle: TextStyle(
            fontSize: 0
        ),
        centerWidget: Container(
          height: height - 60,
          child: ListView(
            children: <Widget>[
              Container(
                width: width,
                child: Image(
                  image: AssetImage("assets/images/popl_direct.png")
                )
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
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
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Popl Direct", style: GoogleFonts.poppins(fontSize: 15)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Text("1")
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20),
                            width: width - 120,
                            child: Text("Tap the Popl Direct button on your profile to turn on", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),)
                          )
                        ],
                      )
                    ),
                    Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                child: Text("2")
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 20),
                                width: width - 120,
                                child: Text("When Popl Direct is on, your Popl will open directly to the first link on your profile", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),)
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
            ],
          )
        )
      ),
    );
    slides.add(
      new Slide(
        marginTitle: EdgeInsets.only(top: 20),
        backgroundColor: Colors.white,
        styleTitle: TextStyle(
            fontSize: 0
        ),
        centerWidget: Container(
          height: height - 60,
            child: ListView(
              children: <Widget>[
                Container(
                    width: width,
                    child: Image(
                        image: AssetImage("assets/images/popl_direct.png")
                    )
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
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
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text("Let's get the poppin", style: GoogleFonts.poppins(fontSize: 15)),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.center,
                                  child: Text("1")
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: width - 120,
                                  child: Text("Your pop count is the number of times you share with Popl", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),)
                              )
                            ],
                          )
                      ),
                      Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                  alignment: Alignment.center,
                                  child: Text("2")
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 20),
                                  width: width - 120,
                                  child: Text("Build your pop streak and pop count to get more connections. more leads and more sales", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),)
                              )
                            ],
                          )
                      )
                    ],
                  ),
                )
              ],
            )
        )
      ),
    );
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(0),
            child: IntroSlider(
              slides: this.slides,
              onDonePress: this.onDonePress,
              onSkipPress: this.onSkipPress,
              renderNextBtn: this.renderNextBtn(),
              renderDoneBtn: this.renderDoneBtn(),
            )));
  }
  Widget renderNextBtn() {
    return Text(
      "Next",
      style: GoogleFonts.poppins(fontSize: 20, color: Colors.black)
    );
  }

  Widget renderDoneBtn() {
    return Text(
        "Activate",
        style: GoogleFonts.poppins(fontSize: 18, color: Colors.black)
    );
  }

}
