import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './emailnotification.dart';
class PushNotification extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PushNotification> {
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
              "Push notification",
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
                  margin: EdgeInsets.only(top: 30, left: 33, right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your rides",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                      ),InkWell(
                          onTap: () {
                            setState(() {
                              ridevalue = !ridevalue;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(5), color: Color(0xFFFECC2A)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: ridevalue
                                  ? Icon(
                                Icons.check,
                                size: 18.0,
                                color: Colors.white,
                              ): Icon(
                                Icons.check_box_outline_blank,
                                size: 18.0,
                                color: Color(0xFFFECC2A),
                              ),
                            ),
                          )
                      )
                    ],
                  )
                ),
                Container(
                    margin: EdgeInsets.only(top: 14, left: 33, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "News, Deals and free \nstuff",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),InkWell(
                            onTap: () {
                              setState(() {
                                freevalue = !freevalue;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(5), color: Color(0xFFFECC2A)),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: freevalue
                                    ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                ): Icon(
                                  Icons.check_box_outline_blank,
                                  size: 18.0,
                                  color: Color(0xFFFECC2A),
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top: 14, left: 33, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Messages",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),InkWell(
                            onTap: () {
                              setState(() {
                                messagevalue = !messagevalue;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(5), color: Color(0xFFFECC2A)),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: messagevalue
                                    ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                ): Icon(
                                  Icons.check_box_outline_blank,
                                  size: 18.0,
                                  color: Color(0xFFFECC2A),
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ),
                Container(
                    margin: EdgeInsets.only(top: 14, left: 33, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ratings",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400
                          ),
                        ),InkWell(
                            onTap: () {
                              setState(() {
                                ratingvalue = !ratingvalue;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(5), color: Color(0xFFFECC2A)),
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: ratingvalue
                                    ? Icon(
                                  Icons.check,
                                  size: 18.0,
                                  color: Colors.white,
                                ): Icon(
                                  Icons.check_box_outline_blank,
                                  size: 18.0,
                                  color: Color(0xFFFECC2A),
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ),

                Container(
                    height: 48,
                    margin: EdgeInsets.only(left:16, right: 16, top: 475),
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

