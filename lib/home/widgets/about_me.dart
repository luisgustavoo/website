import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Desenvolvedor de aplicativos Flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.sp,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        FlutterLogo(
          size: 10.sp,
        )
      ],
    );
  }
}
