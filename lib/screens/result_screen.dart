import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_flutter/utils/colors.dart';
import 'package:quiz_app_flutter/utils/icons.dart';
import 'package:quiz_app_flutter/widgets/result_item.dart';

class ResultScreen extends StatefulWidget {
  final int totalQuestionCount, trueQuestionCount;
  final List<bool> answers;
  final double percentage;

  const ResultScreen(
      {Key? key,
      required this.totalQuestionCount,
      required this.trueQuestionCount,
      required this.answers,
      required this.percentage})
      : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String lottie = "";

  @override
  void initState() {
    super.initState();
    if (widget.percentage >= 80) {
      lottie = MyIcons.tickJson;
    } else if (widget.percentage >= 60 && widget.percentage < 80) {
      lottie = MyIcons.good;
    } else {
      lottie = MyIcons.bad;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.C_4047C1,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(lottie),
                Text(
                  "See your result",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: MyColors.C_FCA82F,
                      fontSize: 22.sp),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text("${widget.trueQuestionCount}/${widget.totalQuestionCount}",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 35.sp)),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                    child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ResultItem(
                        text: 'Question: ${index + 1}',
                        isTrue: widget.answers[index],
                      ),
                    );
                  },
                  itemCount: widget.answers.length,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
