import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/commen/widget/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_imags.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  GetStarted({Key? key}) : super(key: key);

  static const routeName = 'get-started';

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                    fit: BoxFit.fitWidth,
                    width: mediaWidth * .4,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Music itself transcends time, space, and cultures. Music can carry a mood without speaking any specific words.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ChooseModePage.routeName);
                    },
                    title: "Get Started")
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: mediaHeight * .9),
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              color: Colors.black.withOpacity(.15),
            ),
          )
        ],
      ),
    );
  }
}
