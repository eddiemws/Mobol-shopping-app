import 'package:flutter/material.dart';
import 'package:login_page/data.dart';
import 'package:login_page/splashscreen.dart';
import 'package:login_page/details.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool _isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      if (_isMenuOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: _toggleMenu,
        ),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: sectionList.length,
            itemBuilder: (context, index) {
              final section = sectionList[index];
              final sectionTitle = section['sectionTitle'];
              final items = section['items'];
              return buildListItem(context, sectionTitle, items);
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SlideTransition(
              position: _slideAnimation,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.77,
                color: Colors.red,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250),
                      color: Colors.black),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 250,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: ListTile(
                          leading: const Icon(Icons.home),
                          title: const Text('Home'),
                          onTap: _toggleMenu,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: ListTile(
                          leading: const Icon(Icons.person),
                          title: const Text('Profile'),
                          onTap: _toggleMenu,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('Settings'),
                          onTap: _toggleMenu,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: ListTile(
                          leading: const Icon(Icons.logout),
                          title: const Text('Logout'),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SplashScreen(),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(
      BuildContext context, sectionTitle, List<Map<String, String>> items) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120.0),
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Text(
              sectionTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((item) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(item: item),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 250,
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                item['image']!,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(Icons.access_alarm_outlined),
                            title: Text(
                              item['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            titleAlignment: ListTileTitleAlignment.top,
                            subtitle: Text(
                              item['subtitle']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
