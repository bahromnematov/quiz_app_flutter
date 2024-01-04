import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_flutter/screens/intro_page.dart';
import 'package:quiz_app_flutter/screens/my_quiz_screen.dart';
import 'package:quiz_app_flutter/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool showIntro = prefs.getBool('showIntro') ?? true;

  runApp(MyApp(showIntro: showIntro));
}

class MyApp extends StatelessWidget {
  final bool showIntro;


  MyApp({required this.showIntro});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: showIntro?IntroPage.id:MyQuizScreen.id,
          home: SplashScreen(),
          routes: {
          MyQuizScreen.id:(context)=>MyQuizScreen(),
          IntroPage.id:(context)=>IntroPage(),
          },
        );
      },
    );
  }
}
