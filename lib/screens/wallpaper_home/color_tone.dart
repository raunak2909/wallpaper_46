import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wellceno_ui/image_List/image_list.dart';

import 'categor_wallpaper.dart';

class Color_Tone extends StatelessWidget {
  var queryController;

  Color_Tone({required this.queryController});

  bool isSeletColor = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: SeletColor.colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              isSeletColor = true;
              print(queryController.text.toString());
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Categori_Wallpaper(
                      query: queryController.text.toString()!="" ? queryController.text.toString() : "nature",
                      colorCode: SeletColor.colors[index]['name'],
                    ),
                  ));
            },
            child: Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: SeletColor.colors[index]['color'],
                  borderRadius: BorderRadius.circular(10)),
            ),
          );
        },
      ),
    );
  }
}
