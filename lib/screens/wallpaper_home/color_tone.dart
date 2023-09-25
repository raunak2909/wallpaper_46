import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wellceno_ui/image_List/image_list.dart';

class Color_Tone extends StatelessWidget {
   Color_Tone({super.key});
bool isSeletColor = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: SeletColor.colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text("${SeletColor.colors[index]['name']}"),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                 isSeletColor = true;
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:SeletColor.colors[index]['color'],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
