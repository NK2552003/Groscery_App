import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groscery_app/widgets/custom_button.dart';
import 'package:groscery_app/widgets/custom_textfield.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar();
  }

  Widget _buildUI(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(context),
            _signupContainer(context),
            SizedBox(height: 30),
            _socialContainer(context),
            SizedBox(height: 20),
            _registerYs(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "Join FreshMart Today!",
          style: TextStyle(
              color: Colors.blueGrey.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: [
                Shadow(
                  color: Colors.blueGrey.shade200,
                  offset: Offset(1, 2),
                  blurRadius: 4,
                ),
              ])),
      TextSpan(
          text:
              "\nUnlock a world of fresh groceries delivered straight to your doorstep.",
          style: TextStyle(fontSize: 16)),
    ]));
  }

  Widget _signupContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(label: "User Name"),
          SizedBox(height: 20),
          CustomTextField(label: "Enter Email here "),
          SizedBox(height: 20),
          CustomTextField(label: "Enter Password Here"),
          SizedBox(height: 20),
          CustomTextField(label: "Phone Number"),
          SizedBox(height: 20),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width,
            isPrimary: true,
            onTap: () {
              Navigator.pushNamed(context, "/signup");
            },
            text: "SIGN UP",
          ),
        ],
      ),
    );
  }

  Widget _socialContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.10,
      width: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("or Signup with", style: TextStyle(fontSize: 12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SocialLoginButton(
                  text: "Google",
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  width: MediaQuery.sizeOf(context).width * 0.40,
                  borderRadius: 12,
                  fontSize: 16,
                  imageWidth: 24,
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {}),
              SocialLoginButton(
                  text: "Facebook",
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  width: MediaQuery.sizeOf(context).width * 0.40,
                  fontSize: 16,
                  borderRadius: 12,
                  imageWidth: 24,
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _registerYs(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              TextSpan(
                children: [
                  TextSpan(text: "Already a user?"),
                  TextSpan(
                      text: "Login", style: TextStyle(color: Colors.blueGrey))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
