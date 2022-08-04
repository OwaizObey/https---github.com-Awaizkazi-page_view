import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Image.asset(
              'assets/GoodService.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Good & Service',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We Give The Good & Safe \n         \t       Service.',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
