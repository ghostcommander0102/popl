import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pushnotification.dart';
class PostalAddress extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PostalAddress> {

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
              "Postal address",
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
                  margin: EdgeInsets.only(top: 30),
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
                          hintText: "Street, umber, P.O.box, etc "
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
                          hintText: "Apartament, floor, building, etc."
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
                          hintText: "Pass through"
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
                          hintText: "City"
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
                          hintText: "Country"
                      )
                  ),
                ),
                Container(
                    height: 48,
                    margin: EdgeInsets.only(left:16, right: 16, top: 265),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      textColor: Colors.black,
                      color: Color(0xFFFED428),
                      child: Text(
                          'Save',
                          style: GoogleFonts.roboto(
                              fontSize: 22,
                              fontWeight: FontWeight.w400
                          )
                      ),
                      onPressed: () {

                      },
                    )),
              ],
            )));
  }
}

