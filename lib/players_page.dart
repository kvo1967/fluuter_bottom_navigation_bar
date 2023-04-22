import 'package:flutter/material.dart';
import 'package:navigation_bar_example/bottom_nav_bar.dart';

class PlayersPage extends StatelessWidget {
  const PlayersPage({super.key});

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
        child: Text('Players Page'),
      ),
    );
  }
}