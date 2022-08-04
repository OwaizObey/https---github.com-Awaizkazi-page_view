import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_view/otp_verify.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // var hintText;
  // var initialValue;
  // var errorMessage;
  // var maxLength;
  // var initialCountryCode = 'IN';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // width: 20,
            child: Column(
              children: [
                Image.asset('assets/SignUp.png'),
                Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: 8),
                Text(
                  'Enter Your Phone Number to Proceed',
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    // border: Border.all(
                    //   color: Colors.black.withOpacity(0.13),
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        cursorColor: Colors.black,
                        formatInput: true,
                        selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG),
                        inputDecoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        errorMessage: 'Invalid Mobile number',
                        maxLength: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    minimumSize: Size(300, 60),
                  ),
                  onPressed: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => otpVerify()));
                  }),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
