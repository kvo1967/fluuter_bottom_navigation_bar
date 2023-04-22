import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({super.key});

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
        child: Text('Games Page'),
      ),
    );
  }
}