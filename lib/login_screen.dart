import 'package:authentication_otp/otp.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Auth'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Phone Authentication',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, right: 10, left: 10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Phone Number',
                prefix: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text('+88'),
                ),
              ),
              maxLength: 11,
              keyboardType: TextInputType.number,
              controller: phoneController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OtpScreen(phone: phoneController.text)));
            },
            child: const Text('Send Otp'),
          ),
        ],
      ),
    );
  }
}
