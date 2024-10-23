import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inweb_task/generated/assets.dart';
import 'package:inweb_task/widgets/customized_appbar.dart';
import 'package:inweb_task/widgets/customized_listtile.dart';
class PackagesView extends StatelessWidget {
  const PackagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4C01E),
      appBar: AppBar(
          backgroundColor: Color(0xffF4C01E),
          toolbarHeight: 70.h,
          flexibleSpace: CustomizedAppbar(),
      ),
      body: Container(
        decoration: BoxDecoration( image: DecorationImage(opacity: 0.16,
            image: AssetImage(Assets.imagesSkyscrapers), fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            CustomizedListTile(packageName: 'Platinum Package', isFavourite: false, isCustomized: false, image: Assets.imagesDecorate1, price: '4,200 EGP',),
            CustomizedListTile(packageName: 'Gold Package', isFavourite: true, isCustomized: false, image: Assets.imagesDecorate2, price: '3,200 EGP'),
            CustomizedListTile(packageName: 'Silver Package', isFavourite: false, isCustomized: false, image: Assets.imagesDecorate3, price: '2,200 EGP'),
            CustomizedListTile(packageName: 'Customize Package', isFavourite: false, isCustomized: true, image: Assets.imagesDecorate4),
          ],
        ),
      ),
    );
  }
}