import 'package:flutter/material.dart';
import 'package:management_ui/constants/colors.dart';
import 'package:management_ui/widgets/Body1.dart';

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
            Container(
                height: 45,
                width: 50,
                margin: EdgeInsets.only(left: 5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/spacex.jpg'))),
            SizedBox(width: 20),
            Text(
              'Welcome Voltz!',
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
        ],
      )
    );
  }
}
