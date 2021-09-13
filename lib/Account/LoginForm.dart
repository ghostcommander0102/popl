import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main/Home.dart';
class LoginForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isNoVisiblePassword = true;
  bool isNoVisibleConfirmPassword = true;
  bool checkedValue = true;

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
            child: ListView(
              children: <Widget>[
                SizedBox(height: height / 20),
                Container(
                    height: height / 10,
                    child: Image(
                      image: AssetImage(
                          "assets/images/src_assets_popllogoapp.png"),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Sign in with',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                        child: Container(
                            height: 60,
                            child: Image(
                                image: AssetImage(
                                    "assets/images/google_btn.png")))),
                    GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            child: Image(
                                image: AssetImage(
                                    "assets/images/google_btn.png")))),
                    GestureDetector(
                        child: Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 50,
                            child: Image(
                                image: AssetImage(
                                    "assets/images/src_assets_loginwithfb.png"))))
                  ],
                )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'OR',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Input your email and password',
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xFF777777)),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 16, right: 16),
                  height: 41,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCCCCCC).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  child: TextField(
                      onChanged: (String value) {},
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      autofocus: false,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                          hintText: "Email")),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 16, right: 16),
                  height: 41,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCCCCCC).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  child: TextField(
                      obscureText: true,
                      onChanged: (String value) {
//                        this.signUpModel.email = value;
                      },
                      style: TextStyle(
//                          color: widget.t> ?? Color(0xFF0F2E48),
                        fontSize: 14,
                        height: 0.6,
                      ),
                      autofocus: false,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 25, left: 9),

                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                          filled: true,
                          fillColor: Color(0xFFFFFFF),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                          hintText: "Password")),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 40, right: 40),
                    width: width,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF848484),
                          padding: EdgeInsets.only(
                              top: 8, left: 35, bottom: 8, right: 35),

                          shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        onPressed: () => {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          )
                        },
                        child: Text("Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("By registering, you agree to our ",style: GoogleFonts.poppins(fontSize:10, color: Colors.grey)),
                        InkWell(
                            onTap: (){
                            },
                            child:Text(
                              "Term",
                              style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
                            )
                        ),
                        Text(" and ",style: GoogleFonts.poppins(fontSize:10, color: Colors.grey)),
                        InkWell(
                            onTap: (){
                            },
                            child:Text(
                              "Privacy Policy",
                              style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.bold),
                            )
                        ),
                      ],
                    ))
              ],
            )));
  }
}
