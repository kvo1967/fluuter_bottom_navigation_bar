import 'package:flutter/material.dart';
import 'games_page.dart';
import 'players_page.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.sports_soccer_outlined), label: 'Games'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Players'),
      ],
      onDestinationSelected: (int index) {
        setState(() {
          currentPage = index;
          switch (currentPage) {
            case 0:
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const HomePage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamesPage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PlayersPage()));
              break;
          }
        });
      },
    );
  }
}
