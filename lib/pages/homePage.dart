import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registrov1/pages/tabs/profilePage.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profilo'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'Voti'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Impostazioni'),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return const ProfilePage();
          case 1:
            return const ProfilePage();
          case 2:
            return const ProfilePage();
          default:
            return const ProfilePage();
        }
      },
    );
  }
}
