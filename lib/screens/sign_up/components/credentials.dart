import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trading_application/constants/constants.dart';
import 'package:trading_application/screens/home/home_screen.dart';
import 'package:trading_application/widgets/rectangular_button.dart';
import 'package:trading_application/widgets/rectangular_input_field.dart';


class Credentials extends StatelessWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            hintText: 'Username',
            icon: Icons.person,
            obscureText: false,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
            hintText: 'Email',
            icon: Icons.email_rounded,
            obscureText: false,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
            hintText: 'Password',
            icon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          Center(
            child: Text(
              'Forget Password?',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: primary,
                fontSize: 17,
              ),
            ),
          ),
          RectangularButton(text: 'Sign In', press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            );
          })
        ],
      ),
    );
  }
}
