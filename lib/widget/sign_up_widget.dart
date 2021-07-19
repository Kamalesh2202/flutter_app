import 'package:flutter/material.dart';
import 'package:flutter_app/widget/facebook_signup_button.dart';
import 'package:flutter_app/widget/google_signup_button_widget.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => buildSignUp();

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 400,
            child: Column(
              children: [
                Text('Welcome Back To MyApp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 25),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            'An App by ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Kamalesh AR',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )),
          Spacer(),
          SizedBox(height: 12),
          GoogleSignupButtonWidget(),
          SizedBox(height: 15),
          MovePage(),
          Text(
            'Login to continue.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Spacer(),
        ],
      );
}

class MovePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(4),
      child: OutlineButton.icon(
        label: Text(
          'Sign In With Facebook',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        highlightedBorderColor: Colors.black,
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
        icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FacebookSignUpButton()));
        },
      ),
    );
  }
}

