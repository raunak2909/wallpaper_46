import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wellceno_ui/screens/bottombar.dart';

class SplaceScreens extends StatefulWidget {
  const SplaceScreens({super.key});

  @override
  State<SplaceScreens> createState() => _SplaceScreensState();
}

class _SplaceScreensState extends State<SplaceScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomBar(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/image/lion-king.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Text(
                        "Wallpaper",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
              ));
        } else {
          return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/image/lion-king.jpg"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Text(
                        "Wallpaper",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
              ));
        }
      },
    ));
  }
}
