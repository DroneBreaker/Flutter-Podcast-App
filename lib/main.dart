import 'package:flutter/material.dart';
import 'package:podcast/pages/home.dart';
import 'package:podcast/pages/homescreen.dart';
import 'package:podcast/pages/search.dart';
import 'package:podcast/widgets/app_text.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: [
        GetPage(
          name: '/home',
          page: (() => const HomePage()),
        ),
        GetPage(
          name: '/search',
          page: () => const SearchPage(),
        )
      ],
      debugShowCheckedModeBanner: false,
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: const Color.fromARGB(255, 215, 214, 214),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/audiobook.jpg'),
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
                scale: 0.5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20),
          child: Column(
            children: [
              const AppText(
                text: 'Listen to your favorite',
                size: 30,
                color: Color.fromARGB(255, 27, 91, 59),
              ),
              const Center(
                child: AppText(
                  text: 'Podcast',
                  size: 35,
                  color: Color.fromARGB(255, 27, 91, 59),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(const HomeScreen());
                  // Get.toNamed(const HomePage())
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 27, 91, 59)),
                child: const Text("Let's go"),
                // minSize: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
