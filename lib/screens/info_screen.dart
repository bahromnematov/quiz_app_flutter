import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_flutter/utils/colors.dart';
import 'package:quiz_app_flutter/utils/icons.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,

          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all( 12),
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      MyIcons.quiz,
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    Text(
                      "Wow! Those are some comprehensive ideas! These are skills that many grown adults are not equipped with. Unlike traditional teaching and learning, 21st Century SEL for schools is more than a curriculum and lesson plans. It’s more than one-off SEL activities.  Effective SEL for classrooms and schools requires a systemic set of strategies and techniques, a common language, and a system for creating psychological safety.",
                      style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("phone: +998 90 667 53 10",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: MyColors.C_4047C1),),
                  ],
                )

              ],
            ),
          )
        )
    );
  }
}
