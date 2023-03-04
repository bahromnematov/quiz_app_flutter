import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_flutter/data/englesh_quiz_repository.dart';
import 'package:quiz_app_flutter/data/math_quiz_repository.dart';
import 'package:quiz_app_flutter/data/sport_quiz_repository.dart';
import 'package:quiz_app_flutter/screens/quiz_screen.dart';
import 'package:quiz_app_flutter/utils/colors.dart';
import 'package:quiz_app_flutter/utils/icons.dart';
import 'package:quiz_app_flutter/widgets/select_test_item.dart';

import '../data/biologiya_quiz_repository.dart';
import '../model/quiz_data.dart';
import 'info_screen.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  State<MyQuizScreen> createState() => _MyQuizScreenState();
  List<QuizData> biologiyaSet = BiologiyaQuizRepository.biologySet();
  List<QuizData> englishSet = EngleshQuizRepository.engleshSet();
  List<QuizData> mathSet = MathQuizRepository.mathSet();
  List<QuizData> sportSet = SportQuizRepository.sportSet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black54,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
        leading: Image.asset(
          MyIcons.wallet,
        ),
        title: Image.asset(
          MyIcons.whiteLogo,
          width: 120,
        ),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return InfoScreen();
                }));
              },
              child: Image.asset(
                MyIcons.info,
                scale: 6.7,
              ))
        ],
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.black, Colors.greenAccent]),
          ),
          padding:
              EdgeInsets.only(bottom: 40.h, right: 15.w, left: 15.w, top: 10.h),
          child: Column(
            children: [
              SelectTestsItem(
                  subjectName: "Biologiya",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.yellowBar,
                  direction: 1,
                  questionsCount: 10,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(
                        quizList: biologiyaSet,
                        quizName: 'Biologiya',
                      );
                    }));
                  }),
              SelectTestsItem(
                  subjectName: "Englesh",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.blueBar,
                  direction: 1,
                  questionsCount: 10,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(
                        quizList: englishSet,
                        quizName: 'Englesh',
                      );
                    }));
                  }),
              SelectTestsItem(
                  subjectName: "Matematika",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.greenBar,
                  direction: 1,
                  questionsCount: 10,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(
                        quizList: mathSet,
                        quizName: 'Matematika',
                      );
                    }));
                  }),
              SelectTestsItem(
                  subjectName: "Sport",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.redBar,
                  direction: 1,
                  questionsCount: 10,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(
                        quizList: sportSet,
                        quizName: 'Sport',
                      );
                    }));
                  }),
              SelectTestsItem(
                  subjectName: "Sciens",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.purpleBar,
                  direction: 1,
                  questionsCount: 10,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(
                        quizList: sportSet,
                        quizName: 'Sciens',
                      );
                    }));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
