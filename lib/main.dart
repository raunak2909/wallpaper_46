import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'api_helper/api_helper.dart';
import 'bloc/wallceno_bloc.dart';
import 'screens/onbording.dart/splace_screens.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WallcenoBloc(api_helper: Api_Helper()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplaceScreens(),
    );
  }
}
