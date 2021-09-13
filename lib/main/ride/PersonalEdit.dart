import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/SimpleDialogItem.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import './media_add.dart';

class PersonalEdit extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PersonalEdit> {
  int _selectedDestination = 0;
  String gender = "Male";
  String birth = "Select Birthday";
  DateTime selectedDate = DateTime.now();
  List<Widget> media_data = [];
  List<Widget> contact_data = [];
  List<String> media_imgurl = [
    "assets/images/src_assets_instagram.png",
    "assets/images/src_assets_snapchat.png",
    "assets/images/src_assets_tiktok.png",
    "assets/images/src_assets_facebook.png",
    "assets/images/src_assets_linkedin.png",
    "assets/images/src_assets_twitter.png",
    "assets/images/src_assets_youtube.png",
    "assets/images/src_assets_twitch.png",
    "assets/images/src_assets_pinterest.png",

    "assets/images/src_assets_number.png",
    "assets/images/src_assets_podcasts.png",
    "assets/images/src_assets_safari.png",
    "assets/images/src_assets_soundcloud.png",
    "assets/images/src_assets_spotify.png",
    "assets/images/src_assets_tinder.png",
    "assets/images/src_assets_venmo.png",
    "assets/images/src_assets_verifiedblue.png",
    "assets/images/src_assets_whatsapp.png",
    "assets/images/src_assets_yelp.png",
  ];
  List<String> media_string = [
    "instagram",
    "snapchat",
    "tiktok",
    "facebook",
    "linkedin",
    "twitter",
    "youtube",
    "twitch",
    "pinterest",
    "number",
    "podcasts",
    "safari",
    "cloud",
    "spotify",
    "tinder",
    "venmo",
    "verified",
    "whatsapp",
    "yelp",
  ];
  BoxDecoration media_dec = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color(0xFFCCCCCC).withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        )
      ]);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    media_data = [];
    for (int i = 0; i < 3; i++) {
      List<Widget> media_row = [];
      for (int j = 0; j < 3; j++) {
        media_row.add(GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        media_add(name: media_string[i * 3 + j])),
              );
            },
            child: Container(
                margin: EdgeInsets.only(left: 10),
                height: 125,
                width: width / 4,
                decoration: media_dec,
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                child: Column(children: <Widget>[
                  Container(
                      height: height / 12,
                      child: Image(image: AssetImage(media_imgurl[i * 3 + j]))),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(media_string[i * 3 + j],
                          style: GoogleFonts.poppins(fontSize: 13)))
                ]))));
      }
      media_data.add(Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: media_row)));
    }
    final SimpleDialog dialog = SimpleDialog(
      title: Text('Select Gender'),
      children: [
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.green,
          text: 'Male',
          onPressed: () {
            Navigator.pop(context, '');
            setState(() {
              gender = "Male";
            });
          },
        ),
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.pink,
          text: 'Female',
          onPressed: () {
            Navigator.pop(context, '');
            setState(() {
              gender = "Female";
            });
          },
        ),
      ],
    );
    return Scaffold(
        body: Container(
            height: height,
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: ListView(children: <Widget>[
              Container(
                  height: height - 100,
                  child: SingleChildScrollView(
                      child: Column(
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
                                image: AssetImage(
                                    "assets/images/src_assets_xmark.png"),
                              ),
                            )),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: width,
                            child: Image(
                              image: AssetImage(
                                  "assets/images/src_assets_usernewnew.png"),
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: width / 3, right: 10),
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 60,
                                                  margin:
                                                      EdgeInsets.only(left: 12),
                                                  alignment: Alignment.center,
                                                  child: Text("YOUR LOGO"))),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                width: 20,
                                                height: 20,
                                                padding: EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/src_assets_pen.png'),
                                                )),
                                          )
                                        ],
                                      ))))
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/background.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                width: width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("punkhipster-",
                                        style:
                                            GoogleFonts.poppins(fontSize: 20)),
                                    Container(
                                        width: 13,
                                        height: 13,
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/src_assets_pen.png'),
                                        ))
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
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
                                child: DefaultTabController(
                                  length: 2,
                                  child: SizedBox(
                                    height: 100.0,
                                    child: Column(
                                      children: <Widget>[
                                        TabBar(
                                          tabs: <Widget>[
                                            Container(
                                                height: 30,
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Personal",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black))),
                                            Container(
                                                height: 30,
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text("Business",
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black))),
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
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
                                                child: TextField(
                                                  maxLines: 5,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Bio for personal profile",
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            bottomLeft: Radius
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10)),
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
                                                child: TextField(
                                                  maxLines: 5,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          "Bio for business profile",
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          showDialog<void>(
                                              context: context,
                                              builder: (context) => dialog);
                                        },
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            width: width / 2 - 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
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
                                            child: Text(gender)),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          _selectDate(context);
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 20),
                                            padding: EdgeInsets.all(10),
                                            width: width / 2 - 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
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
                                            child: Text(birth)),
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text("Add Social Media",
                                      style:
                                          GoogleFonts.poppins(fontSize: 25))),
                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: media_data,
                                  )),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFCCCCCC).withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      )
                                    ]),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 50,
                                      child: Image(
                                        image:AssetImage("assets/images/src_assets_embeddedvideoicon.png")
                                      )
                                    ),
                                    Container(
                                      width: width - 190,
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Embedded Video", style: GoogleFonts.poppins(fontSize: 15))
                                          ),
                                          Container(
                                              child: Text("Embed a Youtube or Vimeo video right into your Popl profile", style: GoogleFonts.poppins(fontSize: 10))
                                          )
                                        ]
                                      )
                                    )
                                  ]
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Add Contact", style: GoogleFonts.poppins(fontSize: 25))
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children:contact_data,
                                )
                              )
                            ],
                          ))
                    ],
                  )))
            ])));
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != selectedDate) {
      final f = new DateFormat('yyyy-MM-dd');

      setState(() {
        selectedDate = selected;
        birth = f.format(selectedDate);
      });
    }
  }
}
