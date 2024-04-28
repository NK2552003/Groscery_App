import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groscery_app/widgets/custom_button.dart';
import 'package:groscery_app/widgets/custom_textfield.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            _loginContainer(context),
            SizedBox(height: 30),
            _socialContainer(context),
            SizedBox(height: 30),
            _registerYs(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: "Welcome Back !",
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
          text: "\nLogin to access you cart and your shipment details",
          style: TextStyle(fontSize: 16)),
    ]));
  }

  Widget _loginContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.30,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(label: "Email"),
          SizedBox(height: 20),
          CustomTextField(label: "Password"),
          SizedBox(height: 20),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width,
            isPrimary: true,
            onTap: () {
              Navigator.pushNamed(context, "/login");
            },
            text: "LOGIN",
          ),
          SizedBox(height: 10),
          Text(
            "Forgot Password?",
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
          Text("or Login with", style: TextStyle(fontSize: 12)),
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
                  TextSpan(text: "Don't Have an Account?"),
                  TextSpan(
                      text: "Sign Up", style: TextStyle(color: Colors.blueGrey))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
