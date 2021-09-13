import 'package:flutter/material.dart';
import './profile/profile.dart';
import './pop_qr/pop_qr.dart';
import './ride/Ride.dart';
import './pop_streak/Pop_streak.dart';
import './travel/Travel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPosition = 0;
  List<Widget> listBottomWidget = List.generate(1, (index) => Ride());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/src_assets_proprofile.png")),
              activeIcon: ImageIcon(
                  AssetImage("assets/images/src_assets_proprofilefilled.png")),
              title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/src_assets_read.png")),
              activeIcon:
                  ImageIcon(AssetImage("assets/images/src_assets_read.png")),
              title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/src_assets_analytics.png")),
              activeIcon: ImageIcon(
                  AssetImage("assets/images/src_assets_analytics.png")),
              title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/src_assets_qrnew.png")),
              activeIcon:
                  ImageIcon(AssetImage("assets/images/src_assets_qrnew.png")),
              title: Container(height: 0.0)),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("assets/images/src_assets_peoplepro.png")),
              activeIcon: ImageIcon(
                  AssetImage("assets/images/src_assets_peopleprofilled.png")),
              title: Container(height: 0.0)),
        ],
        currentIndex: selectedPosition,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (position) {
          setState(() {
            selectedPosition = position;
          });
          print(selectedPosition);
        },
      ),
      body: Builder(builder: (context) {
        print(listBottomWidget);
        return listBottomWidget[selectedPosition];
      }),
    );
  }

  void addHomePage() {
    listBottomWidget.add(Pop_streak());
    listBottomWidget.add(Travel());
    listBottomWidget.add(pop_qr());
    listBottomWidget.add(Profile());
  }
}
