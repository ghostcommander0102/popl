import 'package:flutter/material.dart';
import 'enter_email.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginForm.dart';
import '../main/Home.dart';

// import 'main/profile/changepassword.dart';
class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isNoVisiblePassword = true;

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
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height / 10,
                ),
                Container(
                    height: height / 5,
                    child: Image(
                      image: AssetImage("assets/images/popl_round.png"),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 14),
                    alignment: Alignment.center,
                    child: Text(
                      'Welcome to Popl',
                      style: GoogleFonts.poppins(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 23),
                    )),
                Container(
                    alignment: Alignment.center,
                    width: width,
                    child: Container(
                        width: width * 2 / 3,
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Text("Instantly share anything",
                                    style: GoogleFonts.poppins(fontSize: 15))),
                            Container(
                                child: Text("TM",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)))
                          ],
                        ))),
                SizedBox(height: height / 25),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    width: width,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF313131),
                          padding: EdgeInsets.only(
                              top: 8, left: 35, bottom: 8, right: 35),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        onPressed: () => {},
                        child: Text("Set up your Popl",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)))),
                Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    width: width,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          padding: EdgeInsets.only(
                              top: 8, left: 35, bottom: 8, right: 35),
                          shadowColor: Color(0xFF555555),
                          elevation: 5,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        onPressed: () => {},
                        child: Text("Buy a Popl",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)))),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have Popl?",style: GoogleFonts.poppins()),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginForm()),
                                );
                              },
                                child:Text(
                              "Sign In",
                              style: GoogleFonts.poppins(fontSize: 20),
                            )
                            )
                          ],
                        )))),
              ],
            )));
  }
}
