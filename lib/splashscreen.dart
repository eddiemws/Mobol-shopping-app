import 'package:flutter/material.dart';
import 'package:login_page/login.dart';
import 'package:login_page/registration.dart';


void main() => runApp(
      const MaterialApp(debugShowCheckedModeBanner: false),
    );

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Page',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const AnimatedPage(),
    );
  }
}

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  AnimatedPageState createState() => AnimatedPageState();
}

class AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          width: 500,
          height: 800,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Mobol',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Your,     FASHION STORE',
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
              FadeTransition(
                opacity: _animation,
                child: Image.asset(
                  "images/login.png",
                  color: Colors.deepOrange,
                  height: 400,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()),
                    );
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
