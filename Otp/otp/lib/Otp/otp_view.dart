// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:lottie/lottie.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otpCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('otp/assets/OtpAnimation.json'),
                Text(
                  'Verify Your Phone Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Enter Ther Code That We Sent to Your Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                PinCodeTextField(
                  enableActiveFill: true,
                  autoFocus: true,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(microseconds: 300),
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 6,
                  onChanged: (value) {
                    setState(() {
                      _otpCode = value;
                    });
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeFillColor: Color.fromARGB(255, 164, 243, 229),
                    inactiveFillColor: Color.fromARGB(255, 16, 153, 130),
                    selectedFillColor: Color.fromARGB(255, 16, 153, 130),
                    activeColor: const Color.fromARGB(255, 0, 0, 0),
                    inactiveColor: Colors.grey,
                    selectedColor: const Color.fromARGB(255, 255, 170, 0),
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 16,
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
