import 'package:flutter/material.dart';
import 'package:login_page/homescreen.dart';
import 'package:login_page/login.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false),
  );
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: Image.asset(
                      "images/login.png",
                      fit: BoxFit.none,
                      color: Colors.amber,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sign up with your social account or email address',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.facebook_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                'facebook',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.facebook_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                'Twitter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(
                                Icons.facebook_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6.0,
                          ),
                          child: Container(
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'or',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const SizedBox(
                    width: 460.0,
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.supervised_user_circle_rounded),
                            label: Text('Username'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )))),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 460.0,
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            label: Text('User e-mail'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )))),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 460.0,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_rounded),
                            label: Text('password'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )))),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 460.0,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            label: Text('confirm password'),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                )))),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    height: 45,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shadowColor:
                            const MaterialStatePropertyAll(Colors.greenAccent),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.green[800],
                        ),
                        elevation: const MaterialStatePropertyAll(5),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already a mamber?'),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 400,
                    child: Text(
                        'By clicking on Create Account, you have read our Terms and conditions'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
