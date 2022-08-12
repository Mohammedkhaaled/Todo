import 'package:flutter/material.dart';
import 'package:todo/layout/home_layout.dart';
import 'package:todo/shared/styles/my_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
      },
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme,
    );
  }
}
