import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class pop_qr extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<pop_qr> {
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
          child: ListView(
            children: <Widget>[
              SizedBox(height: height / 10),
              Container(
                height: height / 10,
                child: Image(image: AssetImage("assets/images/src_assets_popllogoapp.png"),),
              ),
              Container(
                height: height / 5,
                child: Image(image: AssetImage("assets/images/src_assets_qrnew.png")),
              ),
              Container(
                margin: EdgeInsets.only(top:10),
                alignment: Alignment.center,
                child: Text("poplme.co/smita", style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 80, right: 80),
                  width: width,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF),
                        padding: EdgeInsets.only(
                            top: 8, left: 35, bottom: 8, right: 35),
                        shadowColor: Color(0xFFDDDDDD),
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                      onPressed: () => {},
                      child: Text("Share Profile link",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)))),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 80, right: 80),
                  width: width,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF313131),
                        padding: EdgeInsets.only(
                            top: 8, left: 35, bottom: 8, right: 35),
                        shadowColor: Color(0xFFDDDDDD),
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                      onPressed: () => {},
                      child: Text("Add QR to wallet",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))),

            ],
          )
        )

    );
  }
}