import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inweb_task/generated/assets.dart';
class CustomizedAppbar extends StatelessWidget {
  const CustomizedAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(fit: StackFit.expand,
          children: [
            Image.asset(Assets.imagesYellowdots, fit: BoxFit.fitWidth,),
            Padding(
              padding: const EdgeInsets.only(top: 22,left: 24,right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(Assets.imagesLayout, width: 34.w, height: 34.h,),
                  SizedBox( width: MediaQuery.of(context).size.width - 120.w, height: 34.h,
                    child: SearchBar(
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      hintText: 'Search here ...',
                      shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp),)
                      ),
                      trailing: [Image.asset(Assets.imagesSearch,height: 20.h, width: 20.w,),],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}
