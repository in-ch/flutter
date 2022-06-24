import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Sign In"),
          titleTextStyle: const TextStyle(color: Colors.white),
          elevation: 0.2,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonTheme(
                height: 50.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/google.png'),
                      const Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      const Opacity(
                        opacity: 0.0,
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonTheme(
                height: 50.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('images/facebook.png'),
                      const Text(
                        'Login with Facebook',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      const Opacity(
                        opacity: 0.0,
                        child: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonTheme(
                height: 50.0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amberAccent)),
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
                ),
              ),
            ],
          ),
        ));
  }
}
