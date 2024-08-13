import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/commen/widget/appbar/basic_app_bar.dart';
import 'package:spotify/commen/widget/button/basic_app_button.dart';
import 'package:spotify/commen/helper/is_darkMode.dart';
import 'package:spotify/core/configs/assets/app_imags.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';

class SignUpAndSigInPage extends StatelessWidget {
  //const SignUpAndSigInPage({Key? key}) : super(key: key);

  static const routeName = '/signup-signin-page';

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var maxHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        BasicAppBar(),
        Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
              fit: BoxFit.cover,
            )),
        Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.bottomLeft,
          child: Image.asset(AppImages.authBG),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AppVectors.logo,
                  fit: BoxFit.fitWidth,
                  width: maxWidth * .4,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Enjoy Listening To Music',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 21,
              ),
              const Text(
                'Spotify is a proprietery swedish audio streaming and media service provider ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        onPressed: () {},
                        title: "Register",
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color:
                              context.isdarkMode ? Colors.white : Colors.black),
                    ),
                  ))
                ],
              )
            ],
          ),
        )
      ])),
    );
  }
}
