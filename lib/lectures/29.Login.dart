import 'package:flutter/material.dart';
import 'package:flutter_app/lectures/my_button/MyButton.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

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
          MyButton(
              background: MaterialStateProperty.all(Colors.red),
              image: Image.asset('images/google.png'),
              text: 'Login with Google',
              onPressed: () {}),
          const SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: OutlinedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/flogo.png'),
                  const Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/glogo.png'),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            child: OutlinedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
