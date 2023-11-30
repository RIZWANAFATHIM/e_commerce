import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            children: [
              Column(
                children: [
                  Image(image: AssetImage(""))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
