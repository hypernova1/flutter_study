import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/button/login_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LoginButton(
            image: Image.asset('images/glogo.png'),
            text: const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          LoginButton(
              image: Image.asset('images/flogo.png'),
              text: const Text('Login with Facebook',
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
              color: const Color(0xFF334D92),
              radius: 4.0,
              onPressed: () {}),
          const SizedBox(
            height: 10.0,
          ),
          LoginButton(
              image: const Icon(
                Icons.mail,
                color: Colors.white,
              ),
              text: const Text('Login with Email',
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
              color: Colors.green,
              radius: 4.0,
              onPressed: () {}),
        ],
      ),
    );
  }
}
