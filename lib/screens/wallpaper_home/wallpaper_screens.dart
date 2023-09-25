
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:wallpaper/wallpaper.dart';

import '../../custom_Widgets/custombutton.dart';

class WallpaperScreen extends StatelessWidget {
  String img;
  double? mWidth;
  double? mHeight;
  WallpaperScreen({required this.img});


  @override
  Widget build(BuildContext context) {

    mWidth = MediaQuery.of(context).size.width;
    mHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage("${img}"),
        /// "https://i.pinimg.com/736x/1a/47/3f/1a473f3c3cc2258a151980652fb2473d.jpg"
      ),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onTap: (){

                },
                title: "Info",
                icon: Icons.info,
                color: Colors.grey.withOpacity(0.8),
              ),
             
              CustomButton(
                onTap: (){
                  downloadWallpaper();
                },
                title: "Save",
                icon: Icons.download,
                color: Colors.grey.withOpacity(0.8),
              ),
              
              CustomButton(
                onTap: (){
                  setWallpaper();
                },
                title: "Apply",
                icon: Icons.brush,
                color: Colors.blue.withOpacity(0.9),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ]),
      ),
    );
  }

  void downloadWallpaper() async{
    GallerySaver.saveImage(img).then((value){
      print(value);
    });
  }

  void setWallpaper(){
    var streamProgress = Wallpaper.imageDownloadProgress(img);

    streamProgress.listen((event) {
      print(event);
    }, onDone: () async{
      //wallpaper set

     var check = await Wallpaper.homeScreen(
        width: mWidth!,
        height: mHeight!,
        options: RequestSizeOptions.RESIZE_EXACT
      );

     print(check);


    }, onError: (e){
      print("Error: $e");
    });
  }

}
