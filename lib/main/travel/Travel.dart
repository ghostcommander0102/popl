import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Travel extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Travel> {

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

          ),
        )
    );
  }
}