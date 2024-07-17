import 'package:flutter/material.dart';
import 'package:spotify/core/configs/themes/app_themes.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';

void main() => runApp(Spotify());

class Spotify extends StatelessWidget {
  const Spotify({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      //title: 'Spotify',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: AppThemes.lightTheme,
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {
        GetStarted.routeName: (context) => GetStarted(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // The title text which will be shown on the action bar
        //   title: Text(title),
        // ),
        body: const SplashPage());
  }
}
