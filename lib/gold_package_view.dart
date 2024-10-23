import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inweb_task/generated/assets.dart';
import 'package:inweb_task/widgets/customized_appbar.dart';
import 'package:inweb_task/widgets/package_contains.dart';
import 'package:shimmer/shimmer.dart';

class GoldPackageView extends StatelessWidget {
  const GoldPackageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4C01E),
      appBar: AppBar(
        backgroundColor: Color(0xffF4C01E),
        toolbarHeight: 70.h,
        flexibleSpace: CustomizedAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Shimmer.fromColors(
                          baseColor: Color(0xffF1DD87),
                          highlightColor: Color(0xff946126),
                          child: Container(
                            height: 70.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffF1DD87), width: 5.w),
                            borderRadius: BorderRadius.circular(40.sp),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 10.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40.sp),
                          ),
                          child: Center(
                            child: Text(
                              'Gold Package',
                              style: TextStyle(
                                color: Color(0xffF4C01E),
                                fontWeight: FontWeight.w900,fontSize: 23.sp
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(Assets.imagesDecor,),
                    Container(
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.sp),
                          //shape: BoxShape.circle,
                          image: DecorationImage(image:  AssetImage(Assets.imagesDecorate2,),fit: BoxFit.cover),)
                        ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Text('Contains :', style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w900),),
                SizedBox(height: 14.h,),
                PackageContains(contain: '60x60 Ceramic'),
                PackageContains(contain: 'Glc Painting'),
                PackageContains(contain: 'Electricity Build Up'),
                PackageContains(contain: 'Sweedy Wires'),
                PackageContains(contain: 'Cat6 Wire'),
                PackageContains(contain: 'Venus Lights'),
                PackageContains(contain: 'Gypsum Board'),
              ],
            ),
            SizedBox(height: 32.h,),
            Stack(
                alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment(0.2, -0.6),
                  children: [
                    Container(
                      height: 44.h, width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 5.w),
                        borderRadius: BorderRadius.circular(50.sp),
                      ),
                    ),
                    Container(
                      height: 20.h, width: 130.w,
                      decoration: BoxDecoration(
                        color: Color(0xffF62F31),
                        border: Border.symmetric(vertical: BorderSide(color: Colors.black, width: 0.w), horizontal: BorderSide(color: Colors.black, width: 8.h)),
                        borderRadius: BorderRadius.circular(50.sp),
                      ),
                    ),
                  ],
                ),
                Text(
                  'CONTACT US',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: GoogleFonts.bebasNeue().fontFamily,
                    fontSize: 25.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
