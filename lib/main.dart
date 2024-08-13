import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify/core/configs/themes/app_themes.dart';
import 'package:spotify/presentation/auth/pages/signUpandsignIn.dart';
import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';
import 'package:spotify/presentation/splash/pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: themeMode,
            home: const SplashPage(),
            routes: {
              GetStarted.routeName: (context) => GetStarted(),
              ChooseModePage.routeName: (context) => const ChooseModePage(),
              SignUpAndSigInPage.routeName: (context) => SignUpAndSigInPage(),
            },
          );
        },
      ),
    );
  }
}

// import 'package:flutter/foundation.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:path_provider/path_provider.dart';

// import 'package:flutter/material.dart';

// import 'package:spotify/core/configs/themes/app_themes.dart';
// import 'package:spotify/presentation/choose_mode/bloc/theme_cubit.dart';
// import 'package:spotify/presentation/choose_mode/pages/choose_mode.dart';
// import 'package:spotify/presentation/intro/pages/get_started.dart';
// import 'package:spotify/presentation/splash/pages/splash.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   HydratedBloc.storage = await HydratedStorage.build(
//     storageDirectory: kIsWeb
//         ? HydratedStorage.webStorageDirectory
//         : await getApplicationDocumentsDirectory(),
//   );
//   runApp(const Spotify());
// }

// class Spotify extends StatelessWidget {
//   const Spotify({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocBuilder(
//       providers: [
//         BlocBuilder(create: (_) => ThemeCubit()),
//       ],
//       child: BlocBuilder<ThemeCubit, ThemeMode>(
//         builder: (context, mode) => MaterialApp(
//           debugShowCheckedModeBanner: false,

//           theme: AppThemes.lightTheme,
//           darkTheme: AppThemes.darkTheme,

//           themeMode: mode,
//           // A widget which will be started on application startup
//           home:
//               const SplashPage(), //const MyHomePage(title: 'Flutter Demo Home Page'),

//           routes: {
//             GetStarted.routeName: (context) => GetStarted(),
//             ChooseModePage.routeName: (context) => const ChooseModePage(),
//           },
//         ),
//       ),
//     );
//   }
// }

// // class MyHomePage extends StatelessWidget {
// //   final String title;
// //   const MyHomePage({super.key, required this.title});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         // appBar: AppBar(
// //         //   // The title text which will be shown on the action bar
// //         //   title: Text(title),
// //         // ),
// //         body: const SplashPage());
// //   }
// // }
