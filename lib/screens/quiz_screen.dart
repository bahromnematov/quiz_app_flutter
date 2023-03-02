import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_flutter/screens/result_screen.dart';
import 'package:quiz_app_flutter/utils/colors.dart';
import 'package:quiz_app_flutter/utils/icons.dart';
import 'package:quiz_app_flutter/utils/utility_functions.dart';
import 'package:quiz_app_flutter/widgets/MyButton.dart';

import '../model/quiz_data.dart';
import '../widgets/variant_item.dart';

class QuizScreen extends StatefulWidget {
  final List<QuizData> quizList;
  final String quizName;

  const QuizScreen({Key? key, required this.quizList, required this.quizName})
      : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int expandableValue = 1;
  int currentQuestionIndex = 0;
  String selectedVariant = "";
  List<bool> choseAnswers = [];
  int trueQuestionCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.C_4047C1,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        title: Text(
          "Start Test",
          style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Image.asset(
            MyIcons.purpleWallet,
            height: 35.h,
            width: 35.h,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.sp),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.84,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.quizName,
                  style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 56.h,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade300, width: 2.w),
                      borderRadius: BorderRadius.circular(26.r)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 4,
                                blurRadius: 4,
                                offset: const Offset(1, 4),
                                color: Colors.grey.shade200,
                              )
                            ],
                            borderRadius: BorderRadius.circular(26.r),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: expandableValue,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: MyColors.C_FCA82F,
                                    borderRadius: BorderRadius.circular(26.r),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex:
                                      widget.quizList.length - expandableValue,
                                  child: SizedBox()),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        "$expandableValue/${widget.quizList.length}",
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                        "Question: $expandableValue",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.sp,
                            color: MyColors.C_4047C1),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        widget.quizList[currentQuestionIndex].questionText,
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 35.h),
                      VariantItem(
                        variantText: widget.quizList[currentQuestionIndex].v1,
                        isSelected: selectedVariant == "A",
                        onTap: () {
                          setState(
                            () {
                              selectedVariant = "A";
                            },
                          );
                        },
                      ),
                      SizedBox(height: 20.h),
                      VariantItem(
                          variantText: widget.quizList[currentQuestionIndex].v2,
                          isSelected: selectedVariant == "B",
                          onTap: () {
                            setState(() {
                              selectedVariant = "B";
                            });
                          }),
                      SizedBox(height: 20.h),
                      VariantItem(
                          variantText: widget.quizList[currentQuestionIndex].v3,
                          isSelected: selectedVariant == "C",
                          onTap: () {
                            setState(() {
                              selectedVariant = "C";
                            });
                          }),
                      SizedBox(height: 20.h),
                      VariantItem(
                        variantText: widget.quizList[currentQuestionIndex].v4,
                        isSelected: selectedVariant == "D",
                        onTap: () {
                          setState(
                            () {
                              selectedVariant = "D";
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: MyButton(
                    buttonText: 'Next',
                    onTap: () {
                      setState(() {
                        if (selectedVariant != "") {
                          if (currentQuestionIndex + 1 <
                              widget.quizList.length) {
                            if (selectedVariant ==
                                widget.quizList[currentQuestionIndex]
                                    .trueAnswer) {
                              choseAnswers.add(true);
                              trueQuestionCount += 1;
                            } else {
                              choseAnswers.add(false);
                            }
                            currentQuestionIndex++;
                            expandableValue++;
                            selectedVariant = "";
                          } else if (currentQuestionIndex + 1 ==
                              widget.quizList.length) {
                            if (selectedVariant ==
                                widget.quizList[currentQuestionIndex]
                                    .trueAnswer) {
                              choseAnswers.add(true);
                              trueQuestionCount += 1;
                            } else {
                              choseAnswers.add(false);
                            }
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return ResultScreen(
                                  // totalQuestionsCount: widget.quizList.length,
                                  // trueQuestionsCount: trueQuestionCount,
                                  // answers: choseAnswers,
                                  // percentage: trueQuestionCount /
                                  //     widget.quizList.length *
                                  //     100,
                                  );
                            }));
                          }
                        } else {
                          UtilityFunctions.getMyToast(
                              message: "Select variants");
                        }
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
