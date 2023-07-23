import 'package:bhagwat_gita1/components/ChaptersPage.dart';
import 'package:bhagwat_gita1/provider/AudioProvider.dart';
import 'package:bhagwat_gita1/provider/GitaProvider.dart';
import 'package:bhagwat_gita1/view/screen/audio_detail_page.dart';
import 'package:bhagwat_gita1/view/screen/home_page.dart';
import 'package:bhagwat_gita1/view/screen/sloks_detail_page.dart';
import 'package:bhagwat_gita1/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GitaProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GitaProvider>(builder: (context, provider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Departure',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
        initialRoute: "splash_screen",
        routes: {
          "chaters_page": (context) => ChaptersPage(),
          "splash_screen": (context) => IntroScreen(),
          "/": (context) => MyHomePage(title: "Bhagwat Gita"),
          "audio_detail_page": (context) => AudioDetailPage(),
          "slok_detail_page": (context) => SlokDetailPage(),
        },
      );
    });
  }
}
