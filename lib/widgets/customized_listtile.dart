import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inweb_task/generated/assets.dart';
import 'package:inweb_task/gold_package_view.dart';

class CustomizedListTile extends StatelessWidget {
  const CustomizedListTile({super.key, required this.packageName, this.price, required this.isFavourite,required this.isCustomized, required this.image});

  final packageName, price, isFavourite, image, isCustomized;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.sp))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(image,fit: BoxFit.cover,),
              SizedBox(width: 10.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('$packageName ',style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w900),),
                  Text('Details of the package',style: TextStyle(fontSize: 12.sp,),),
                  SizedBox(height: 3.h,),
                  GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> GoldPackageView())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.imagesRight,
                          height: 20.h,
                          width: 20.w,
                        ),
                        Arc(edge: Edge.LEFT,
                          arcType: ArcType.CONVEY,
                          height: 5.h,
                          child: Container(
                            child: Text('LEARN MORE',style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w700,color: Colors.white),),
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.only(left: 9.w,top: 4.h),
                            height: 20.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                              BorderRadius.horizontal(right: Radius.circular(40.sp), left: Radius.circular(0.sp)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  isCustomized? SizedBox(height: 22.h,):
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text('$price',textAlign: TextAlign.center,style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w900,color: Colors.black,),),
                        margin: EdgeInsets.only(top: 10.h, right: 10.w,),
                        padding: EdgeInsets.all(4),
                        height: 22.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all( Radius.circular(6.sp)),
                          border: Border.all(color: Colors.black12),
                        ),
                      ),
                      Image.asset(Assets.imagesCart,height: 20.h, width: 20.w,),
                    ],
                  )
                ],
              ),
            ],
          ),
          Image.asset(isFavourite? Assets.imagesFavorite: Assets.imagesNotfavourite,height: 30.h, width: 30.w,),
        ],
      ),
    );
  }
}
