import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Image.asset(
              'assets/Foodorder.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Food Order',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We Make Food Ordering Fast, \n     Simple & Free no matter',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
