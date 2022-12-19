import 'package:flutter/material.dart';
import 'package:podcast/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: AppText(
                      text: 'Podcast',
                      size: 22,
                      bold: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.black45, maxRadius: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: AppText(
                    text: 'Trending topics',
                    size: 18,
                    bold: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: AppText(
                    text: 'See all',
                    size: 15,
                    color: Colors.green,
                    bold: FontWeight.w600,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
