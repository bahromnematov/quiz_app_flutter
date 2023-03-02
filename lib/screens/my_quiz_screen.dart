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

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.C_6066D0,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
        leading: Image.asset(MyIcons.user),
        title: Image.asset(
          MyIcons.whiteLogo,
          width: 120,
        ),
        actions: [Image.asset(MyIcons.wallet)],
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding:
              EdgeInsets.only(bottom: 40.h, right: 15.w, left: 15.w, top: 10.h),
          child: Column(
            children: [
              SelectTestsItem(
                  subjectName: "Biologiya",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.yellowBar,
                  direction: 1,
                  questionsCount: 5,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return QuizScreen(quizList: [], quizName: '',);
                    }
                    ));
                  }),
              SelectTestsItem(
                  subjectName: "Englesh",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.blueBar,
                  direction: 1,
                  questionsCount: 5,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return QuizScreen(quizList: [], quizName: '',);
                        }
                        ));
                  }),
              SelectTestsItem(
                  subjectName: "Matematika",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.greenBar,
                  direction: 1,
                  questionsCount: 5,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return QuizScreen(quizList: [], quizName: '',);
                        }
                        ));
                  }),
              SelectTestsItem(
                  subjectName: "Sport",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.redBar,
                  direction: 1,
                  questionsCount: 5,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const QuizScreen(quizList: [], quizName: '',);
                        }
                        ));
                  }),
              SelectTestsItem(
                  subjectName: "Sciens",
                  iconPath: MyIcons.bookStack,
                  gradientColors: MyColors.purpleBar,
                  direction: 1,
                  questionsCount: 5,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return QuizScreen(quizList: [], quizName: '',);
                        }
                        ));
                  }),

            ],
          ),
        ),
      ),
    );
  }
}