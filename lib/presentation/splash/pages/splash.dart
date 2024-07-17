import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    redirect();
  }

  @override
  Widget build(BuildContext context) {
    //print(AppVectors.logo);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            AppVectors.logo,
            fit: BoxFit.fitWidth,
            //semanticsLabel: 'mkkkk',
            width: MediaQuery.of(context).size.width * .6,
          ),
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 4));

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacementNamed(GetStarted.routeName);
  }
}
