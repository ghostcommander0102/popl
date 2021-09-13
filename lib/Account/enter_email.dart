import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import './verify_phone.dart';
class Enter_email extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Enter_email> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isNoVisiblePassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 10, left: 0),
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Image.asset('assets/images/arrow_back.png'),
                      iconSize: 24,
                      onPressed: () {
                        
                      },
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top: 25),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Enter your ',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        ),

                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                              color: Color(0xFFFED428),
                              fontWeight: FontWeight.w600,
                              fontSize: 28),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('Please enter your registered email or phone number',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9C9C9B),
                        fontSize: 9
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('to reset your password',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF9C9C9B),
                        fontSize: 9
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/phone_android.png',
                          width: 86,
                          height: 90,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/line-md_email-opened-twotone.png',
                          width: 86,
                          height: 90,
                        ),
                      )
                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 65),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.phone,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
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
                          hintText: "Enter your mobile number"
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: Text(
                    'OR',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF9C9C9B),
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    )

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 16,right: 19),
                  height: 41,
                  child: TextField(
                      onChanged: (String value) {
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
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
                          hintText: "Enter your Email"
                      )
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  child: Text('',
                  ),
                ),
                Container(
                    height: 48,
                    margin: EdgeInsets.only(left:34, right: 31, top: 5),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textColor: Colors.black,
                      color: Color(0xFFFECC2A),
                      child: Text(
                          'Submit',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          )
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Verify_Phone()),
                        );
                      },
                    )),
              ],
            )
        )
    );
  }
}

