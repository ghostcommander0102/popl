import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:google_fonts/google_fonts.dart';
import './enter_email.dart';
class Verify_Phone extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Verify_Phone> {
  TextEditingController _controller = new TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _verificationID = "";
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color(0xFFF1F2F6),
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: const Color(0xFFF1F2F6),
    ),
  );
  bool isNoVisiblePassword = true;
  String code = "1234";
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 0),
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Image.asset('assets/images/arrow_back.png'),
                          iconSize: 24,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Enter_email()),
                            );
                          },
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 50),
                      alignment: Alignment.center,
                      child: Text(

                        "Verify phone number",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/phone_android1.png',
                      width: 50,
                      height: 50,
                    ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text(
                        'Just one thing ',
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 24),
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: Text('Verify your phone number',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF757575),
                        fontSize: 16
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40),
                  child: Text('Please enter the 4 digit code you',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF828282),
                        fontSize: 12
                    ),
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 0),
                  child: Text('recived by SMS',
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF828282),
                        fontSize: 12
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20, left: 69, right: 69),
                  alignment: Alignment.center,
                  child: PinPut(
                    fieldsCount: 4,
                    textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
                    eachFieldWidth: 50.0,
                    eachFieldHeight: 40.0,
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                    pinAnimationType: PinAnimationType.fade,
                    onSubmit: (pin) async {

                    },
                  ),
                ),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(left:35, right: 30, top: 40),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      textColor: Colors.black,
                      color: Color(0xFFFECC2A),
                      child: Text(
                          'Submit',
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          )
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
              ],
            )
        )
    );
  }
  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 50,
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF1F2F6),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
              ),
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  spreadRadius: -12,
                  offset: Offset(0.0, 0.75)
              )
            ],
          ),
          child: Center(
            child: TextField(
                controller: _controller,
                onChanged: (String newVal) {
                  if(newVal.length <= 1){
                    text = newVal;
                  }else{
                    _controller.value = new TextEditingValue(
                        text: text,
                        selection: new TextSelection(
                            baseOffset: 1,
                            extentOffset: 1,
                            affinity: TextAffinity.downstream,
                            isDirectional: false
                        ),
                        composing: new TextRange(
                            start: 0, end: 1
                        )
                    );
                    _controller.text = text;
                  }
                }
            ),
          ),
        ),
      ),
    );
  }
}

