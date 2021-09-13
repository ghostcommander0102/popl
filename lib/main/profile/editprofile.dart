import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './verifyemail.dart';

class EditProfile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<EditProfile> {
  String gender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 40,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
              "Edit Profile",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400
              )
          ),
        ),
        body: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: <Widget>[
                Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 15),
                            child: Column(
                              children: <Widget> [
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/image.png',
                                        width: 67,
                                        height: 70,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child:Image.asset(
                                        'assets/images/_avatar.png',
                                        width: 74,
                                        height: 64,
                                      ),
                                    )
                                  ]
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "About you",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16
                                    )
                                  )
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              "Choose profile photo",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal
                              )
                            ),
                          )

                        ]
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: DropdownButtonHideUnderline(
                    child: Container(
                        child: DropdownButton<String>(

                          onChanged: (String? newValue) {
                            setState(() {
                              gender = newValue!;
                            });
                          },
                          autofocus: false,
                          items: <String>['Man', 'Woman']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                              "Gender",
                              style: GoogleFonts.lato(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              )
                          ),

                      ),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color(0xFF9C9C9B)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      )
                    ),

                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 13),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          hintText: "First name"
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          hintText: "Last name"
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          hintText: "Year of birth"
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          hintText: "Телефон"
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              BorderSide(color: Color(0xFF9C9C9B))),
                          hintText: "E-mail"
                      )
                  ),
                ),

                Container(
                    height: 48,
                    margin: EdgeInsets.only(left:16, right: 16, top: 190),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      textColor: Colors.black,
                      color: Color(0xFFFED428),
                      child: Text(
                          'Save profile info',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          )
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerifyEmail()),
                        );
                      },
                    )),
              ],
            )));
  }
}

