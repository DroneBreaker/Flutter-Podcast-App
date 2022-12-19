import 'package:flutter/material.dart';
import 'package:podcast/pages/favorite.dart';
import 'package:podcast/pages/home.dart';
import 'package:podcast/pages/search.dart';
import 'package:podcast/widgets/app_text.dart';

// class NavPage extends StatefulWidget {
//   const NavPage({Key? key}) : super(key: key);

//   @override
//   State<NavPage> createState() => _NavPageState();
// }

// class _NavPageState extends State<NavPage> {
//   List pages = [const HomePage(), const SearchPage(), const FavoritePage()];

//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         type: BottomNavigationBarType.shifting,
//         onTap: (int index) => setState(() {
//           currentIndex = index;
//         }),
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey.withOpacity(0.5),
//         elevation: 0,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: 'Favorite'),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.cloud_download_outlined), label: 'Download'),
//         ],
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List pages = [const HomePage(), const SearchPage(), const FavoritePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPages(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.shifting,
      onTap: (int index) => setState(() {
        currentIndex = index;
      }),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download_outlined), label: 'Download'),
      ],
    );
  }

  _getPages() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return const FavoritePage();
    }
  }
}
