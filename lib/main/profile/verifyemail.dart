import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './verifyphonenumber.dart';
class VerifyEmail extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<VerifyEmail> {
  bool ridevalue = false;
  bool freevalue = false;
  bool messagevalue = false;
  bool ratingvalue = false;
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
              "Verify your Email",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400
              )
          ),
        ),
        body: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/line-md_email-opened-twotone1.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  alignment: Alignment.center,
                  child: Text(
                    "Just one thing ",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    )
                  )
                ),
                Container(
                    margin: EdgeInsets.only(top: 8),
                    alignment: Alignment.center,
                    child: Text(
                        "Verify your email",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF757575)
                        )
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top:12, left: 21),
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
                          hintText: "Enter your email"
                      )
                  ),
                ),

                Container(
                    height: 40,
                    margin: EdgeInsets.only(left:16, right: 16, top: 20, bottom: 14),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      textColor: Colors.black,
                      color: Color(0xFFFED428),
                      child: Text(
                          'Verify',
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          )
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerifyPhoneNumber()),
                        );
                      },
                    )),
              ],
            )));
  }
}

