import 'package:flutter/material.dart';
import 'package:management_ui/constants/colors.dart';
import 'package:management_ui/widgets/Body1.dart';
import 'package:management_ui/widgets/Body2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            /* Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                height: 45,
                width: 50,
                margin: EdgeInsets.only(left: 0),
                child: Image.asset('assets/images/spacex.jpg'),
              ),*/
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/spacex.jpg'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: 20),
            Text(
              'Welcome, Voltz!',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      body: Column(
        children: [
          Body1(),
          SizedBox(
            height: 10,
          ),
          Body2(),
        ],
      ),

      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

Widget _bottomNavigationBar(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 10
        )
      ]
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
          BottomNavigationBarItem(label: 'person', icon: Icon(Icons.person, size: 30),),
        ],
      ),
    ),
  );
}
