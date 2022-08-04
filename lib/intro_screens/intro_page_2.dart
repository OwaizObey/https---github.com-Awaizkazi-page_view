import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

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
              'assets/FastDelivery.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Fast Delivery',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We Make Food Ordering\n\t\t\t\t\t              Fast.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
