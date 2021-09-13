import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class VerifyPhoneNumber extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<VerifyPhoneNumber> {

  String _selectedCountryCode = "+91";
  List<String> _countryCodes = ['+91', '+23'];
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
              "Verify phone number",
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
                  margin: EdgeInsets.only(top: 55),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/phone_android1.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 0),
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
                        "Verify your phone number",
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF757575)
                        )
                    )
                ),

                Container(
                  width: double.infinity,
                  height: 40,
                  margin: new EdgeInsets.only(top: 60.0, bottom: 10.0, right: 16, left: 16),
                  color: Colors.white,
                  child: new TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Please enter some text';
                      }
                    },
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 0.0),
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(color: const Color(0xFFE0E0E0), width: 0.1)),
                        fillColor: Colors.white,
                        prefixIcon: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              right: BorderSide(width: 2, color: Colors.grey),
                            ),
                          ),
                          height: 45.0,
                          margin: const EdgeInsets.only(left: 15.0, top: 3.0, right: 15.0, bottom: 3.0),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                                child: DropdownButton(
                                  value: _selectedCountryCode,
                                  items: _countryCodes.map((String? value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(
                                        value!,
                                        style: TextStyle(fontSize: 12.0),
                                      )
                                    );
                                }).toList(),
                                onChanged: (String ?value) {
                                  setState(() {
                                    _selectedCountryCode = value!;
                                  });
                                },
                                style: Theme.of(context).textTheme.title,
                              ),
                          ),
                        ),
                      ),
                      hintText: 'Phone Number',
                      ),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => EditProfile()),
                        // );
                      },
                    )),
              ],
            )));
  }
}

