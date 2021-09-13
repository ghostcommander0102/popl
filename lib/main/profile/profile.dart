import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../main.dart';
import '../../utils/AnimatedToggle.dart';
import './changepassword.dart';
import './editprofile.dart';
import './emailnotification.dart';
import './postaladdress.dart';
import './sms.dart';
import './pushnotification.dart';
class Profile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Profile> {
  bool profile = false;
  List<bool> detail_expand = [false, false, false, false];
  List<bool> account_expand = [false, false, false, false, false, false, false, false, false, false, false];
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xFFFFFFFF),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/image.png',
                          width: 90,
                          height: 90,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child:IconButton(
                          icon: Image.asset('assets/images/_avatar.png'),
                          iconSize: 74,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EditProfile()),
                            );
                          },
                        )
                      )
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  alignment: Alignment.center,
                  child: Text(
                    "Patrick",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  alignment: Alignment.center,
                  child: Text(
                    "New User",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xFF757575),
                        fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 46, right: 46),
                  child: AnimatedToggle(
                    values: ['Details', 'Account'],
                    textColor: Color(0xFFFFF2BE),
                    backgroundColor: Color(0xFFF2F2F2),
                    buttonColor: Color(0xFFFECC2A),
                    // shadows: isDarkMode ? darkMode.shadow : lightMode.shadow,
                    onToggleCallback: (index) {
                      setState(() {
                        profile = !profile;
                      });
                    },
                  ),
                ),
                profile == true ? AccountWidget() : detailWidget()
              ],
            ),
        )
    );
  }

  Widget detailWidget() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "About you",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0, left: 24, right: 23),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFD9D9D9))
              )
            ),
            child: Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ListTileTheme(
                contentPadding: EdgeInsets.all(0),
                child: ExpansionTile(

                    key: PageStorageKey("123"),
                    trailing: (detail_expand[0]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                    onExpansionChanged: (value){
                      setState(() {
                        detail_expand[0] = !detail_expand[0];
                      });
                    },
                    title: Container(
                        width: double.infinity,
                        child: Text("Write mini bio",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                    )
                ),
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "Verification",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(

                        key: PageStorageKey("123"),
                        trailing: (detail_expand[0]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            detail_expand[0] = !detail_expand[0];
                          });
                        },
                        title: Container(
                          width: double.infinity,
                          child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image.asset(
                                    'assets/images/vs_id-card.png',
                                    width: 32,
                                    height: 22,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child:Text("Verify my ID",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                )

                              ]
                          )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (detail_expand[0]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            detail_expand[0] = !detail_expand[0];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/phone_android.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Add my phone",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (detail_expand[0]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            detail_expand[0] = !detail_expand[0];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/alternate_email.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Add my e-mail",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Car",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600
              )
            )
          ),
          Container(
              margin: EdgeInsets.only(top: 10, left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                  "Add car",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 200, left: 25, bottom: 30),
              alignment: Alignment.center,
              child: Text(
                  "SEE MY PUBLIC PROFILE",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xFFFED428),
                      fontWeight: FontWeight.w400
                  )
              )
          ),
        ],
      ),
    );
  }

  Widget AccountWidget() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "Past ratings",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 25),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xFFD9D9D9))
                )
            ),
            margin: EdgeInsets.only(top: 8, left: 24),
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/images/star.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child:Text(
                    "Ratings left",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                )
              ]
            )
          ),

          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "Preferences",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[0]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[0] = !account_expand[0];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/notification.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Notification & Communication ",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        ),
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PushNotification()),
                            );
                          },
                          child:Container(
                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 16, right: 98),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF8F8F8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),

                              ),
                              child: Text(
                                  "Notification & Communication ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  )
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EmailNotification()),
                            );
                          },
                          child:Container(
                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 16, right: 273),
                              margin: EdgeInsets.only(top: 20),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF8F8F8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),

                              ),
                              child: Text(
                                  "Email",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  )
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SMS()),
                            );
                          },
                          child:Container(
                              padding: EdgeInsets.only(top: 17, bottom: 17, left: 16, right: 282),
                              margin: EdgeInsets.only(top: 20, bottom: 20),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF8F8F8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),

                              ),
                              child: Text(
                                  "SMS",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  )
                              )
                          )
                        ),

                      ],
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[1]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[1] = !account_expand[1];
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChangePassword()),
                          );
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/key.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Change password",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[2]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[2] = !account_expand[2];
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PostalAddress()),
                          );
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/mailbox.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Postal address  ",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "Money",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(

                        key: PageStorageKey("123"),
                        trailing: (account_expand[3]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[3] = !account_expand[3];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/notification.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("e - Wallet",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[4]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[4] = !account_expand[4];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/key.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Expected payments",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[5]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[5] = !account_expand[5];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/mailbox.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Cards",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),

          Container(
            margin: EdgeInsets.only(top: 28, left: 24),
            alignment: Alignment.centerLeft,
            child: Text(
              "About",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(

                        key: PageStorageKey("123"),
                        trailing: (account_expand[6]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[6] = !account_expand[6];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/support.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Help",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[7]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[7] = !account_expand[7];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/item.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Terms & Conditions",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[8]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[8] = !account_expand[8];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/privacy.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Privacy Policy",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[9]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[9] = !account_expand[9];
                          });
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/money.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Licenses",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 0, left: 24, right: 23),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Color(0xFFD9D9D9))
                  )
              ),
              child: Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    child: ExpansionTile(
                        key: PageStorageKey("123"),
                        trailing: (account_expand[10]==true)?Icon(Icons.keyboard_arrow_down,size: 20,color: Color(0xFFDCDCDC)):Icon(Icons.chevron_right,size: 20,color: Color(0xFFDCDCDC)),
                        onExpansionChanged: (value){
                          setState(() {
                            account_expand[10] = !account_expand[10];
                          });
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyApp()),
                          // );
                        },
                        title: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/images/sign-out.png',
                                      width: 32,
                                      height: 22,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child:Text("Log Out",style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400)),
                                  )

                                ]
                            )
                        )
                    ),
                  )
              )
          ),

        ],
      ),
    );
  }
}

