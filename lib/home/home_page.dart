import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:website/home/widgets/about_me.dart';
import 'package:website/home/widgets/social_media.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://avatars.githubusercontent.com/u/59834387?s=400&u=43d4325f949dcb8dd9bd9f41d5d470f718b38df3&v=4',
                  height: 200.h,
                  width: 200.h,
                ),
                SizedBox(
                  height: 50.h,
                ),
                const AboutMe(),
                SizedBox(
                  height: 50.h,
                ),
                SocialMedia(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50.h,
        child: const Center(
          child: Text(
            'Criado por Luis Gustavo',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
