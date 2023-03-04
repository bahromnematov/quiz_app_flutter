import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app_flutter/utils/icons.dart';

class VariantItem extends StatelessWidget {
  final String variantText;
  final bool isSelected;
  final VoidCallback onTap;

  const VariantItem(
      {Key? key,
      required this.variantText,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 17,
                spreadRadius: 2,
                color: Colors.grey.shade300,
                offset: const Offset(1, 4),
              )
            ],
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(variantText,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17.sp))),
            isSelected
                ? SvgPicture.asset(MyIcons.tick, width: 27.h, height: 27.h)
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
