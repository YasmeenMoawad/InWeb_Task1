import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PackageContains extends StatelessWidget {
  const PackageContains({super.key, required this.contain});

  final contain;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Icon(Icons.circle,size: 8, color: Colors.black,),
          SizedBox(width: 10.w, height: 0.h,),
          Text('$contain', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold,height: 1.h))
        ],
      ),
    );
  }
}
