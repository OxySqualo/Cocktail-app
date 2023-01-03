import 'package:coctail/pages/choose_mood.dart';
import 'package:coctail/pages/full_list.dart';
import 'package:coctail/pages/all_recipes_page.dart';
import 'package:flutter/material.dart';
import '../pages/cover_screen_page.dart';
import '../pages/choose_coctails.dart';
import '../pages/recipe.dart';
import 'helpers/audio.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/services.dart';
import 'package:coctail/models/recipe_item.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
  FlameAudio.bgm.initialize();
  loadMusic();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      routes: {
        '/': (context) => const CoverScreenPage(),
        '/recipe': (context) => const RecipePage(),
        '/choosecoctail': (context) => const Coctail(),
        '/mood': (context) => const Mood(),
        '/full': (context) => const FullList(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontFamily: 'Pacifico'),
          )),
    );
  }

  Route generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/full':
        return MaterialPageRoute(
          builder: (context) => const FullList(),
        );

      case '/recipesall':
        if (args is Recipe) {
          return MaterialPageRoute(
            builder: (context) => AllRecipePage(
              recipe: args,
            ),
          );
        }
        return MaterialPageRoute(
          builder: (context) => const FullList(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const FullList(),
        );
    }
  }
}
