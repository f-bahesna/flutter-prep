import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flex/components/dialog_custom.dart';
import 'package:flutter_flex/widgets/CustomButton.dart';
import 'package:flutter_flex/widgets/CustomFormField.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: _buildUI(context),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      leadingWidth: 2,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10.0),
        child: Container(
          height: 1.2,
          color: Colors.grey,
        ),
      ),
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/simplepay_main_icon_with_text.png",
                scale: 2.5,
              ),
              Row(
                children: [
                  Text(
                    "Bantuan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/icons/simplepay_help_icon.png",
                    scale: 2.5,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bodyText(),
          _loginForm(context),
          _checkBox(context),
          _loginButton(context),
          _divider(context),
          _socialLoginButton(context),
          _endTextRegister(context),
        ],
      ),
    );
  }

  Widget _bodyText() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          children: [
            Text(
              "Welcome!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Masukan ID Agen dan Nomor Terdaftar",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                wordSpacing: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.02,
      ),
      height: MediaQuery.sizeOf(context).height * 0.165,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomFormField(
            label: "ID Agen",
          ),
          SizedBox(
            height: 20,
          ),
          const CustomFormField(
            label: "Nomor Telepon",
          ),
        ],
      ),
    );
  }

  Widget _checkBox(BuildContext context) {
    bool? _isChecked = false;

    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        "Dengan login, Anda telah setuju dengan syarat dan ketentuan yang berlaku",
        style: TextStyle(
          fontSize: 12.0,
        ),
      ),
      value: _isChecked,
      onChanged: (bool? val) {
        setState(() {
          _isChecked = val;
        });
      },
      activeColor: Colors.blue,
      checkColor: Colors.white,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  Widget _loginButton(BuildContext context) {
    return CustomButton(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.06,
      isPrimary: true,
      onPressed: () {
        // Navigator.pushNamed(
        //   context,
        //   "/wa-otp",
        // );
      },
      text: "LOGIN",
    );
  }

  Widget _divider(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: Text("Atau"),
        ),
        Expanded(
          child: Divider(),
        ),
      ],
    );
  }

  Widget _socialLoginButton(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.10,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialLoginButton(
            height: MediaQuery.sizeOf(context).height * 0.065,
            width: MediaQuery.sizeOf(context).width * 0.80,
            text: "Google",
            fontSize: 15,
            imageWidth: 25,
            buttonType: SocialLoginButtonType.google,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext dialogContext) {
                  return DialogCustom(
                    message: "google clicked!",
                  );
                },
              );
            },
            borderRadius: 12.0,
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     ,
          //   ],
          // )
        ],
      ),
    );
  }

  Widget _endTextRegister(BuildContext context) {
    return Center(
      child: new RichText(
        text: new TextSpan(
          children: [
            new TextSpan(
              text: "Tidak punya akun?",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w200,
              ),
            ),
            new TextSpan(
              text: 'Daftar',
              style: new TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w600,
              ),
              recognizer: new TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                },
            ),
          ],
        ),
      ),
    );
  }

  void launch(String s) {}
}
