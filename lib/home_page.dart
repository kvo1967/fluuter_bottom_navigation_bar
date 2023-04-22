import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Van Alkmaar de Victorie'),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
