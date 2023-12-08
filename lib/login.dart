import 'package:flutter/material.dart';
import 'package:login_page/registration.dart';

//import 'registration.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[400],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login.png"),
            fit: BoxFit.none,
            alignment: Alignment(-1, -1),
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 5,
                  color: Colors.grey.withOpacity(0.3),
                ),
              ],
            ),
            width: 450,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                  color: Colors.black,
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    label: Text(
                      'example@gmail.com',
                      style: TextStyle(fontFamily: AutofillHints.email),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0, height: 20.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    label: Text(
                      'password',
                      style: TextStyle(fontFamily: AutofillHints.password),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0, height: 30.0),
                ElevatedButton(
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blue[600],
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.blueAccent),
                      elevation: MaterialStateProperty.all(4.0)),
                  onPressed: () {},
                  child: const Text('Log In'),
                ),
                const Spacer(),
                Center(
                  child: Row(
                    children: [
                      const Spacer(),
                      const Text("Don't have an account yet?",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center),
                      const SizedBox(width: 10.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegistrationPage()),
                          );
                        },
                        child: const Text(
                          'sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
